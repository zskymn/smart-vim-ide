# 简介
* smart-vim-ide收集了vim的一些插件和配置，可以更好地将vim打造为python项目的编辑器（主要使用python、js、html和css）

# 使用
### 克隆项目并获取子模块
```sh
$ git clone git@github.com:zskymn/vim-ide-mac.git
$ cd vim-ide-mac
$ git submodule init
$ git submodule update
```

### 建立软链
建议首先备份~/.vimrc 和 ~/.vim
```sh
$ rm ~/.vimrc ~/.vim
$ ln -s /path/to/vim ~/.vim
$ ln -s /path/to/vimrc ~/.vimrc
```

### 安装vim插件
* 打开vim
* 执行:PluginInstall
* 等待安装即可，结束时会提醒需要编译YouCompleteMe

### 部分插件的编译和依赖安装
* [YouCompleteMe编译](https://github.com/Valloric/YouCompleteMe/blob/master/README.md#mac-os-x-super-quick-installation)
* [tern_for_vim依赖安装](https://github.com/marijnh/tern_for_vim#manual)
* [vim-livedown依赖安装](https://github.com/shime/vim-livedown#installation)
