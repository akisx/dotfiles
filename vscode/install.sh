#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

if type "code" >/dev/null 2>&1; then
    while true; do
        read -p "Install VSCode Extensions? [Y/n]" answer
        case $answer in 
            [Yy]* )
            echo "Installing extensions..."
            code --install-extension dbaeumer.vscode-eslint
            code --install-extension gerane.Theme-FlatlandMonokai
            code --install-extension donjayamanne.githistory
            code --install-extension PKief.material-icon-theme
            code --install-extension christian-kohler.path-intellisense
            code --install-extension eg2.tslint
            echo "Extensions have been installed!"
            break;
            ;;
            [Nn]* )
            echo "Skipping extesion install"
            break;
            ;;
            * )
            echo Please answer YES or NO.
        esac
    done;

    while true; do
        read -p "Overwrite VSCode settings? [Y/n]" answer
        case $answer in 
            [Yy]* )
            cp $SCRIPT_DIR/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
            cp $SCRIPT_DIR/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
            echo "VSCode settings have been overwritten"
            break;
            ;;
            [Nn]* )
            echo "Skipping setting overriting"
            break;
            ;;
            * )
            echo Please answer YES or NO.
        esac
    done;
fi