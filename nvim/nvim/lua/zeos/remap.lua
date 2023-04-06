local nnoremap = require("zeos.keymap").nnoremap

nnoremap("<leader>m", "<cmd>Ex<CR>")

-- Inlay hints
nnoremap("<leader>T","<cmd>lua require'lsp_extensions'.inlay_hints()<CR>")
nnoremap("<leader>t","<cmd>lua require'lsp_extensions'.inlay_hints()<CR>")

-- Latex
nnoremap("<leader>p","<cmd>LatexPreviewToggle<CR>")
nnoremap("<leader>[","<cmd>PrevPreviewMode<CR>")
nnoremap("<leader>]","<cmd>NextPreviewMode<CR>")
