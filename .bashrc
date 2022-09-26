



#### don't autostart fish if we alredy did it.
#if [ -z "$STARTEDFISH" ];
#then
#    export STARTEDFISH=1;
#    exec fish;
#    exit;
#fi
#
#
## BEGIN_KITTY_SHELL_INTEGRATION
#if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
## END_KITTY_SHELL_INTEGRATION
