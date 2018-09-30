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
Compulim.vscode-clock
EditorConfig.EditorConfig
<<<<<<< HEAD
SolarLiner.linux-themes
Zignd.html-css-class-completion
aaron-bond.better-comments
=======
Equinusocio.vsc-material-theme
PeterJausovec.vscode-docker
SolarLiner.linux-themes
TeddyDD.fish
WallabyJs.quokka-vscode
Zignd.html-css-class-completion
>>>>>>> 271d405ebd2f1da094b029a418e0eba1dd97ae95
abotteram.typescript-react-snippets
abusaidm.html-snippets
akamud.vscode-caniuse
akamud.vscode-theme-onedark
andrejunges.Handlebars
angryobject.react-pure-to-class-vscode
anseki.vscode-color
arcticicestudio.nord-visual-studio-code
axiomaticstudios.one-monokai-80s
azemoh.one-monokai
bajdzis.vscode-twig-pack
be5invis.vscode-custom-css
bierner.emojisense
brittanychiang.halcyon-vscode
burkeholland.simple-react-snippets
capaj.vscode-exports-autocomplete
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
cssho.vscode-svgviewer
dbaeumer.vscode-eslint
deerawan.vscode-faker
donjayamanne.githistory
dsznajder.es7-react-js-snippets
eamodio.gitlens
eg2.tslint
emmanuelbeziat.vscode-great-icons
Equinusocio.vsc-material-theme
eryouhao.brackets-dark-pro
esbenp.prettier-vscode
felixfbecker.php-intellisense
<<<<<<< HEAD
fisheva.eva-theme
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
ginfuru.ginfuru-onedark-raincoat-theme
gio00.fish
hedinne.popping-and-locking-vscode
ionutvmi.spacegray-vscode
joshpeng.sublime-babel-vscode
jpoissonnier.vscode-styled-components
=======
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
ginfuru.ginfuru-onedark-raincoat-theme
hedinne.popping-and-locking-vscode
joshpeng.sublime-babel-vscode
>>>>>>> 271d405ebd2f1da094b029a418e0eba1dd97ae95
kumar-harsh.graphql-for-vscode
leveluptutorials.theme-levelup
lkytal.FlatUI
lXSPandora.vscode-styled-components-snippets
mblode.twig-language
mikestead.dotenv
<<<<<<< HEAD
momosct.momotheme
=======
>>>>>>> 271d405ebd2f1da094b029a418e0eba1dd97ae95
monokai.theme-monokai-pro-vscode
msjsdiag.debugger-for-chrome
naumovs.color-highlight
naumovs.theme-oceanicnext
<<<<<<< HEAD
pawelgrzybek.gatito-theme
=======
>>>>>>> 271d405ebd2f1da094b029a418e0eba1dd97ae95
primalmotion.primal
qinjia.view-in-browser
rebornix.nova
ritwickdey.LiveServer
<<<<<<< HEAD
rootix.dark-bliss-reloaded
sdras.night-owl
=======
>>>>>>> 271d405ebd2f1da094b029a418e0eba1dd97ae95
sysoev.language-stylus
teabyii.ayu
third774.hipsum
timothymclane.react-redux-es6-snippets
traBpUkciP.vscode-npm-scripts
<<<<<<< HEAD
trongthanh.theme-boxythemekit
viablelab.bracket-padder
waderyan.gitblame
WallabyJs.quokka-vscode
=======
viablelab.bracket-padder
waderyan.gitblame
>>>>>>> 271d405ebd2f1da094b029a418e0eba1dd97ae95
wart.ariake-dark
wayou.vscode-todo-highlight
wesbos.theme-cobalt2
wix.vscode-import-cost
xabikos.JavaScriptSnippets
<<<<<<< HEAD
Yummygum.city-lights-icon-vsc
yummygum.city-lights-theme
=======
>>>>>>> 271d405ebd2f1da094b029a418e0eba1dd97ae95
zhuangtongfa.Material-theme
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi