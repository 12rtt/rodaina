#!/bin/bash

# Fonction pour demander à l'utilisateur combien de fichiers se trouvent dans le répertoire actuel
function guess_files {
    local file_count=$(ls -1 | wc -l) # Nombre de fichiers dans le répertoire courant
    local user_guess=0

    echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
    while [[ $user_guess -ne $file_count ]]; do
        read -p "Votre estimation : " user_guess
        if [[ $user_guess -lt $file_count ]]; then
            echo "Trop bas. Essayez à nouveau."
        elif [[ $user_guess -gt $file_count ]]; then
            echo "Trop haut. Essayez à nouveau."
        else
            echo "Bravo ! Vous avez deviné correctement."
        fi
    done
}

# Exécution du jeu
guess_files
