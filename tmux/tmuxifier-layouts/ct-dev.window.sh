# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/data/dev"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "ct-dev"

# Split window into panes.
split_h 70
select_pane 1
split_v 50

# Set active pane.
select_pane 0
