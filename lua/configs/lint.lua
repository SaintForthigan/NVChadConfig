local lint = require("lint")

lint.linters_by_ft = {
    lua = { "luacheck" },
    python = { "flake8" },
    -- rust = { "clippy" }, -- Commented out clippy - will use rustaceanvim instead
    -- haskell = { "hlint" },
}

lint.linters.luacheck.args = {
    unpack(lint.linters.luacheck.args),
    "--globals",
    "love",
    "vim",
}

-- We'll remove the clippy linter config since it's causing errors
-- and rustaceanvim already handles Rust diagnostics through rust-analyzer

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    callback = function()
        lint.try_lint()
    end,
})
