#!/bin/sh
if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User"
	ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User"
	ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User"

	# from `code --list-extensions`
	modules="
AndersEAndersen.html-class-suggestions
Compulim.vscode-clock
Equinusocio.vsc-material-theme
LaurentTreguier.vscode-simple-icons
PKief.material-icon-theme
SmukkeKim.theme-setimonokai
TeddyDD.fish
Zignd.html-css-class-completion
abusaidm.html-snippets
akamud.vscode-theme-onedark
anseki.vscode-color
be5invis.vscode-custom-css
bradgashler.htmltagwrap
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
cssho.vscode-svgviewer
dbaeumer.vscode-eslint
donjayamanne.githistory
donjayamanne.jquerysnippets
dracula-theme.theme-dracula
eg2.vscode-npm-script
emmanuelbeziat.vscode-great-icons
esbenp.prettier-vscode
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
joshpeng.sublime-babel-vscode
leveluptutorials.theme-levelup
lukazakrajsek.bem-expand
mblode.twig-language
msjsdiag.debugger-for-chrome
naumovs.color-highlight
naumovs.theme-oceanicnext
qinjia.view-in-browser
rebornix.nova
teabyii.ayu
tristanremy.mirage
trongthanh.theme-boxythemekit
viablelab.bracket-padder
waderyan.gitblame
wesbos.theme-cobalt2
wix.vscode-import-cost
xabikos.JavaScriptSnippets
xabikos.ReactSnippets
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi