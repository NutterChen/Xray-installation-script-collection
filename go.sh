#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

menu() {
    echo -e "—————————————— 选择脚本 ——————————————"""
    echo -e "${Green}1.${Font}  Xray官方脚本"
    echo -e "${Green}2.${Font}  kirin10000脚本"
    echo -e "${Green}3.${Font}  退出 \n"

    read -rp "请输入数字：" menu_num
    case $menu_num in
    0)
        bash <(curl -L -s https://raw.githubusercontent.com/XTLS/Xray-install/main/install-release.sh)
        ;;
    1)
        bash <(curl -L -s https://raw.githubusercontent.com/XTLS/Xray-install/main/install-release.sh)
        ;;
    2)
        bash <(curl -L -s https://raw.githubusercontent.com/kirin10000/Xray-TLS-Web-setup-script/main/Xray-TLS%2BWeb-setup.sh)
        ;;
    3)
        exit 0
        ;;
    *)
        echo -e "${RedBG}请输入正确的数字${Font}"
        ;;
    esac
}

menu
