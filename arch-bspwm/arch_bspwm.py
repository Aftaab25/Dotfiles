#!/bin/python3

# Installing essential apps

menu = ["Vim", "Neovim", "xsel(Clipboard for vim and neovim)", "nodejs", "npm", "yarn", "zsh", "tree", "tmux"]
print("Select the apps that you don't want to get installed:")
for i in range(len(menu)):
    print(str(i+1) + "                   " + menu[i])
print("===========================================================")
inp = input()
inp = inp.split(" ")
#print(inp)
command = ""
for i in range(len(menu)):
    if str(i+1) in inp:
        continue
    else:
        command = "sudo pacman -S " + menu[i]
    print(command)
    command = ""
