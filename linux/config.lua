-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.keys.normal_mode["<C-q>"] = false

-- Configure the cpptools adapter
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'cpp',
  callback = function()
    local dap = require('dap')
    dap.adapters.cppdbg = {
      id = 'cppdbg',
      type = 'executable',
      command = vim.fn.stdpath('data') .. '/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
    }
    dap.configurations.cpp = {
      {
        name = 'Launch (cppdbg)',
        type = 'cppdbg',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = true,
      }
    }
  end
})

lvim.keys.normal_mode["<leader>bn"] = ":bnext<CR>"
lvim.keys.normal_mode["<leader>bp"] = ":bprevious<CR>"
lvim.keys.normal_mode["<leader>bd"] = ":bd<CR>"
lvim.keys.normal_mode["<leader>bl"] = ":Telescope buffers<CR>"

lvim.keys.normal_mode["<leader>y"] = "\"+y"

-- Helpfull keys: space+l - some code stuff
--                space+d - debug stuff
--                space+s - sarch stuff
--                space+g - git stuff
--                space+b - files
--                space+; - start page


