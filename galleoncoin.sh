#!bin/bash
##############################
# Galleoncoin Compile Script #
#        by Worgon12         #
##############################
#
#
if (whiptail --title "Worgon12 Galleoncoin Unix/ARM Compile Script" --yes-button "Officially Galleon source" --no-button "Worgon12 ARM Fork " --yesno "please select Galleoncoin source " 10 90)
    then
        echo "officially compile Galleoncoin source starts"
        {
        echo 25
        sudo apt-get update 2>&1
        sudo apt-get install build-essential libtool bsdmainutils autotools-dev autoconf pkg-config automake libdb-dev libdb++-dev python3 libqrencode-dev libzmq3-dev libgmp-dev libevent-dev libboost-all-dev libssl1.0-dev libqt5gui5 lib>
        sudo rm -fr Galleoncoin
        sudo git clone https://github.com/GALE-forkbeard/Galleoncoin.git 2>&1
        cd Galleoncoin
        echo 50
        sudo chmod +x autogen.sh
        sudo ./autogen.sh
        sudo ./configure --with-incompatible-bdb 2>&1
        echo 75
        sudo make -j4 2>&1
        echo 100
        sleep 2
        }  | whiptail --gauge "please wait, wallet is now being created..." 6 60 0 2>&1
        sleep 1
        echo "deamon and qt wallet was created | daemon found in src | qt-wallet in src/qt"
        sleep 5
    else
        echo "Worgon12 ARM Galleoncoin Fork Raspberry OS starts"
        {
        echo 25
        sudo apt-get update 2>&1
        sudo apt-get install build-essential libtool bsdmainutils autotools-dev autoconf pkg-config automake libdb-dev libdb++-dev python3 libqrencode-dev libzmq3-dev libgmp-dev libevent-dev libboost-all-dev libssl1.0-dev libqt5gui5 lib>
        sudo rm -fr Galleoncoin 2>&1
        sudo git clone https://github.com/worgon12/Galleoncoin.git 2>&1
        cd Galleoncoin
        echo 50
        sudo chmod +x src 2>&1
        sudo chmod +x autogen.sh
        sudo ./autogen.sh 2>&1
        sudo ./configure --with-incompatible-bdb  2>&1
        echo 75
        sudo make -j4  2>&1
        echo 100
        sleep 3
        }  | whiptail --gauge "please wait, wallet is now being created..." 6 60 0 2>&1
        sleep 1
        echo "deamon and qt wallet was created | daemon found in src | qt-wallet in src/qt"
        sleep 5
    fi
exit
