#
# ~/.bash_profile
#

# Content of this file can be copied to /etc/profile
# for cleaner home directory

# Set some defaults for graphical systems
export XDG_DATA_DIRS=${XDG_DATA_DIRS:-/usr/share/}
export XDG_CONFIG_DIRS=${XDG_CONFIG_DIRS:-/etc/xdg/}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/tmp/xdg-$USER}

if [ ! -d $XDG_RUNTIME_DIR ]; then
    mkdir $XDG_RUNTIME_DIR
fi

# Set some defaults for user directories
export XDG_CACHE_HOME=$HOME/.xdg/cache
export XDG_CONFIG_HOME=$HOME/.xdg/config
export XDG_DATA_HOME=$HOME/.xdg/data
export XDG_STATE_HOME=$HOME/.xdg/state

[[ -f $XDG_CONFIG_HOME/bash/bash_profile ]] && . $XDG_CONFIG_HOME/bash/bash_profile 
[[ -f $XDG_CONFIG_HOME/bash/bashrc ]] && . $XDG_CONFIG_HOME/bash/bashrc
