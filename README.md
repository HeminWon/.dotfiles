# dotfiles



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