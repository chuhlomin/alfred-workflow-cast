function nofications_disable() {
  defaults -currentHost write "${HOME}/Library/Preferences/ByHost/com.apple.notificationcenterui" doNotDisturb -boolean true;
  defaults -currentHost write "${HOME}/Library/Preferences/ByHost/com.apple.notificationcenterui" doNotDisturbDate -date "$(date -u +'%Y-%m-%d %H:%M:%S +0000')";
  killall NotificationCenter;
}

function nofications_enable() {
  defaults -currentHost write "${HOME}/Library/Preferences/ByHost/com.apple.notificationcenterui" doNotDisturb -boolean false;
  killall NotificationCenter;
}

function menubar_hide() {
    defaults write NSGlobalDomain _HIHideMenuBar -bool true;
}

function menubar_show() {
    defaults write NSGlobalDomain _HIHideMenuBar -bool false;
}

function desktop_icons_hide() {
    defaults write com.apple.finder CreateDesktop false;
}

function desktop_icons_show() {
    defaults write com.apple.finder CreateDesktop true;
}

function dock_autohide_on() {
    defaults write com.apple.dock autohide -bool true;
    killall Dock;
}

function dock_autohide_off() {
    defaults write com.apple.dock autohide -bool false;
    killall Dock;
}

function kill_apps() {
    killall "$@";
}

function open_apps() {
    open "$@";
}
