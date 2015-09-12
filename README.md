# my-conf

my-conf is a plugin for oh-my-zsh which i created for my need to have easily transportable cross platform dotfiles.

Initially the project contained my personal configs but i split them up so the plugin can be easily used by other people.

## Installation (as oh-my-zsh plugin)
```shell
git clone https://github.com/sirblackheart/my-conf.git $ZSH_CUSTOM/plugins/my-conf
```
then add my-conf to your oh-my-zsh plugin list, probably located in your ~/.zshrc
```shell
plugins=(plugin1 plugin2 ... my-conf)
```

## Installation (without oh-my-zsh)
Clone this repository somewhere on your hard drive.
```shell
git clone https://github.com/sirblackheart/my-conf.git
```
Source the file my-conf.plugin.zsh from your ~/.zshrc config file, and configure your prompt. So, somewhere in ~/.zshrc, you should have:
```shell
source path/to/my-conf.plugin.zsh
```

##Usage
Either create a folder called config inside the my-conf folder, or set the $MY_CONF_PATH variable before loading the plugin
```shell
MY_CONF_PATH=/path/to/my/config/files
```

inside this folder you can then put your config files named "configname.zsh". For example alias.zsh.

For the config file to be loaded you have to add it to the my-conf list. Either put the list before you source oh-my-zsh or in your my-config config folder inside a file called config.zsh.

```shell
#either create a new list
my-conf=(alias config2 config3)
#or append it to the list
my-conf+=(config4 config5 config6)
```

If you want a config to be only loaded for a certain OS you have two possibilities. Either you put the config file inside my-conf-config-folder/os
or you check for the os and only append it then to the my-conf list. Currently three OS types are supported, OSX, Linux and MSYS(Windows).
The folders inside my-conf-config-folder would be osx, linux, msys. The ZSH variables to check if you are in an OS are OSX, LINUX and MSYS.
For example to add alias only for Linux with a zsh check:
```shell
(( LINUX )) && my-conf+=(alias)
```
Otherwise just move the alias.zsh file into a folder called linux inside your my-conf-config-folder.

It should be noted that if you have on alias.zsh inside your my-conf-config-folder and one in my-conf-config-folder/os both are read. First the common one and then the os specific one.

##Examples
For examples of a config folder checkout [my-conf-config] (https://github.com/sirblackheart/my-conf-config)
