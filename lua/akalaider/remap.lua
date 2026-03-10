vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("n", "<leader>rp", ":%s/")
vim.keymap.set("n", "<leader>rw", function()
  local word = vim.fn.expand("<cword>")
  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes(":%s/" .. word .. "//g<Left><Left>", true, false, true),
    "n",
    true
  )
end)
vim.keymap.set("n", "<leader>fw", function()
  local word = vim.fn.expand("<cword>")
  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes("/" .. word .. "<Enter>", true, false, true),
    "n",
    true
  )
end)
