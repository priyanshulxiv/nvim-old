require("colorizer").setup({
	DEFAULT_OPTIONS = {
		RGB = true,
		RRGGBB = true,
		names = false,
		RRGGBBAA = true,
		rgb_fn = false,
		hsl_fn = false,
		css = false,
		css_fn = false,
		mode = "background",
	},
	"*",
	html = {
		names = false,
		RRGGBBAA = true,
		rgb_fn = true,
		hsl_fn = true,
	},
	css = {
		names = false,
		RRGGBBAA = true,
		rgb_fn = true,
		hsl_fn = true,
	},
})
