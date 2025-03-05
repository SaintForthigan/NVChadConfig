local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        cs = { "csharpier" },
        python = { "isort", "black" },
        rust = { "rustfmt" },
        -- css = { "prettier" },
        -- html = { "prettier" },
    },

    formatters = {
        ["clang-format"] = {
            prepend_args = {
                "--style={IndentWidth: 4, TabWidth: 4, UseTab: Never, AccessModifierOffset: -4, BreakBeforeBraces: Allman, ColumnLimit: 100, IndentAccessModifiers: false, PackConstructorInitializers: Never, IndentCaseLabels: true, IndentPPDirectives: BeforeHash, AlignConsecutiveDeclarations: false, AlignConsecutiveAssignments: {Enabled: true, AcrossComments: true}, AlignConsecutiveMacros: {Enabled: true, AcrossEmptyLines: false, AcrossComments: true}, PointerAlignment: Left, AlignArrayOfStructures: Left}",
            },
        },
        -- Python
        black = {
            prepend_args = {
                "--fast",
                "--line-length",
                "80",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
        rustfmt = {
            prepend_args = {
                "--edition=2021", -- You can specify Rust edition here
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
