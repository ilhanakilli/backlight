#!/bin/bash
mkdir -p ~/bin
touch ~/bin/parlaklık
chmod +x ~/bin/parlaklık
touch /etc/udev/rules.d/80-backlight.rules
echo '
SUBSYSTEM==”backlight” RUN+=”/bin/chmod 0666 /sys/class/backlight/rpi_backlight/brightness /sys/class/backlight/rpi_backlight/bl_power”'
echo '
#!/bin/bash
level=$1
#echo “Parlaklık değeri $level”
if [ $# != 1 ]; then
echo Kullanım: parlaklık "değer" \(0 ile 255 arasında\) 
exit 1
fi
if [[ $level -ge 0 && $level -le 255 ]]; then
#echo “Parlaklık değeri  $level”
echo $level > /sys/class/backlight/rpi_backlight/brightness
echo Parlaklık değeri $level yapıldı.
exit 0
else
echo Girilen parlaklık değeri $level sınırlar dışında \(0 ile 255 arasında olma$
exit 1
fi
export PATH=$PATH:~/bin' > ~/bin/parlaklık
