local pack = "packer"

local function bootstrap(url, ref)
	local name = url:gsub(".*/", "")
	local path = vim.fn.stdpath [[data]] .. "/site/pack/".. pack .. "/start/" .. name

	if vim.fn.isdirectory(path) == 0 then
		print(name .. ": installing in data dir...")

		vim.fn.system {"git", "clone", url, path}
		if ref then
			vim.fn.system {"git", "-C", path, "checkout", ref}
		end

		vim.cmd [[redraw]]
		print(name .. ": finished installing")
	end
end

-- for git head
bootstrap("https://github.com/udayvir-singh/tangerine.nvim")
bootstrap("https://github.com/udayvir-singh/hibiscus.nvim")
bootstrap("https://github.com/lewis6991/impatient.nvim")

require('impatient')
require("tangerine").setup {
	target = vim.fn.stdpath [[data]] .. "/tangerine",
	compiler = {
		verbose = false,
		hooks = {"onsave", "oninit"}
	}
}
