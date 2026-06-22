```bash
# Based on an original idea from: https://news.ycombinator.com/item?id=11071754

# Replicate my .dotfiles on a new system
git clone --bare git@github.com:kuchengeschmack/.dotfiles.git $HOME/.dotfiles
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" checkout
```
