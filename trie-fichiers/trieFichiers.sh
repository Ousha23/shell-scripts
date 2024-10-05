#!/bin/bash

# Vérification des arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <source_directory>"
    exit 1
fi

SOURCE_DIR="$1"

# Vérification si le dossier source existe
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Le dossier $SOURCE_DIR n'existe pas."
    exit 1
fi

# Création du dossier de destination
DEST_DIR="${SOURCE_DIR}/sorted_files"
mkdir -p "$DEST_DIR"

# Trouver tous les fichiers et les trier par extension
find "$SOURCE_DIR" -type f | while read -r file; do
    EXT="${file##*.}"  # Extraire l'extension du fichier
    if [ "$EXT" != "$file" ]; then
        # Créer le dossier pour l'extension si nécessaire
        mkdir -p "$DEST_DIR/$EXT"
        # Copier le fichier dans le dossier correspondant
        cp "$file" "$DEST_DIR/$EXT/"
    fi
done

echo "Les fichiers ont été triés et copiés dans $DEST_DIR."
