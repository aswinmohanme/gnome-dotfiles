# SOURCE BASH PROFILE
bass source ~/.profile

# RBENV
status --is-interactive; and source (rbenv init -|psub)

# DISABLE TERMINAL COLORS
functions -e set_color
function set_color; end

for color in (set | grep -Eo '^fish_color_[a-zA-Z0-9_]+')
    # optional: save the color to be restored later
    #set -g old_$color $$color
    set $color normal
end
