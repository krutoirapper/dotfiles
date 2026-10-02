return {
    "catgoose/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        filetypes = { "*" },
        user_default_options = {
            RGB = true,
            RRGGBB = true,
            RRGGBBAA = true,
            AARRGGBB = true,
            mode = "background",

            ARGGBB = true,
            names = true,
            rgb_fn = true,
            hsl_fn = true,
            css = true,
            css_fn = true,
            tailwind = true,
            always_update = true
        },
    },
}

