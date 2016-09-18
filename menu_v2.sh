#!/bin/bash
#--------------------------------------------------------------------
#  _      _                                                              
# | |    (_)                                                             
# | |     _ _ __  _   ___  __                                            
# | |    | | '_ \| | | \ \/ /                                            
# | |____| | | | | |_| |>  <            _                _               
# |______/\|_| |_|\__,_/_/\_\          | |              | |              
#       /  \   _ __  _ __ ___ _ __   __| | ___ _ __   __| | ___          
#      / /\ \ | '_ \| '__/ _ \ '_ \ / _` |/ _ \ '_ \ / _` |/ _ \         
#     / ____ \| |_) | | |  __/ | | | (_| |  __/ | | | (_| | (_) |  _ _ _ 
#    /_/    \_\ .__/|_|  \___|_| |_|\__,_|\___|_| |_|\__,_|\___/  (_|_|_)
#             | |                                                        
#             |_|                       
#
#
#          Desenvolvimento aberto
#          @Description : Este scrip tem a finalidade de facilitar a instalação para usuário iniciantes. 
#                         É open-source, fique a vontade para edita-lo.
#              
#		   Autor: 
#                        @xtiogordox (tio.gordo@mail.ru)
#		   Colaboradores: 
#                        @lymphatic (occult.omega@mail.ru), @hebertpezzoti (hebertpezzoti@hotmail.com)
#
#		   Referência: 
#                        @ElizeuMarino (elizeumarino@gmail.com)
#
#--------------------------------------------------------------------

