# dotfiles

### feature list

- 主力机备份软件列表及关键配置文件，其它机器可同步主力机软件列表和配置文件

### Installation

Run in terminal

```
curl https://raw.githubusercontent.com/HeminWon/dotfiles/master/scripts/bootstrap | sh
```



### components

./Scripting instructions

- **scripts/install**: Specifically for unconfigured computers that automatically install software and initialize configurations.
- **scripts/backup**: Any file named .backup.sh is executed when you run `scripts/backup`.Used to back up some configurations.
- **scripts/check**: This script will check for software that is not installed locally and only local installation software, It will generate a file named *applist/installer*.
- **scripts/link**: file *.file* gets symlinked into your `$HOME`. If `$HOME` already exits file,  it will rename existing entity files by adding the `_backup` suffix.



#### 功能说明

1. **备份软件列表**：使用[Homebrew-Bundle](https://github.com/Homebrew/homebrew-bundle)备份你的软件列表，对于未使用或不支持*[Homebrew](https://github.com/Homebrew/brew)*、*[mas](https://github.com/mas-cli/mas)*安装的软件同样备份至applist，需手动安装。
2. **备份配置文件**：对于一些个人偏好配置文件，为解决在新系统中需要重复设置问题，对此类文件进行集中管理或备份。.file文件使用*[stow](http://www.gnu.org/software/stow/)*在原有位置生成软连接方式管理，其余文件通过执行相应目录下*.backup.sh*的脚本文件完成备份，相比*[mackup](https://github.com/lra/mackup)*支持高度的自定义。



#### 安装备份软件列表文件

1. 批量安装使用homebrew、mas管理的软件

   ```shell
   # 批量安装备份软件列表文件
   brew bundle --file="$HOME/dotfiles/applist/Brewfile"	
   ```

2. 手动安装其他软件

   ```shell
   # 检查本机中未安装的备份软件列表中的软件
   cd $HOME/dotfiles/scripts && sh check
   ```