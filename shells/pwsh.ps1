$themes = @(
	# The ones with no clutter
	"clean_detailed","pure", "tokyonight_storm", "uew", "wholespace",

	# Multiline but good looking enough
	"catppuccin_frappe", "half-life", "json", "material", "space", "sorin", "spaceship",
	
	# inline
	"amro","di4am0nd", "negligible", "probua.minimal","stelb", "ent-compact.minimal", "wopian"
)

$CURR_THEME = Get-Random $themes
Remove-Variable themes

echo "[oh-my-posh] Random theme '$CURR_THEME' loaded"
echo ""

oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\$CURR_THEME.omp.json" | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Import-Module z
