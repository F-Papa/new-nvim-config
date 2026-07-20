vim.pack.add({
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/mason-org/mason-lspconfig.nvim",
})

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "gopls",
    "lua_ls",
    "pyright",
  },
})

vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR,
  },
  signs = {
    severity = {
      min = vim.diagnostic.severity.WARN,
    },
  },
})

local lsp_group = vim.api.nvim_create_augroup(
  "user-lsp",
  { clear = true }
)

vim.api.nvim_create_autocmd("LspAttach", {
  group = lsp_group,

  callback = function(event)
    local client =
        assert(vim.lsp.get_client_by_id(event.data.client_id))

    local function map(mode, lhs, rhs, description)
      vim.keymap.set(mode, lhs, rhs, {
        buffer = event.buf,
        silent = true,
        desc = description,
      })
    end

    -- Familiar aliases. Neovim also provides native gr* mappings.
    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")

    -- Formatting
    map({ "n", "x" }, "<leader>f", function()
      vim.lsp.buf.format({
        bufnr = event.buf,
        async = true,
      })
    end, "Format")

    -- Diagnostic details
    map(
      "n",
      "<leader>df",
      vim.diagnostic.open_float,
      "Diagnostic details"
    )

    -- Workspace symbol search
    map(
      "n",
      "<leader>ws",
      vim.lsp.buf.workspace_symbol,
      "Workspace symbols"
    )

    -- Manually request completion
    map(
      "i",
      "<C-Space>",
      vim.lsp.completion.get,
      "Request completion"
    )

    -- Native automatic completion
    if client:supports_method("textDocument/completion") then
      local chars = {}

      for i = 32, 126 do
        table.insert(chars, string.char(i))
      end

      client.server_capabilities.completionProvider.triggerCharacters = chars

      vim.lsp.completion.enable(
        true,
        client.id,
        event.buf,
        { autotrigger = true }
      )
    end

    -- Toggle native inlay hints
    if client:supports_method("textDocument/inlayHint") then
      map("n", "<leader>ih", function()
        local enabled = vim.lsp.inlay_hint.is_enabled({
          bufnr = event.buf,
        })

        vim.lsp.inlay_hint.enable(not enabled, {
          bufnr = event.buf,
        })
      end, "Toggle inlay hints")
    end

    -- Highlight references to the symbol under the cursor
    if client:supports_method(
          "textDocument/documentHighlight"
        ) then
      local highlight_group =
          vim.api.nvim_create_augroup(
            "lsp-highlight-" .. event.buf,
            { clear = true }
          )

      vim.api.nvim_create_autocmd({
        "CursorHold",
        "CursorHoldI",
      }, {
        group = highlight_group,
        buffer = event.buf,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({
        "CursorMoved",
        "CursorMovedI",
      }, {
        group = highlight_group,
        buffer = event.buf,
        callback = vim.lsp.buf.clear_references,
      })
    end

    -- Native LSP-powered folds
    if client:supports_method(
          "textDocument/foldingRange"
        ) then
      local window = vim.fn.bufwinid(event.buf)

      if window ~= -1 then
        vim.wo[window].foldmethod = "expr"
        vim.wo[window].foldexpr =
        "v:lua.vim.lsp.foldexpr()"
      end
    end
  end,
})
