$themes = @(
	"amro", "atomic", "avit", "blueish", "blue-owl", "craver", "di4am0nd", "emodipt",
	"festivetech", "fish", "half-life", "honukai", "hunk", "iterm2", "jblab_2021", 
	"material", "microverse-power", "montys", "night-owl", "powerline", "probua.minimal",
	"sonicboom_dark", "sorin", "space", "spaceship", "unicorn", "ys"
)

$CURR_THEME = Get-Random $themes
Remove-Variable themes

echo "[oh-my-posh] Random theme '$CURR_THEME' loaded"
echo ""

oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\$CURR_THEME.omp.json" | Invoke-Expression
Set-PSReadLineOption -PredictionSource History