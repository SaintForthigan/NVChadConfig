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
                "--style={IndentWidth: 4, TabWidth: 4, UseTab: Never, AccessModifierOffset: -4, BreakBeforeBraces: Allman, ColumnLimit: 100, IndentAccessModifiers: false, PackConstructorInitializers: Never, IndentCaseLabels: false, IndentPPDirectives: None, AlignConsecutiveDeclarations: false, AlignConsecutiveAssignments: true, AlignConsecutiveMacros: {Enabled: true, AcrossEmptyLines: false, AcrossComments: true}, PointerAlignment: Left}",
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
