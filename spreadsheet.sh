#!/bin/bash

source ~/Dropbox/Notes/theme
list=$(cat $HOME/Dropbox/Notes/spreadsheets)
spreadsheet=$(echo "$list"|awk '{print $1}'|rofi -dmenu -i -p "Open SpreadSheet: " -theme "$theme" -width 50 -location 1 -lines 30)
[[ -z $spreadsheet ]] && exit
file_path=$(echo "$list"|grep $spreadsheet | awk '{print $2}')
[[ -z $file_path ]] && exit

localc "$HOME/$file_path"


