#!/usr/bin/env bash

# Ask for the administrator password upfront
if [ "$EUID" -ne 0  ]; then
	echo "Please run as root"
	exit
fi

echo 'Clear System Log Files...'

sudo rm -rfv /private/var/log/asl/*.asl &>/dev/null
sudo rm -rfv /Library/Logs/DiagnosticReports/* &>/dev/null
sudo rm -rfv /Library/Logs/Adobe/* &>/dev/null
rm -rfv ~/Library/Containers/com.apple.mail/Data/Library/Logs/Mail/* &>/dev/null
rm -rfv ~/Library/Logs/CoreSimulator/* &>/dev/null

rm -rf ~/Library/Caches/*
rm -rf ~/Library/logs/*
sudo rm -rf /Library/Caches/*
sudo rm -rf /Library/logs/*
sudo rm -rf /var/log/*
sudo rm -rf /private/var/folders/*


echo 'Clear Adobe Cache Files...'
sudo rm -rfv ~/Library/Application\ Support/Adobe/Common/Media\ Cache\ Files/* &>/dev/null

echo 'Purge inactive memory...'
purge

for x in $(ls ~/Library/Containers/)
do
    echo "cleaning ~/Libarary/Containers/$x/Data/Library/Caches"
    rm -rf ~/Library/Containers/$x/Data/Library/Caches/*
    echo "done cleaning ~/Library/Containers/$x/Data/Library/Caches"
done
