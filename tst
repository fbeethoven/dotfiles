#!/bin/sh
#
#file=$(ls ./script | dmenu -i -fn 'NotoMonoRegular:bold:pixelsize=12' -nb black -sb tomato -l 10)
source ~/Dropbox/Notes/theme
file=$(ls ./script |rofi -dmenu -i -p "" -theme "$theme" -width 50 -location 1 -l 20)
[[ -z $file ]] && exit

bash ./script/$file

