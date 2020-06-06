action="${1}";

. "include.sh"

if [[ "${action}" == 'on' ]]; then

    nofications_disable;
    desktop_icons_hide;
    dock_autohide_on;
    menubar_hide;
    open_apps "/Applications/Keycastr.app"
    kill_apps "Twitterrific" "Telegram" "Finder";

    echo "Enabled";

else

    nofications_enable;
    desktop_icons_show;
    dock_autohide_off;
    menubar_show;
    open_apps "/Applications/Twitterrific.app" "/Applications/Telegram.app";
    kill_apps "KeyCastr" "Finder";

    echo "Disabled";

fi
