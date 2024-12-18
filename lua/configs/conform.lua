local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        cs = { "csharpier" },
        -- css = { "prettier" },
        -- html = { "prettier" },
    },

    formatters = {
        ["clang-format"] = {
            prepend_args = {
                "--style={IndentWidth: 4, TabWidth: 4, UseTab: Never, AccessModifierOffset: -4, BreakBeforeBraces: Allman, ColumnLimit: 80, IndentAccessModifiers: true, PackConstructorInitializers: Never}",
            },
        },
    },

    timeout_ms = 3000,

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 2000,
        lsp_fallback = true,
    },
}

return options
