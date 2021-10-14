# vim-awesome

A command line interface for vimawesome.com

## Usage

Examples for how `vim-awesome` can be used are detailed below

### Search Plugins

```sh
vim-awesome search git
```

### Install Plugin

```sh
vim-awesome install fugitive-vim
```

### Upgrade Plugin to Latest Version

```sh
vim-awesome upgrade fugitive-vim
```

### Uninstall Plugin

```sh
vim-awesome uninstall fugitive-vim
```

## Installation

You will need the following dependencies installed to build vim-awesome

* gzip
* pandoc

The CLI makes use of the following dependencies. Some are required dependencies
for the core functionality, and some are optional dependencies that enable 
additional features.

* Required
	* bash
	* coreutils (cat, mkdir, rm, test)
	* curl
	* find
	* getopt
	* git
	* jq
* Optional
	* xdg-utils (xdg-open)

To build and install vim-awesome, run the following command in this repo

```sh
sudo make install
```
