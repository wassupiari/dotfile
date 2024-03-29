return {
  'goolord/alpha-nvim',
  event = "VimEnter",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = true,
  init = function()
    local status_ok, alpha = pcall(require, "alpha")
    if not status_ok then
      return
    end

    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("f", "  Looking for a file?", ":Telescope find_files <CR>"),
      dashboard.button("e", "  Do you need a new file?", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "  Looking for files already edited?", ":Telescope oldfiles <CR>"),
      dashboard.button("q", "  How do I exit Vim?", ":qa<CR>")
    }

    dashboard.section.footer.val = "miao, hasbulla, tits, tea."

    alpha.setup(dashboard.opts)
  end,
}
