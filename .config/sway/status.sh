#/bin/sh

# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1 | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date +'%Y-%m-%d %X')

# Get the Linux version but remove the "-1-ARCH" part
linux_version=$(uname -r | cut -d '-' -f1)

# Returns the battery status: "Full", "Discharging", or "Charging".
battery_status=$(cat /sys/class/power_supply/BAT0/status)

gpu_temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo $uptime_formatted ↑ $linux_version 🐧 "$gpu_temp"C°  $battery_status 🔋 $date_formatted