clear
    menu() {
      mn=$(dialog --stdout --nocancel --backtitle "[ --- < INSTALAÇÃO GRÁFICA > --- ]" --title "Escolha uma opcao" --menu "" 0 0 0\
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
                clear;
        sudo apt install firefox -y;
                opcao_navegadores
                exit
              }
              function install_vivaldi(){
                dialog --backtitle "[Instalação Vivaldi ]" --sleep 4 --infobox "Aguarde, o Vivaldi será instalado" 4 35;
                clear;
        wget http://download3.operacdn.com/pub/opera/desktop/39.0.2256.71/linux/opera-stable_39.0.2256.71_amd64.deb -O opera-stable.deb;
        sudo dpgk -i opera-stable.deb && sudo apt install -f -y;
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
					sudo add-apt-repository ppa:libreoffice/ppa -y && sudo apt-get update;
					sudo apt-get dist-upgrade;
					sudo apt-get install libreoffice-l10n-pt-br;
                    opcao_escritorio
                    exit
                }
                function install_wps(){
                  dialog --backtitle "[Instalação WPS Office ]" --sleep 4 --infobox "Aguarde, o WPS será instalado" 3 35;
				  wget http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb -O wps-office.deb;
				  wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb -O web-office-fonts.deb;
				  sudo dpkg -i wps-office*.deb;
			      sudo apt-get install -f;
                  opcao_escritorio
                  exit
                }
                function install_apache(){
                  dialog --backtitle "[Instalação Apache Office ]" --sleep 4 --infobox "Aguarde, o Apache será instalado" 4 35;
				  wget http://ufpr.dl.sourceforge.net/project/openofficeorg.mirror/4.1.2/binaries/pt-BR/Apache_OpenOffice_4.1.2_Linux_x86-64_install-deb_pt-BR.tar.gz -O openoffice.tar.gz;
				 tar -vzxf openoffice.tar.gz;
				 tar -vzxf openoffice.tar.gz;
			     sudo dpkg -i pt-BR/DEBS/desktop-integration/*.deb;

                  opcao_escritorio
                  exit
                }
                function install_gnome(){
                  dialog --backtitle "[Instalação Gnome Office ]" --sleep 4 --infobox "Aguarde, o Gnome será instaladoG" 7 35;
				  sudo add-apt-repository ppa:gnome3-team/gnome3-staging -y && sudo add-apt-repository ppa:gnome3-team/gnome3 -y && sudo apt-get update && sudo apt-get dist-upgrade -y;
				  sudo apt-get install gnome-shell;
                  opcao_escritorio
                  exit
                }
				function install_caligra(){
                  dialog --backtitle "[Instação Calligra ]" --sleep 4 --infobox "Aguarde, o Calligra Office será instalado" 7 35;
				  sudo add-apt-repository ppa:kubuntu-ppa/backports;
				  sudo apt-get update;
				  sudo apt-get install calligra calligra-l10n-ptbr;
				  sudo apt-get install kdelibs*-dev;
				  kbuildsycoca4;
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
                3 'Instalar Lazarus' \
                4 'Instalar Android Studio' \
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
                wget http://download.netbeans.org/netbeans/8.1/final/zip/netbeans-8.1-201510222201-javase.zip -O netbeans.zip;
                sudo unzip netbeans.zip -d /opt/
                sudo mv /opt/netbeans*/ /opt/netbeans/
                sudo ln -sf /opt/netbeans/bin/netbeans /usr/bin/netbeans;
                echo -e '[Desktop Entry]\n Version=1.0\n Name=netbeans\n Exec=/opt/netbeans/bin/netbeans\n Icon=/opt/netbeans/nb/netbeans.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/netbeans.desktop;
                wget http://download.netbeans.org/netbeans/8.1/final/bundles/netbeans-8.1-javase-linux.sh -O netbeans-linux.sh;
                chmod +x netbeans-linux.sh;
                ./netbeans-linux.sh;
                sudo chmod +x /usr/share/applications/netbeans.desktop;
                cp /usr/share/applications/netbeans.desktop  ~/Área\ de\ Trabalho/;
                cp /usr/share/applications/netbeans.desktop ~/Desktop;
                opcao_desenvolvimento
                exit
              }
              function install_eclipse(){
                dialog --backtitle "[Instalação Eclipse ]" --sleep 4 --infobox "Aguarde, o Eclipse será instalado" 3 35;
                sudo add-apt-repository ppa:openjdk-r/ppa
                sudo apt-get update;
                sudo apt-get install openjdk-8-jdk;
                sudo update-alternatives --config java;
                sudo update-alternatives --config javac;
                wget http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz;
                sudo tar -zxvf eclipse.tar.gz -C /opt/;
                sudo mv /opt/eclipse*/ /opt/eclipse;
                echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/icon.xpm\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop;
                sudo chmod +x /usr/share/applications/eclipse.desktop;
                cp /usr/share/applications/eclipse.desktop  ~/Área\ de\ Trabalho/;
                cp /usr/share/applications/eclipse.desktop ~/Desktop;
                opcao_desenvolvimento
                exit
              }
              function install_lazaro(){
                dialog --backtitle "[Instalação Lazarus ]" --sleep 4 --infobox "Aguarde, o Lazarus será instalado" 4 35;
                wget http://ufpr.dl.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%201.6/fpc-src_3.0.0-151205_amd64.deb;
                wget http://ufpr.dl.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%201.6/fpc_3.0.0-151205_amd64.deb;
                wget http://ufpr.dl.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%201.6/lazarus_1.6-0_amd64.deb;
                sudo dpkg -i fpc*.deb -y;
                sudo dpkg -i lazarus*.deb -y;
                sudo apt-get install -f -y;
                opcao_desenvolvimento
                exit
              }
              function install_sdk(){
                dialog --backtitle "[Instalação Android Studio ]" --sleep 4 --infobox "Aguarde, o Android STudio será instalado" 7 35;
                sudo apt-add-repository ppa:paolorotolo/android-studio;
                sudo apt-get update;
                sudo apt-get install android-studio;
                opcao_desenvolvimento
                exit
              }
              function install_geany(){
                dialog --backtitle "[Instalação Geany ]" --sleep 4 --infobox "Aguarde, o Geany será instalado" 7 35;
                sudo add-apt-repository ppa:geany-dev/ppa;
                sudo apt-get update;
                sudo apt-get apt-get install geany;
                opcao_desenvolvimento
                exit
              }
              function install_code(){
                dialog --backtitle "[Instalação Code Blocss ]" --sleep 4 --infobox "Aguarde, o Code Blocks será instalado" 7 35;
                sudo add-apt-repository ppa:damien-moore/codeblocks-stable;
                sudo apt-get update;
                sudo apt-get install codeblocks;
                opcao_desenvolvimento
                exit
              }
              function install_sublime(){
                dialog --backtitle "[Instalação Sublime text 3 ]" --sleep 4 --infobox "Aguarde, o Sublime text 3 será instalado" 7 35;
                sudo add-apt-repository ppa:webupd8team/sublime-text-3;
                sudo apt-get update;
                sudo apt-get install sublime-text-installer;
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
