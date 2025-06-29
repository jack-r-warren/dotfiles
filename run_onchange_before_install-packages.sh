if command -v apt >/dev/null 2>&1
then
    sudo apt update
fi

# zsh
if command -v apt >/dev/null 2>&1
then
    sudo apt install zsh
else
    brew install zsh
fi

# fzf
if command -v apt >/dev/null 2>&1
then
    sudo apt install fzf
else
    brew install fzf
fi

# Oh My Zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
