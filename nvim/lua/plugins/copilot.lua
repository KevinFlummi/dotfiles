require("copilot").setup({
	cmd = "Copilot",
	suggestion = { enabled = false },
	panel = { enabled = false },
})
require("blink.copilot").setup()

vim.notify = (function(orig)
	return function(msg, ...)
		-- suppress Copilot free-tier message
		if msg:match("reached your monthly") then
			return
		end
		orig(msg, ...)
	end
end)(vim.notify)
