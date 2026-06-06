return {version=12,pkgs={{dir="/home/isaak/.local/share/nvim/lazy/astrocore",source="lazy",spec=function()
return {
  "AstroNvim/astrocore",
  opts_extend = {
    "rooter.ignore.servers",
    "rooter.ignore.dirs",
    "sessions.ignore.buftypes",
    "sessions.ignore.dirs",
    "sessions.ignore.filetypes",
    "git_worktrees",
  },
}

end,name="astrocore",file="lazy.lua",},{dir="/home/isaak/.local/share/nvim/lazy/astrolsp",source="lazy",spec=function()
return {
  "AstroNvim/astrolsp",
  opts_extend = {
    "formatting.disabled",
    "formatting.format_on_save.allow_filetypes",
    "formatting.format_on_save.ignore_filetypes",
    "servers",
  },
}

end,name="astrolsp",file="lazy.lua",},{dir="/home/isaak/.local/share/nvim/lazy/astroui",source="lazy",spec=function()
return {
  "AstroNvim/astroui",
  opts_extend = {
    "status.winbar.enabled.filetype",
    "status.winbar.enabled.buftype",
    "status.winbar.enabled.bufname",
    "status.winbar.disabled.filetype",
    "status.winbar.disabled.buftype",
    "status.winbar.disabled.bufname",
  },
}

end,name="astroui",file="lazy.lua",},{dir="/home/isaak/.local/share/nvim/lazy/blink.compat",source="lazy",spec=function()
return {
  {
    'saghen/blink.compat',
    lazy = true,
  },
}

end,name="blink.compat",file="lazy.lua",},{dir="/home/isaak/.local/share/nvim/lazy/plenary.nvim",source="lazy",spec={"nvim-lua/plenary.nvim",lazy=true,},name="plenary.nvim",file="community",},},}