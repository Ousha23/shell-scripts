# shell-scripts


## Script de tri des fichiers par extension

Ce script shell permet de trier les fichiers présents dans un dossier donné ainsi que dans ses sous-dossiers par extension, puis de les copier dans des dossiers séparés pour chaque type d'extension.

### Fonctionnement

1. **Prérequis** : 
   - Un système Unix/Linux avec bash installé.

2. **Utilisation** :
   - Clonez ou téléchargez le script `sort_files.sh`.
   - Rendez le script exécutable avec la commande :
     ```bash
     chmod +x sort_files.sh
     ```
   - Exécutez le script en fournissant le chemin du dossier source comme argument :
     ```bash
     ./sort_files.sh <chemin_du_dossier>
     ```
   - Par exemple :
     ```bash
     ./sort_files.sh /path/to/your/directory
     ```

3. **Résultat** :
   - Un nouveau dossier nommé `sorted_files` sera créé à l'intérieur du dossier source.
   - Dans `sorted_files`, des sous-dossiers seront créés pour chaque extension trouvée (ex. `.txt`, `.jpg`, etc.) contenant les fichiers correspondants.

