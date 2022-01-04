# Dotfiles

My dotfiles for various programs that I use.

### Kitty Config

To Copy/Paste text from vim to other applications: </br>
* Install the following to use clipboard with vim
  * For Debian based distros: Install `vim-gtk3`
  * For Fedora : Install `vim-gtk3`
  * For Arch Linux : Install `gvim` (this will enable `+clipboard` for normal vim as well)
* Once the above is installed, add `set clipboard=unnamedplus` to your vimrc

*Optional*

I have configured my vim to use only two spaces for indentation instead of for python.
This can be done by adding these lines to your vimrc: </br>
`let g:python_recommended_style = 0` </br>
`let g:loaded_matchparen=1` </br>
`filetype plugin indent on` </br>
