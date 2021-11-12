% VIM-AWESOME(1) Version 0.0 | vimawesome.com CLI

# NAME

vim-awesome - A command line interface for interacting with the vimawesome.com catalogue

# DESCRIPTION

Provides a command line interface to the backend API of the vimawesome.com. This allows for searching the vimawesome.com catalogue and installing the plugins that are listed in the catalogue as well as the uninstallation of plugins that are installed with this CLI.

# SYNOPSIS

**vim-awesome** **search** [**-c**|**-i**] _term_

**vim-awesome** **show** [**-w**] _name_

**vim-awesome** **install** _name_ ...

**vim-awesome** **upgrade** _name_

**vim-awesome** **uninstall** _name_

**vim-awesome** **clear**

# OPTIONS

## SEARCH OPTIONS

**-c**, **\-\-cached**

: Search only cached plugins. This option is for internal use and is not likely useful to end users.

**-i**, **\-\-installed**

: Search only installed plugins

## SHOW OPTIONS

**-w**, **\-\-web**

: Open the web page for the plugin on vim-awesome.com

# EXAMPLES

**vim-awesome** **search** _git_

: Searches for vim plugins using the term "git"

**vim-awesome** **show** _fugitive-vim_

: Shows the details of the fugitive-vim package

**vim-awesome** **install** _fugitive-vim_

: Installs the fugitive-vim plugin to this system's vim installation

**vim-awesome** **search** **-i**

: Lists all the plugins that have been installed and are managed by this CLI

**vim-awesome** **upgrade** _fugitive-vim_

: Upgrades the fugitive-vim plugin to the latest version

**vim-awesome** **uninstall** _fugitive-vim_

: Uninstalls the fugitive-vim plugin from this system's vim installation

**vim-awesome** **clear**

: Removes non-essential cached data

