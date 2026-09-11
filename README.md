## **Descriptions:**

- **OS:** Arch Linux
- **Window Manager:** Sway
- **Bar:** waybar
- **Launcher:** Rofi
- **Terminal:** Foot
- **File Manager:** Pcmanfm
- **Terminal File manager:** lf
- **Media Players :** cmus (music) and mpv(video)
- **Primary Browser:** firefox-developer-edition
- **Code Editor** : Neovim
- **Lockscreen:** swaylock
- **Screenshot Tool:** Grim & Satty
- **Fonts:** iosevkaterm nerd font, roboto-condensed, jetbrainsmono nerd font
- **Policykit:** mate-polkit
- **Shell:** bash
- **Wallpaper Utility:** swaybg

> [!IMPORTANT]
>
> - save all of your wallpapers in `$HOME/Pictures/backgrounds` directory (wallpaper scripts are designed that way)
> - ⚠️ do not forget to change the settings related to your hardwares in `config/sway/devices.conf`
> - please check the `varibles.conf` file of each window manager config directory at the beginning
> - store your bookmarks in "$HOME/.local/share/config_dotfiles/bookmarks/" directory in `.txt` files to make the bookmarks scripts work. Some examples are already provided

---

## Installation commands :

```sh
mkdir -p "$HOME/workstationdots"
[ -d "$HOME/workstationdots/swaystation" ] || git clone -b main https://github.com/mister-grimm96/swaystation "$HOME/workstationdots/swaystation" --depth=1
bash "$HOME/workstationdots/swaystation/install_scripts/install.sh"
```

- if you're already done installing the base archlinux just clone the repo in `$HOME/workstationdots` (create this dir if it doesn't exist)
- run the `install.sh` script

## how the script works :

> [!NOTE]
>
> - all the dotfiles will be stored in a folder called `config_dotfiles` in your `$HOME/.local/share` directory
> - then if the config already exists in the `$HOME/.config` directory then it will be backed up in the `$HOME/.config.backup` directory with a name formatted like this : `%Y%m%d_%H-%M-%S`
> - then a symlink will be created from `$HOME/.local/share/config_dotfiles` directory to their respected directories
>   > - **why this approach instead of using/creating actual directories ? :** it's easy to dump them all togather in the project folder after making huge changes in multiple app configs
> - details of the configs must be mentioned in `$install_scripts/db/config_dotfiles.db.json` for the symlinking process

## modifying package lists

> [!CAUTION]
>
> - before installing you can check the list of the Packages in the `install_scripts/package_lists` directory and modify it according to your likings
>   > - just go to `install_scripts/package_lists/` directory to find all the list of packages
>   > - if you add a new package list file don't forget to modify the `install_with_pacman` script.
>   > - create an array with `mapfile` like this : `mapfile -t [variable_name] < "$INSTALL_WITH_PACMAN_SCRIPT_PATH/../package_lists/[name_of_your_pkg_list_file].txt"`
>   >   > - then add this line : `run_function install_with_pacman "${variable_name[@]}"`

## folder structure of my install script :

- `install.sh` will run all the scripts
- modify the package list according to your likings
- you can run these scripts individually as well

```sh
.
├── db
│   └── config_dotfiles.db.json
├── install.sh
├── package_lists
│   ├── cmus_pkg_list.txt
│   ├── common_pkg_list.txt
│   ├── dev_pkg_list.txt
│   ├── flatpak_pkg_list.txt
│   ├── gui_pkg_list.txt
│   └── wayland_pkg_list.txt
└── scripts
    ├── copy_from_src_to_des.sh
    ├── enable_services.sh
    ├── install_aur_helper.sh
    ├── install_with_flatpak.sh
    ├── install_with_pacman.sh
    ├── make_directories.sh
    ├── mini_functions.sh
    └── symlink_configs.sh
```

> flatpak install script is optional, so you have to run it manually after adding your prefered applications

---

## Gallery

### workflow

![Sway](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/sway.png?raw=true)

### waybar themes

- to launch the theme selector, press `mod+shift+s` then `b`

![wabar themes](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/waybarSwitching.gif?raw=true)

### One Launcher to rule them all : Rofi

![Launcher](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/launcher.png?raw=true)

---

## Apps in each workspace

| Workspace Number | Assigned Apps         |
| :--------------: | :-------------------: |
|        1         | Terminal              |
|        2         | Browser               |
|        3         | Development/Coding    |
|        4         | File Manager          |
|        5         | Chat                  |
|        6         | Design tools          |
|        7         | Office tools          |
|        8         | video projects        |
|        9         | games                 |
|        10        | System tools and Misc |

---

## keymaps

> [!NOTE]
> **Keymaps can be found within these files:**
>
> - swaywm : [swaywm keymaps](./config_dotfiles/config/sway/keymaps.conf)

---

## Neovim Text Editor: Grimm Vim: (Not a distro but my own personal config)

> [!CAUTION]
>
> - remove or backup the `nvim` folder from the following directory :
> - `~/.config/nvim`
> - `~/.cache/nvim`
> - `~/.local/share/nvim`
> - `~/.local/state/nvim`

- Now copy my `nvim` config folder in the `~/.config` directory

##### Start Page

![nvim 1](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/neovim/1.png?raw=true)

##### File Tree : mini.files

![nvim 2](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/neovim/2.png?raw=true)

##### Fuzzy Finder: Snacks.nvim

![nvim 6](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/neovim/6.png?raw=true)

##### LSP Support and Autocompletion support

![nvim 3](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/neovim/3.png?raw=true)

##### Gitsigns plugin for visual git status

![nvim 4](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/neovim/4.png?raw=true)

##### Plugin Manager : Lazy and LSP manager : Mason

![nvim 5](https://github.com/mister-grimm96/swaystation-misc/blob/main/screenshots/neovim/4.png?raw=true)
