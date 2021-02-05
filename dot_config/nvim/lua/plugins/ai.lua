return {
  { "augmentcode/augment.vim" },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    opts = {
      provider = "gemini",
      providers = {
        ollama = {
          model = "qwen3:8b",
        },
        gemini = {
          model = "gemini-2.5-pro",
        },
      },
      enable_cursor_planning_mode = true,
      system_prompt = function()
        local hub = require("mcphub").get_hub_instance()
        return hub and hub:get_active_servers_prompt() or ""
      end,
      custom_tools = function()
        return {
          require("mcphub.extensions.avante").mcp_tool(),
        }
      end,
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",

      "echasnovski/mini.pick",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/nvim-cmp",
      "ibhagwan/fzf-lua",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
          },
        },
      },
      {
        "ravitemer/mcphub.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
        },
        build = "deno install -f --global -A npm:mcp-hub@latest",
        opts = {
          extensions = {
            avante = {
              make_slash_commands = true,
            },
          },
        },
        config = function()
          require("mcphub").setup()
        end,
      },
    },
  },
}
