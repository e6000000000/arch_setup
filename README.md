# arch_setup
My arch setup

![](https://i.imgur.com/poRBL6j.png)

task               | app
------------------ | ---
os                 | arch
shell              | fish
de                 | i3-wm
browser            | vivaldi
filemanager        | pcmanfm
code editor        | code
text editor        | vim

# installation
```
git clone https://github.com/e6000000000/arch_setup.git
cd arch_setup
./setup.sh
reboot
```
to install nvidia drivers run `bash scripts/nvidia_drivers.sh`
if your gpu is not nvidia maybe you shood remove first 2 lines in your `.xinitrc`

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
* Theme - Abyss
* GitLens
* Python
