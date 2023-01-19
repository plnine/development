#! /bin/bash

#X-l1bra  
clear && source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/scripts/common.sh)
printLogo
printRed  =======================================================================

mainmenu() {
    echo -ne "
$(cyanprint    'Выберите ноду !')
$(blueprint    '1)') Nibiru
$(magentaprint '2)') Celestia
$(yellowprint  '3)') DeFund
$(redprint     '0)') Exit
Введите цифру:  "
    read -r ans
    case $ans in
    1)
        nibiru
        ;;
    2)
    	celestia
        ;;
    3)
        defund
        ;;
    0)
        echo $(cyanprint '"Bye bye."')
        exit 0
        ;;
    *)
        printLogo
        printRed  ======================================================================= 
        mainmenu
        ;;
    esac
}

nibiru() {
echo    
}

celestia(){
echo
}

defund(){
source <(curl -s https://raw.githubusercontent.com/plnine/x-l1bra/main/nodes/defund/main.sh)
}

mainmenu