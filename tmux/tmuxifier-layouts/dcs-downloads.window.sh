# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "dcs-downloads"

# Split window into panes.
split_v 33
select_pane 0
split_v 50
select_pane 0
split_h 50
select_pane 2
split_h 50
select_pane 4
split_h 50

# Run commands.
run_cmd "ssh cthomas@192.168.122.165 tail -f screenlog.0" 0
run_cmd "ssh cthomas@192.168.122.166 tail -f screenlog.0" 1
run_cmd "ssh cthomas@192.168.122.34 tail -f screenlog.0" 2
run_cmd "ssh cthomas@192.168.122.35 tail -f screenlog.0" 3
run_cmd "ssh cthomas@192.168.122.36 tail -f screenlog.0" 4
run_cmd "ssh cthomas@192.168.122.37 tail -f screenlog.0" 5

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into active pane

# Set active pane.
select_pane 0
