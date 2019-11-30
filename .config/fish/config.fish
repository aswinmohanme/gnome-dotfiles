
# fnm
# set PATH /home/aswinmohanme/.fnm $PATH
# fnm env --multi | source

# source
bass source ~/.profile

# RBENV
status --is-interactive; and source (rbenv init -|psub)

# Disable Colors in terminal
functions -e set_color
function set_color; end

for color in (set | grep -Eo '^fish_color_[a-zA-Z0-9_]+')
    # optional: save the color to be restored later
    #set -g old_$color $$color
    set $color normal
end
