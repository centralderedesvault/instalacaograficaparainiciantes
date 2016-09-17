#!/bin/bash
#--------------------------------------------------------------------
#__  __ /__   (_) ___     / _ \___  _ __ __| | ___   __  __
#\ \/ /   / /\/ |/ _ \   / /_\/ _ \| '__/ _` |/ _ \  \ \/ /
# >  <   / /  | | (_) | / /_\\ (_) | | | (_| | (_) |  >  < 
#/_/\_\  \/   |_|\___/  \____/\___/|_|  \__,_|\___/  /_/\_\
#
#
#          Desenvolvimento aberto
#		   Autor: @xtiogordox
#		   Colaboradores: @lymphatic @@hebertpezzoti
#		   Referência: @ElizeuMarino
#
#--------------------------------------------------------------------

clear
    menu() {
      mn=$(dialog --stdout --nocancel --backtitle "[ --- < INSTALAÇÃO GRÁFICA> --- ]" --title "Escolha uma opcao" --menu "" 0 0 0\
      0 'Instalar Navegadores' \
      1 'Instalar Ferramentas de Escritório' \
      2 'Instalar Ferramentas de Desenvolvimento' \
      3 'Instalar Players de Musica e Video' \
      4 'Instalar Ferramentas de Leitura' \
      5 'Instalar Ferramentas de Sistema' \
      6 'Instalar Ferramentas de Gráficos' \
      7 'Instalar Ferramentas de Chat' \
      8 'Instalar Jogos' \
      9 'Outros' \
      10 ' ' \
      11 ' ' \
      - '==============================================================' \
      S 'Sair')

      case $mn in
        0) install_navegadores ;;
        1) install_escritorio ;;
        2) install_desenvolvimento ;;
        3) install_music_video ;;
        4) install_leitura ;;
        5) install_sistema ;;
        6) install_graficos ;;
        7) install_chat ;;
        8) install_jogos ;;
        9) install_outros ;;

        -) menu ;;
        S) sair;;
        * ) sair;;
      esac
    }

            function install_navegadores(){
              opcao_navegadores() {
                mn=$(dialog --stdout --nocancel --backtitle "[ --- < INSTALAR NAVEGADORES > --- ]" --title "Escolha uma opcao" --menu "" 0 0 0\
                1 'Instalar Chrome' \
                2 'Instalar Firefox' \
                3 'Instalar Vivaldi' \
                4 'Instalar Opera' \
				5 'Instalar Midori' \
				6 'Instalar Maxthon' \
				7 'Instalar Tor Browser' \
				8 'Instalar Qupzilla' \
				9 'Instalar Yandex' \
                - '==============================================================' \
                V 'Voltar')

                case $mn in
                  1) install_chrome ;;
                  2) install_firefox ;;
                  3) install_vivaldi ;;
                  4) install_opera ;;
				  5) install_midori ;;
                  6) install_maxthon ;;
                  6) install_tor ;;
                  6) install_qupzilla ;;
                  6) install_yandex ;;

                  -) opcao_navegadores ;;
                  V) menu;;
                  * ) menu;;
                esac
              }
              function install_chrome(){
                dialog --backtitle "[Instação Chrome ]" --sleep 4 --infobox "Aguarde, o Chrome será instalado" 6 35;
                clear;
				sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list';
				wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -;
				sudo apt-get update;
				sudo apt-get install google-chrome-stable;
                opcao_navegadores
                exit
              }
              function install_firefox(){
                dialog --backtitle "[Instação Firefox ]" --sleep 4 --infobox "Aguarde, o Firefox será instalado" 3 35;
                opcao_navegadores
                exit
              }
              function install_vivaldi(){
                dialog --backtitle "[Instalação Vivaldi ]" --sleep 4 --infobox "Aguarde, o Vivaldi será instalado" 4 35;
                opcao_navegadores
                exit
              }
              function install_opera(){
                dialog --backtitle "[Instalação Opera ]" --sleep 4 --infobox "Aguarde, o Opera será instalado" 7 35;
                opcao_navegadores
                exit
              }
              function install_midori(){
                dialog --backtitle "[Instalação Midori ]" --sleep 4 --infobox "Aguarde, o Midori será instalado" 7 35;
                opcao_navegadores
                exit
              }
              function install_maxthon(){
                dialog --backtitle "[Instação Maxthon ]" --sleep 4 --infobox "Aguarde, o Maxthon será instalado" 7 35;
                opcao_navegadores
                exit
              }
              function install_tor(){
                dialog --backtitle "[Insta1ação tor Browser ]" --sleep 4 --infobox "Aguarde, o Tor será instalado" 7 35;
                opcao_navegadores
                exit
              }
              function install_qupzilla(){
                dialog --backtitle "[Instalação Qupzilla ]" --sleep 4 --infobox "Aguarde, o Qupzilla será instalado" 7 35;
                opcao_navegadores
                exit
              }
              function install_yandex(){
                dialog --backtitle "[Instalação yandex ]" --sleep 4 --infobox "Aguarde, o Yandex será instalado" 7 35;
                opcao_navegadores
                exit
              }


              opcao_navegadores
              exit
            }
            function install_escritorio(){
              opcao_escritorio() {
                mn=$(dialog --stdout --nocancel --backtitle "[ --- < INSTALAR FERRAMENTAS DE ESCRITÓRIO > --- ]" --title "Escolha uma opcao" --menu "" 0 0 0\
                  1 'Instalar Libreoffice' \
                  2 'Instalar WPS Office' \
                  3 'Instalar Apache Office' \
                  4 'Instalar GNOME Office' \
                  5 'Instalar Calligra Suite' \
                - '==============================================================' \
                  V 'Voltar')

                  case $mn in
                    1) install_libre ;;
                    2) install_wps ;;
                    3) install_apache ;;
                    4) install_gnome ;;
                    4) install_caligra ;;

                    -) opcao_escritorio ;;
                    V) menu;;
                    * ) menu;;
                  esac
              }
                function install_libre(){
                    dialog --backtitle "[Instalação Libre Office ]" --sleep 4 --infobox "Aguarde, o Libre Office será instalado" 6 35;
                    clear;
                    opcao_escritorio
                    exit
                }
                function install_wps(){
                  dialog --backtitle "[Instalação WPS Office ]" --sleep 4 --infobox "Aguarde, o WPS será instalado" 3 35;
                  opcao_escritorio
                  exit
                }
                function install_apache(){
                  dialog --backtitle "[Instalação Apache Office ]" --sleep 4 --infobox "Aguarde, o Apache será instalado" 4 35;
                  opcao_escritorio
                  exit
                }
                function install_gnome(){
                  dialog --backtitle "[Instalação Gnome Office ]" --sleep 4 --infobox "Aguarde, o Gnome será instaladoG" 7 35;
                  opcao_escritorio
                  exit
                }
				function install_caligra(){
                  dialog --backtitle "[Instação Calligra ]" --sleep 4 --infobox "Aguarde, o Calligra Office será instalado" 7 35;
                  opcao_escritorio
                  exit
                }
                opcao_escritorio
                exit
            }
            function install_desenvolvimento(){
              opcao_desenvolvimento() {
                mn=$(dialog --stdout --nocancel --backtitle "[ --- < INSTALAR FERRAMENTAS DE DESENVOLVIMENTO > --- ]" --title "Escolha uma opcao" --menu "" 0 0 0\
                1 'Instalar Netbenas' \
                2 'Instalar Eclipse' \
                3 'Instalar Lázaro' \
                4 'Instalar Android SDK' \
                5 'Instalar Geany' \
                6 'Instalar Code Blocks' \
                7 'Instalar Sublime Text 3' \
                - '==============================================================' \
                V 'Voltar')

                case $mn in
                  1) install_netbeans ;;
                  2) install_eclipse ;;
                  3) install_lazaro ;;
                  4) install_sdk ;;
                  4) install_geany ;;
                  4) install_code ;;
                  4) install_sublime ;;

                  -) opcao_desenvolvimento ;;
                  V) menu;;
                  * ) menu;;
                esac
              }
              function install_netbeans(){
                dialog --backtitle "[Instalação netbeans ]" --sleep 4 --infobox "Aguarde, o Netbeans será instalado" 6 35;
                clear;
                opcao_desenvolvimento
                exit
              }
              function install_eclipse(){
                dialog --backtitle "[Instalação Eclipse ]" --sleep 4 --infobox "Aguarde, o Eclipse será instalado" 3 35;
                opcao_desenvolvimento
                exit
              }
              function install_lazaro(){
                dialog --backtitle "[Instalação Lázaro ]" --sleep 4 --infobox "Aguarde, o Lázaro será instalado" 4 35;
                opcao_desenvolvimento
                exit
              }
              function install_sdk(){
                dialog --backtitle "[Instalação Android SDK ]" --sleep 4 --infobox "Aguarde, o Android SDK será instalado" 7 35;
                opcao_desenvolvimento
                exit
              }
              function install_geany(){
                dialog --backtitle "[Instalação Geany ]" --sleep 4 --infobox "Aguarde, o Geany será instalado" 7 35;
                opcao_desenvolvimento
                exit
              }
              function install_code(){
                dialog --backtitle "[Instalação Code Blocss ]" --sleep 4 --infobox "Aguarde, o Code Blocks será instalado" 7 35;
                opcao_desenvolvimento
                exit
              }
              function install_sublime(){
                dialog --backtitle "[Instalação Sublime text 3 ]" --sleep 4 --infobox "Aguarde, o Sublime text 3 será instalado" 7 35;
                opcao_desenvolvimento
                exit
              }
              opcao_desenvolvimento
              exit
            }
            function install_music_video(){
              opcao_music_video() {
                mn=$(dialog --stdout --nocancel --backtitle "[ --- < INSTALAR FERRAMENTAS LINUX > --- ]" --title "Escolha uma opcao" --menu "" 0 0 0\
                1 'Instalar VLC Player' \
                2 'Instalar SM Player' \
                3 'Instalar Audacious' \
                4 'Instalar Spotify' \
                - '==============================================================' \
                V 'Voltar')

                case $mn in
                  1) install_vlc ;;
                  2) install_sm ;;
                  3) install_audacious ;;
                  4) install_spotify ;;
                  -) opcao_music_video ;;
                  V) menu;;
                  * ) menu;;
                esac
              }
              function install_vlc(){
                dialog --backtitle "[Instalação VLC Player ]" --sleep 4 --infobox "Aguarde, o VLC Player será instalado" 40 100;
                clear;
                opcao_music_video
                exit
              }
              function install_sm(){
                dialog --backtitle "[Instalação SM Player ]" --sleep 4 --infobox "Aguarde, o SM Player será instalado" 3 35;
                opcao_music_video
                exit
              }
              function install_audacious(){
                dialog --backtitle "[Instalação Audacious Player ]" --sleep 4 --infobox "Aguarde, o Audacious será instalado" 4 35;
                opcao_music_video
                exit
              }
              function install_spotify(){
                dialog --backtitle "[Instalação Spotify ]" --sleep 4 --infobox "Aguarde, o Spotify será instalado" 7 35;
                opcao_music_video
                exit
              }
              opcao_music_video
              exit
            }
            function sair(){
              dialog --backtitle "[ - - -  <  SAINDO  >  - - - ]" --sleep 10 --infobox "\n Exit" 12 50
              exit
            }
menu
