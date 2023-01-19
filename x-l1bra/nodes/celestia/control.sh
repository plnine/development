#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================


mainmenu() {
    echo -ne "
$(yellowprint 'CELESTIA')
$(greenprint   '1)') Проверить баланс
$(cyanprint    '2)') Добавить кошелек
$(yellowprint  '3)') Проверить синхронизацию
$(redprint     '4)') Просмотреть логи
$(magentaprint '5)') Информация
$(blueprint    '6)') Вернутся назад
$(redprint     '0)') Выйти
Введите цифру:  "
   read -r ans
    case $ans in
    1)
        install
        ;;
    2)
        control
        ;;
    3)
        update
        ;;
    4)  
    	delet
    	;;
    5)
        info
        ;;
    6)
        back
        ;;
    0)
        echo $(cyanprint '"Bye bye."')
        exit 
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