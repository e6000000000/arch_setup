xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
xrandr --output DVI-D-0 --mode 1920x1080 --rate 144
setxkbmap -option caps:none
setxkbmap -option 'grp:alt_shift_toggle'
setxkbmap -layout us,ru
xset r rate 200 20

#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session
exec i3
