#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================

mainmenu() {
    echo -ne "
$(yellowprint 'DEFUND')
$(greenprint   '1)') Установить
$(
$(yellowprint  '2)') Обновить
$(redprint     '3)') Удалить
$(magentaprint '4)') Помощь
$(blueprint    '5)') Вернутся назад
$(redprint     '0)') Выйти
Введите цифру:  "
   read -r ans
    case $ans in
    1)
        install
        ;;
    2)
        update
        ;;
    3)  
    	delet
    	;;
    4)
        help
        ;;
    0)
        echo $(cyanprint '"Bye bye."')
        exit 0
        ;;
    *)
        clear
        source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/logo.sh)
        mainmenu
        ;;
    esac
}

install(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/defund/install.sh)
}

update(){
echo
}

delet(){
clear
surce <( curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/defund/delet.sh)
}

help(){
echo
}

mainmenu