local null_ls_ok, null_ls = pcall(require, "null-ls")
if not null_ls_ok then
	null_ls_ok, null_ls = pcall(require, "none-ls")
	if not null_ls_ok then
		return
	end
end

local mason_null_ls_ok, mason_null_ls = pcall(require, "mason-null-ls")
if mason_null_ls_ok then
	mason_null_ls.setup({
		ensure_installed = {
			"stylua",
		},
		automatic_installation = true,
	})
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
	sources = {
		formatting.stylua,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_create_autocmd("BufWritePre", {
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
