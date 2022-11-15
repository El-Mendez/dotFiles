$themes = @(
	"amro", "avit", "catppuccin_frappe", "chips", "di4am0nd",
	"easy-term", "half-life", "honukai", "hotstick.minimal",
	"json", "kushal", "marcduiker", "material", "plague",
	"powerlevel10k_lean", "sim-web", "space", "sorin",
	"spaceship", "tokyonight_storm", "wopian"
)

$CURR_THEME = Get-Random $themes
Remove-Variable themes

echo "[oh-my-posh] Random theme '$CURR_THEME' loaded"
echo ""

oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\$CURR_THEME.omp.json" | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
