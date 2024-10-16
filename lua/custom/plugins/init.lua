-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'NLKNguyen/papercolor-theme' },
  { 'direnv/direnv.vim' },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  { 'tpope/vim-obsession' },
  { 'norcalli/nvim-colorizer.lua' },
  -- {
  --   'olimorris/codecompanion.nvim',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'nvim-treesitter/nvim-treesitter',
  --     'hrsh7th/nvim-cmp', -- Optional: For using slash commands and variables in the chat buffer
  --     'nvim-telescope/telescope.nvim', -- Optional: For using slash commands
  --     { 'stevearc/dressing.nvim', opts = {} }, -- Optional: Improves `vim.ui.select`
  --   },
  --   config = true,
  --   -- opts = {
  --   --   ---@param adapter CodeCompanion.Adapter
  --   --   ---@return string
  --   --   system_prompt = function(adapter)
  --   --     return "Before answering the question, think through it step-by-step within the <thinking></thinking> tags. Then, detect the user's language from their question and store it in the form of an ISO 639-1 code within the <user_language></user_language> tags. Then, develop your answer in the users' language within the <response></response> tags."
  --   --   end,
  --   -- },
  --   strategies = {
  --     chat = {
  --       adapter = 'anthropic',
  --     },
  --     inline = {
  --       adapter = 'anthropic',
  --     },
  --     agent = {
  --       adapter = 'anthropic',
  --     },
  --   },
  --   adapters = {
  --     anthropic = function()
  --       return require('codecompanion.adapters').extend('anthropic', {
  --         env = {
  --           api_key = 'cmd: echo $ANTHROPIC_API_KEY',
  --         },
  --       })
  --     end,
  --   },
  -- },
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = 'make',
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --- The below dependencies are optional,
      'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
      'zbirenbaum/copilot.lua', -- for providers='copilot'
      {
        -- support for image pasting
        'HakonHarnes/img-clip.nvim',
        event = 'VeryLazy',
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { 'markdown', 'Avante' },
        },
        ft = { 'markdown', 'Avante' },
      },
    },
  },
  { 'habamax/vim-godot', event = 'VimEnter' },
}
