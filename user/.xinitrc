xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
xrandr --output DVI-D-0 --rate 144
exec i3
