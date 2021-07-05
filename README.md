# arch_setup
My arch setup

![](https://i.imgur.com/2WMvxSM.jpg)
![](https://i.imgur.com/OfLB4yH.png)

task               | solution
------------------ | ---
os                 | arch
shell              | fish
de                 | i3-gaps
theme              | material dark compact
browser            | vivaldi
filemanager        | pcmanfm
code editor        | code
text editor        | vim


# preinstallation
to setup network from `arch-chroot`
```
pacman -S networkmanager
systemctl enable NetworkManager.service
systemctl start NetworkManager.service
nmcli con # to know your connection name
nmcli con mod "connection name" ipv4.dns "8.8.8.8 8.8.4.4"
```
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
* Now Streaming - Twitch
* Vimium

## tor extensions
* Trace
* AudioContext Fingerprint Defender
* uBlock Origin

## vscode extensions
* Theme - Abyss 
* Vim
* GitLens
* Python
