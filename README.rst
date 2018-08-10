########
dotfiles
########

******
Debian
******
.. code-block:: shell

    # 開啓 tmpfs
    sudo cp /usr/share/systemd/tmp.mount /etc/systemd/system/
    sudo systemctl enable tmp.mount

    # 安裝 zsh 和 git，並將 root 和當前用戶的 shell 設置爲 zsh
    sudo apt install zsh git
    sudo chsh -s /bin/zsh
    chsh -s /bin/zsh
    # 退出重新登錄
    exit

    # 安裝源
    wget https://repo.zijung.me/debian/pool/main/z/zijung-repo/zijung-repo_1.0.0_all.deb
    sudo apt install ./zijung-repo_1.0.0_all.deb

    sudo apt install update-systemd-boot

    # 安裝 microcode
    # Intel：
    sudo apt install intel-microcode
    # AMD：
    sudo apt install amd64-microcode

    # 設置 log 持久化
    sudo mkdir -p /var/log/journal
    sudo systemd-tmpfiles --create --prefix /var/log/journal
    sudo systemctl restart systemd-journaldmkdir -p /var/log/journal systemd-tmpfiles

    # 安裝 Network Manager 然後重啓
    sudo apt install network-manager
    sudo reboot

    # 連結 WiFi
    nmcli dev wifi connect [WiFi 名稱] password [WiFi 密碼]

    # 安裝配置文件
    # Macbook Pro：
    sudo apt install zijung-libinput zijung-x11-common zijung-lightdm-mbp zijung-lightdm-gtk-greeter zijung-noto zijung-disable-xhc-wake zijung-google-chrome
    # PC：
    sudo apt install zijung-libinput zijung-x11-common zijung-lightdm zijung-lightdm-gtk-greeter zijung-noto zijung-google-chrome

    # 安裝軟件
    sudo apt install i3-gaps-next polybar i3lock-color xss-lock mate-terminal fonts-font-awesome-pro x11-xserver-utils psmisc pulseaudio rofi feh compton dunst fcitx-rime scrot

    # 安裝壁紙
    sudo apt install macos-backgrounds

    # 安裝 emoji 字體
    sudo apt install fonts-noto-color-emoji

    # 安裝 GTK 主題
    sudo apt install materia-gtk-theme papirus-icon-theme

    # 安裝 fcitx 皮膚
    sudo apt install fcitx-skin-material

    # 安裝 tlp
    sudo apt install tlp

    # 安裝郵件客戶端
    sudo apt install geary

    # 安裝音樂客戶端
    sudo apt install rhythmbox

    # 安裝 haveged
    sudo apt install haveged

    # 安裝 redshift
    sudo apt install geoclue-2-demo redshift

    # 強制使用英文目錄
    LANG=C xdg-user-dirs-update

    # 轉換鎖屏圖片大小
    sudo apt install imagemagick
    # Macbook Pro：
    convert /usr/share/backgrounds/macos/Yosmite.jpg -resize x1800 ~/.config/i3/lockscreen.png
    # PC：
    convert /usr/share/backgrounds/macos/Yosmite.jpg -resize x1440 ~/.config/i3/lockscreen.png
