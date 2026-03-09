return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

  dashboard.section.header.val = {
    "                                           ███                 ",
    "                                          ▒▒▒                  ",
    " ████████    ██████   ██████  █████ █████ ████  █████████████  ",
    "▒▒███▒▒███  ███▒▒███ ███▒▒███▒▒███ ▒▒███ ▒▒███ ▒▒███▒▒███▒▒███ ",
    " ▒███ ▒███ ▒███████ ▒███ ▒███ ▒███  ▒███  ▒███  ▒███ ▒███ ▒███ ",
    " ▒███ ▒███ ▒███▒▒▒  ▒███ ▒███ ▒▒███ ███   ▒███  ▒███ ▒███ ▒███ ",
    " ████ █████▒▒██████ ▒▒██████   ▒▒█████    █████ █████▒███ █████",
    "▒▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒   ▒▒▒▒▒▒     ▒▒▒▒▒    ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒ ▒▒▒▒▒ ",
    "                                                               ",
    "                                                               ",
    "                                                               ",
  }
 
vim.api.nvim_set_hl(0, "AlphaGradient1",  { fg = "#3A3335" }) -- Graphite
vim.api.nvim_set_hl(0, "AlphaGradient2",  { fg = "#892848" }) -- Mix: Graphite/Raspberry
vim.api.nvim_set_hl(0, "AlphaGradient3",  { fg = "#D81E5B" }) -- Raspberry Red
vim.api.nvim_set_hl(0, "AlphaGradient4",  { fg = "#E43955" }) -- Mix: Raspberry/Cinnabar
vim.api.nvim_set_hl(0, "AlphaGradient5",  { fg = "#F0544F" }) -- Cinnabar
vim.api.nvim_set_hl(0, "AlphaGradient6",  { fg = "#F47A70" }) -- Mix: Cinnabar/Papaya 1
vim.api.nvim_set_hl(0, "AlphaGradient7",  { fg = "#F9A192" }) -- Mix: Cinnabar/Papaya 2
vim.api.nvim_set_hl(0, "AlphaGradient8",  { fg = "#FDC8B4" }) -- Mix: Cinnabar/Papaya 3
vim.api.nvim_set_hl(0, "AlphaGradient9",  { fg = "#FDF0D5" }) -- Papaya Whip
vim.api.nvim_set_hl(0, "AlphaGradient10", { fg = "#E2E4D4" }) -- Mix: Papaya/Ash
vim.api.nvim_set_hl(0, "AlphaGradient11", { fg = "#C6D8D3" }) -- Ash Grey

-- 2. Apply the gradient to the header (One color per line)
dashboard.section.header.opts.hl = {
    { { "AlphaGradient1",  0, -1 } },
    { { "AlphaGradient2",  0, -1 } },
    { { "AlphaGradient3",  0, -1 } },
    { { "AlphaGradient4",  0, -1 } },
    { { "AlphaGradient5",  0, -1 } },
    { { "AlphaGradient6",  0, -1 } },
    { { "AlphaGradient7",  0, -1 } },
    { { "AlphaGradient8",  0, -1 } },
    { { "AlphaGradient9",  0, -1 } },
    { { "AlphaGradient10", 0, -1 } },
    { { "AlphaGradient11", 0, -1 } },
}   


dashboard.section.header.opts.position = "center"



    dashboard.section.buttons.val = {
        dashboard.button("e","  > New file",":ene <BAR> startinsert <CR>"),
        dashboard.button("f","  > Find file",":Telescope find_files<CR>"),
        dashboard.button("r","  > Recent",":Telescope oldfiles<CR>"),
        dashboard.button("s","  > Settings",":e $MYVIMRC<CR>"),
        dashboard.button("q","  > Quit NVIM",":qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end
}

