# zsh
if command -v apt >/dev/null 2>&1
then
    sudo apt install zsh
else
    brew install zsh
    chsh -s $(which zsh)
fi

# fzf
if command -v apt >/dev/null 2>&1
then
    sudo apt install fzf
else
    brew install fzf
fi

# Oh My Zsh
curl	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
