$themes = @(
	"amro", "di4m0nd", "easy-term", "emodipt", "emodipt-extend", "honukai", "powerlevel10k_lean", 
        "probua.minimal", "pure", "spaceship", "star", "the-unnamed", "wopian", "ys", "zash"
)

$CURR_THEME = Get-Random $themes
Remove-Variable themes

echo "[oh-my-posh] Random theme '$CURR_THEME' loaded"
echo ""

oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\$CURR_THEME.omp.json" | Invoke-Expression
Import-Module z
New-Alias v nvim
