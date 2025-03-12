 with import <nixpkgs> {};
writeShellScriptBin "dwm-status" ''
/run/current-system/sw/bin/xsetroot -name "| $(/run/current-system/sw/bin/date +%4Y-%m-%d) $(date +%H.%M) | $(cat /sys/class/power_supply/BAT1/status) | $(cat /sys/class/power_supply/BAT1/capacity)% | $(/run/current-system/sw/bin/nmcli general status | /run/current-system/sw/bin/awk 'FNR == 2 {print $1}') |"
''