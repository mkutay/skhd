#!/bin/dash

curWindowId="$(yabai -m query --windows --window | jq -re ".id")"

yabai -m window --space prev || yabai -m window --space last
yabai -m window --focus "$curWindowId"
