# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within/246128
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  TARGET="$(readlink "$SOURCE")"
  if [[ $TARGET == /* ]]; then
    SOURCE="$TARGET"
  else
    DIR="$( dirname "$SOURCE" )"
    SOURCE="$DIR/$TARGET" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
  fi
done

vscode_dir="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

for f in ~/.setup/lib/*; do
  source $f;
done

if ! yes_no_prompt "Install VSCode extensions & themes? "; then
  exit
fi

info "Installing VSCode extensions & themes..."
code --install-extension WakaTime.vscode-wakatime
code --install-extension alexdima.copy-relative-path
code --install-extension xaver.clang-format
#code --install-extension zhuangtongfa.material-theme
code --install-extension akamud.vscode-theme-onelight
code --install-extension akamud.vscode-theme-onedark
code --install-extension ms-vscode.cpptools
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension ms-dotnettools.csharp
code --install-extension James-Yu.latex-workshop
code --install-extension ms-python.vscode-pylance
code --install-extension eamodio.gitlens
# code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension donjayamanne.githistory
code --install-extension 
code --install-extension CodeStream.codestream
code --install-extension pkief.material-icon-theme
info "Installed VSCode extensions & themes..."
