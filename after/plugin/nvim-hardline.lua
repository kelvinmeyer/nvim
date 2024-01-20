local function StripPrefix(str)
    if str == nil or str == '' then
        return str
    end
    local _, _, number = string.find(str, ":(%d+)")
    return tonumber(number) or ''
end

local function get_lsp_warnings()
    local lspWarns = StripPrefix(require('hardline.parts.lsp').get_warning())
    local wsWarns = StripPrefix(require('hardline.parts.whitespace').get_item())

    if lspWarns == '' and wsWarns == '' then
        return ''
    elseif lspWarns == '' then
        return '1'
    elseif wsWarns == '' then
        return lspWarns
    else
        return (tonumber(lspWarns) + 1) .. ''
    end
end

local function get_lsp_errors()
    return StripPrefix(require('hardline.parts.lsp').get_error())
end

require('hardline').setup {
    sections = { -- define sections
        { class = 'mode',    item = require('hardline.parts.mode').get_item },
        { class = 'high',    item = require('hardline.parts.git').get_item,       hide = 100 },
        { class = 'med',     item = require('hardline.parts.filename').get_item },
        { class = 'med',     item = '%<' },
        { class = 'med',     item = '%=' },
        { class = 'low',     item = require('hardline.parts.wordcount').get_item, hide = 100 },
        { class = 'error',   item = get_lsp_errors },
        { class = 'warning', item = get_lsp_warnings },
        { class = 'high',    item = require('hardline.parts.filetype').get_item,  hide = 60 },
        { class = 'mode',    item = require('hardline.parts.line').get_item },
    },
}
