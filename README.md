# arch_setup
My arch setup

![](https://i.imgur.com/XtFqvZ4.png)
![](https://i.imgur.com/BKA8QB2.png)

task               | app
------------------ | ---
os                 | arch
shell              | fish
de                 | i3-wm
theme              | material dark compact
browser            | vivaldi
filemanager        | ranger
code editor        | visual-studio-code-insiders
text editor        | vim

# installation
```
git clone https://github.com/e6000000000/arch_setup.git
cd arch_setup
bash setup.sh
reboot
```
to install nvidia drivers run `bash scripts/nvidia_drivers.sh`
if your gpu is not nvidia maybe you shood remove first 3 lines in your `.xinitrc`

# apps settings
## vivaldi extensions
* uBlock Origin
* SponsorBlock
* Dark Reader
* Cookie-Editor
* Volume Manager

## tor extensions
* Trace
* AudioContext Fingerprint Defender
* uBlock Origin

## vscode extensions
* Theme - Black Ocean
* Vim
* GitLens
* Python
