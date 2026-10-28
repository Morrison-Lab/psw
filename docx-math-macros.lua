-- Expand the shared math macros in Word output.
--
-- HTML and slides get the macros through MathJax (_math-macros.html) and the
-- PDF through its preamble (_math-macros.tex), but Word has neither: pandoc
-- cannot convert math that uses an undefined macro, so the .docx showed raw
-- source such as `$\Outvar$` (#386).
--
-- Pandoc's markdown reader expands \def, \newcommand and \providecommand
-- definitions that appear in the same document. So this filter reads every
-- Math element of the page in one batch, with _math-macros.tex in front, and
-- swaps in the expanded math.

local MACROS_FILE = "_math-macros.tex"

-- Word's math converter (texmath) cannot read some TeX the macros use, and
-- prints such math as raw source. Simpler Word-only forms of those:
-- - the tilde-under vector, drawn with \smash, \raise and \hbox;
-- - \textcolor, which Word math has no counterpart for, so the text stays
--   and the color goes.
local DOCX_OVERRIDES = [[
\newcommand{\vecf}[1]{\underset{\sim}{#1}}
\providecommand{\textcolor}[2]{#2}
]]

-- The tilde-under vector as the reader expands it, around a brace-free
-- argument (a Lua pattern cannot match nested braces).
local VECF_EXPANDED = "\\mathord{\\smash%[b%]{\\underset{\\raise%.3ex"
  .. "\\hbox{%$\\scriptstyle\\sim%$}}{([^{}]*)}}\\vphantom{[^{}]*}}"

local function read_macros()
  local dirs = {}
  if quarto and quarto.project and quarto.project.directory then
    table.insert(dirs, quarto.project.directory)
  end
  table.insert(dirs, os.getenv("QUARTO_PROJECT_DIR"))
  table.insert(dirs, ".")
  table.insert(dirs, "..")
  for _, dir in ipairs(dirs) do
    if dir then
      local f = io.open(dir .. "/" .. MACROS_FILE, "r")
      if f then
        local text = f:read("a")
        f:close()
        -- The PDF-only \DeclareRobustCommand{\'} line makes pandoc warn
        -- that \' is already defined; Word does not need it.
        return (text:gsub("\\DeclareRobustCommand[^\n]*\n", ""))
      end
    end
  end
  return nil
end

function Pandoc(doc)
  if not string.match(FORMAT, "docx") then
    return doc
  end

  local maths = {}
  doc:walk({
    Math = function(m)
      table.insert(maths, m)
    end,
  })
  if #maths == 0 then
    return doc
  end

  local macros = read_macros()
  if not macros then
    io.stderr:write("docx-math-macros: " .. MACROS_FILE ..
      " not found; Word math keeps the raw macros\n")
    return doc
  end

  -- A page that includes latex-macros/macros.qmd itself (defining-terms
  -- does) has its math expanded by the reader, before this filter runs,
  -- with the original tilde-under vector. Swap in the Word form.
  for _, m in ipairs(maths) do
    m.text = m.text:gsub(VECF_EXPANDED, "\\underset{\\sim}{%1}")
  end

  -- One paragraph per Math element, in document order. \( \) and \[ \]
  -- delimit the math, since $...$ fails when the math starts or ends with a
  -- space.
  -- The overrides go first: the macros file defines \vecf with
  -- \providecommand, which then keeps the override, and pandoc expands
  -- a definition that uses \vecf (such as \vec) when it reads it.
  -- Math that itself contains \) or \] would close its wrapper early, so it
  -- gets a placeholder in the batch and keeps its own text.
  local parts = { DOCX_OVERRIDES, macros }
  local keep = {}
  for i, m in ipairs(maths) do
    if m.text:find("\\)", 1, true) or m.text:find("\\]", 1, true) then
      keep[i] = true
      table.insert(parts, "\\(x\\)")
    elseif m.mathtype == "DisplayMath" then
      table.insert(parts, "\\[" .. m.text .. "\\]")
    else
      table.insert(parts, "\\(" .. m.text .. "\\)")
    end
  end
  local expanded = {}
  pandoc.read(table.concat(parts, "\n\n"), "markdown+tex_math_single_backslash"):walk({
    Math = function(m)
      table.insert(expanded, m.text)
    end,
  })
  if #expanded ~= #maths then
    io.stderr:write("docx-math-macros: expanded " .. #expanded ..
      " of " .. #maths .. " math elements; Word math keeps the raw macros\n")
    return doc
  end

  local i = 0
  return doc:walk({
    Math = function(m)
      i = i + 1
      if not keep[i] then
        m.text = expanded[i]
      end
      return m
    end,
  })
end
