# Fichier utilisé pour lancer je launcher avec la commande "java" et utiliser l'icône de l'application
paladium_games='#!/bin/bash
script_dir=$(dirname "$0")
parent_dir=$(dirname "$script_dir")

exec java -Xdock:icon="$parent_dir/Resources/icon.icns" -jar "$parent_dir/Java/Paladium Games Launcher.jar"'

# Fichier Info qui sert à spécifier quel fichier lancer lors de l'ouverture de l'application
info_plist='<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleExecutable</key>
	<string>paladium-games</string>
	<key>CFBundleName</key>
    <string>Paladium Games</string>
    <key>CFBundleGetInfoString</key>
	<string>Paladium Games</string>
	<key>CFBundleIconFile</key>
	<string>AppIcon.icns</string>
	<key>LSMinimumSystemVersion</key>
    <string>10.15.7</string>
</dict>
</plist>'


# Créer le dossier .app (l'application)
mkdir /Applications/Paladium\ Games.app
mkdir /Applications/Paladium\ Games.app/Contents
mkdir /Applications/Paladium\ Games.app/Contents/MacOS
mkdir /Applications/Paladium\ Games.app/Contents/Java
mkdir /Applications/Paladium\ Games.app/Contents/Resources

# Télécharger l'icone de l'application
# https://github.com/OrigamingWasTaken/paladium-appify/blob/main/AppIcon.icns
curl -s https://raw.githubusercontent.com/OrigamingWasTaken/paladium-appify/main/AppIcon.icns > /Applications/Paladium\ Games.app/Contents/Resources/AppIcon.icns

# Bougez le jar du launcher dans le dossier .app
mv ~/Downloads/Paladium\ Games\ Launcher.jar /Applications/Paladium\ Games.app/Contents/Java


# Sauvegarde le fichier Info.plist et paladium-games (voir plus haut)
echo "$info_plist" > /Applications/Paladium\ Games.app/Contents/Info.plist
echo "$paladium_games" > /Applications/Paladium\ Games.app/Contents/MacOS/paladium-games

# Rend le fichier paladium-games executable
chmod +x /Applications/Paladium\ Games.app/Contents/MacOS/paladium-games

# Créer un fichier PkgInfo obligatoire pour les app MacOS
touch /Applications/Paladium\ Games.app/Contents/PkgInfo

# Message de succès
echo "\x1b[32;1mPaladium Games Launcher.jar a été transformé en application! \x1b[33;1m(/Applications/Paladium Games.app)\x1b[0m"