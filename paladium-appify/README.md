# paladium-appify

![Icon1024 (1)](https://github.com/OrigamingWasTaken/paladium-appify/assets/74014262/142adf44-c54c-4c59-90aa-731413cd7eb4)

[🇺🇸 EN Readme](https://github.com/OrigamingWasTaken/paladium-appify/blob/main/README_EN.md)

Paladium Appify est un script qui permet de transformer le fichier .jar du launcher en Application MacOS.
En effet, j'ai trouvé cela frustrant de ne pas pouvoir facilement lancer l'application avec Spotlight. C'est pour cela que j'ai crée ce script.

## Comment l'utiliser?

Vous devez télécharger le nouveau launcher sur https://paladium-pvp.fr, puis glisser le fichier `Paladium Games Launcher.jar` dans votre dossier téléchargement (s'il n'y est pas déjà).

Vous pouvez utiliser ce script sans devoir le télécharger en utilisant une commande. Pour ce faire, appuyez sur `Command + Espace` puis écrivez `Terminal`. Ouvrez le terminal, puis écrivez cette commande:

`curl -s https://github.com/OrigamingWasTaken/paladium-suggestions/raw/main/paladium-appify/appify.sh | bash`

Ensuite appuyez sur `Enter`.

Si vous avez correctement placé le fichier `Paladium Games Launcher.jar` dans votre dossier des téléchargements, le script va vous créer une application nommée **Paladium Games** dans `/Applications`.

Vous n'avez plus qu'à lancer l'application!

## Comment ça marche?

Le script va créer un dossier `Paladium Games.app` dans `/Applications`, et en suivant la structure des applications MacOS, va créer quelque dossier contenant l'icône du launcher et d'autres choses.

Le script va bouger le fichier `Paladium Games Launcher.jar` dans l'application puis va créer un autre script shell qui s'executera à l'ouverture de l'application. Ce script va utiliser une commande **java** pour lancer le fichier `.jar` de paladium en utilisant l'icône integrée (bien qu'actuellement, elle ne marche que pour le bootloader, et pas le launcher en lui même)
