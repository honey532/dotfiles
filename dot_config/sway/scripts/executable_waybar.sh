#!/usr/bin/env bash

run_waybar() {
    waybar -c ~/.config/sway/other/waybar/config -s ~/.config/sway/other/waybar/style.css
}

restart_waybar() {
    pid=$(pgrep waybar)
    [ ! -z $pid ] && kill $pid
    run_waybar
}

restart_waybar
