#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install git screen python3 python3-pip
git clone https://github.com/revoxhere/duino-coin
cd duino-coin
pip install -r requirements.txt


read -p "Nom d'utilisateur DuinoCoin: " username
read -p "Set mining intensity (1-100)% (recommended: 95): " intensity
read -p "Set mining threads: " threads
read -p "Rig Name: " rigName

mkdir 'Duino-Coin PC Miner 2.75'
cd 'Duino-Coin PC Miner 2.75'
wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/Resources/PC_Miner_langs.json
mv PC_Miner_langs.json Translations.json

echo -e "[PC Miner] \n" username = $username \nintensity = $intensity \nthreads = threads \nstart_diff = LOW \ndonate = 1 \nidentifier = $rigName \nalgorithm = DUCO-S1 \nlanguage = english \nsoc_timeout = 15 \nreport_sec = 120 \ndiscord_rp = y >> Settings.cfg
