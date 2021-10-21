### How to do stuff on WSL (Ubuntu)
| What | How |
| --- | --- |
| Use vi to edit a file | - Open  (readonly with sudo)  `- vi ~/.oh-my-zsh/themes/agnoster.zsh-theme`<br />- Navigate (<kbd>j</kbd><kbd>k</kbd><kbd>l</kbd><kbd>h</kbd>)<br />- Edit mode (<kbd>ESC</kbd><kbd>i</kbd>)<br />- Save and exit (<kbd>ESC</kbd>+<kbd>:wq!</kbd>) |
| Install local package | `sudo dpkg -i lsd_0.20.1_amd64.deb` |
| Print environment variable | `printenv PATH` |
| Add to PATH permanently | `echo -n 'export PATH=~/bin:$PATH' >> ~/.zshrc` |

