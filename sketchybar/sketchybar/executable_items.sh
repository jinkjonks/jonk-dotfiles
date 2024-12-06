#!/usr/bin/env bash

source "$HOME/.config/sketchybar/variables.sh" # Loads all defined colors

sketchybar --add event aerospace_workspace_change

# Mission Control specifics using yabai
SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
KEY_CODES=("18" "19" "20" "21" "23" "22" "26" "28" "25" "29")
for i in "${!SPACE_ICONS[@]}"; do
  sid="$(($i + 1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=10
    icon.padding_right=10
    background.color=0x40ffffff
    background.corner_radius=5
    background.height=20
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
    click_script="osascript -e \"tell application \\\"System Events\\\" to key code ${KEY_CODES[i]} using control down\""
  )
  sketchybar --add space space."$sid" left --set space."$sid" "${space[@]}"
done

# frontapp
COLOR="$WHITE"
front_app_setting=(
  script="$PLUGIN_DIR/front_app.sh"
  icon.drawing=off
  background.height=20
  background.padding_left=10
  background.padding_right=10
  background.border_width="$BORDER_WIDTH"
  background.border_color="$COLOR"
  background.corner_radius="$CORNER_RADIUS"
  background.color="$BAR_COLOR"
  label.color="$COLOR"
  label.padding_left=10
  label.padding_right=10
  associated_display=active
)

# front app
sketchybar --add item front_app center \
  --set front_app "${front_app_setting[@]}" \
  --subscribe front_app front_app_switched

# right spacer
sketchybar --add item right_spacer right \
  --set right_spacer background.padding_right=40

source "$HOME/.config/sketchybar/plugins/list_apps.sh"
