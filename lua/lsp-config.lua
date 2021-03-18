-- TODO: html https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#html
-- https://github.com/rrethy/vim-illuminate

local lspconfig = require('lspconfig')

lspconfig.tsserver.setup{}

lspconfig.cssls.setup{}

lspconfig.vimls.setup{}

lspconfig.diagnosticls.setup{
	filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact" };
	root_dir = lspconfig.util.root_pattern("package.json");
  init_options = {
		filetypes = {
			javascript = "eslint";
			["javascript.jsx"] = "eslint";
			javascriptreact = "eslint";
			typescriptreact = "eslint";
			typescript = "eslint";
		};
		linters = {
			eslint = {
				sourceName = "eslint";
				command = "eslint";
				rootPatterns = { ".git" };
				debounce = 100;
				args = {
					"--cache";
					"--stdin";
					"--stdin-filename";
					"%filepath";
					"--format";
					"json";
				};
				parseJson = {
					errorsRoot = "[0].messages";
					line = "line";
					column = "column";
					endLine = "endLine";
					endColumn = "endColumn";
					message = "${message} [${ruleId}]";
					security = "severity";
				};
				securities = {
					 [2] = "error";
					 [1] = "warning";
				};
			};
		};
	}
}
