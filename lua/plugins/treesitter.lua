require "nvim-treesitter.configs".setup {
    ensure_installed = {
        'cpp', 'c_sharp', 'rust',
        'vue', 'lua', 'python',
        "markdown", "typst", "asm",
        "html", "css", "javascript",
        "typescript", "dockerfile",
        "bash", "json5", "cmake",
        "bibtex","markdown_inline",},--, 'latex' },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "latex", "markdown", "cls" }
    },
    indent = { enable = true },
    auto_install = true,
    -- HACK: latex work
    ignore_install = { "latex"}, -- List of parsers to ignore installing
}

