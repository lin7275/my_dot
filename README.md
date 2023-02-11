# my_dot

# fd install 
You need to install fd, which is used by fzf. 
after install fd you need to link it by "ln -s $(which fdfind) ~/.local/bin/fd"


# nnn plugin
# nnn plugins are located in /home12a/wwlin/.config/nnn/plugins/
export NNN_PLUG="c:fzcd;j:autojump;p:preview-tui;s:sel2xsel;z:z"
where preview-tui is the file to be execute. you also need to make 
it executable by chmod +x sel2sel.


# nnn -x
nnn.zshrc located in /home12a/wwlin/my_dot/nnn.zshrc
