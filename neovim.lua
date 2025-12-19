return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#050D2A", -- Default background
                base01 = "#5c70b8", -- Lighter background (status bars)
                base02 = "#050D2A", -- Selection background
                base03 = "#5c70b8", -- Comments, invisibles
                base04 = "#F5F8E6", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#F5F8E6", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#E7EBD9", -- Variables, errors, red
                base09 = "#ffffff", -- Integers, constants, orange
                base0A = "#DCE3D1", -- Classes, types, yellow
                base0B = "#BAC4B9", -- Strings, green
                base0C = "#adc1c7", -- Support, regex, cyan
                base0D = "#819bd5", -- Functions, keywords, blue
                base0E = "#8aacdb", -- Keywords, storage, magenta
                base0F = "#ffffff", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
