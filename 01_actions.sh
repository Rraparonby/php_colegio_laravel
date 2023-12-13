#!/bin/bash

opcion=0
linea=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t---------- DEV ACTIONS ----------\n"
    
    echo -e "\t1. Start Project (php artisan serve)"
    echo -e "\t2. Preview (php localhost public)"
    echo -e "\t3. Test Project (php artisan test)"

    echo -e "\n\t---------- OPEN APPPs ----------\n"
    echo -e "\t11. Open VS-Code IDE (code .)"
    echo -e "\t12. Open Sublime-Text IDE (sublime_text .)"

    echo -e "\n\t---------- REQUIREMENTS ----------\n"
    echo -e "\t51. Install Php Extensions Requirements (sudo apt-get install)"
    echo -e "\t52. Install Composer (php composer-setup.php)"
    echo -e "\t53. Install Composer Packages (composer install)"  

    #echo -e "\t4. Preview Project (npm run preview)"

    echo -e "\n\t0. Salir\n\n"
    
    read -p "Escoja una Opcion: " opcion
}

exec_start() {
	clear	
    echo -e "----------- 1. Start Project (php artisan serve) -------------"
    echo
    
    php artisan serve
}  

exec_preview() {
    clear   
    echo -e "----------- 2. Preview (php localhost public) -------------"
    echo
    
    php -S localhost:3000 -t public
} 

exec_test() {
    clear   
    echo -e "----------- 3. Test Project (php artisan test) -------------"
    echo
    
    php artisan test

    #php ./composer.phar run-script test
}

open_vscode() {
    clear   
    echo -e "----------- 11. Open VS-Code IDE (code .) -------------"
    echo
    
    code .
}

open_sublime_text() {
    clear   
    echo -e "----------- 12. Open Sublime-Text IDE (sublime_text .) -------------"
    echo
    
    /opt/sublime_text/sublime_text .
}

exec_install_php_extensions() {
    clear   
    echo -e "----------- 51. Install Php Extensions Requirements (sudo apt-get install) -------------"
    echo
    
    sudo apt-get install php8.1-sqlite
}

exec_install_composer() {
    clear   
    echo -e "----------- 52. Install Composer (php composer-setup.php) -------------"
    echo
    
    # Download File: composer.phar

    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

    php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    
    php composer-setup.php
    
    php -r "unlink('composer-setup.php');"
}

exec_install_composer_packages() {
    clear   
    echo -e "----------- 53. Install Composer Packages (composer install) -------------"
    echo
    
    php ./composer.phar install
}

while [ 1 ]
do

    get_menu_opciones

    case $opcion in
    
        0)
            clear;
            echo -e "Proceso terminado correctamente..."
            break ;;
            
        1)  exec_start ;;   
        2)  exec_preview ;;   
        3)  exec_test ;;              
        
        51)  exec_install_php_extensions ;;            
        52)  exec_install_composer ;; 
        53)  exec_install_composer_packages ;; 

        11)  open_vscode ;;            
        12)  open_sublime_text ;; 
        
        *)  echo -e "Seleccion Incorrecta" ;;

    esac

echo -e "Presione la tecla Enter para continuar"
read linea

done