# paladium-appify

![Icon1024 (1)](https://github.com/OrigamingWasTaken/paladium-appify/assets/74014262/142adf44-c54c-4c59-90aa-731413cd7eb4)

Paladium Appify is a script which embeds the .jar Paladium Launcher in a MacOS app.
I made this script because I found it frustrating to not be able to quickly open the launcher with Spotlight. Using, this script, this is now possible.

## How to use?

You need to download the launcher on https://paladium-pvp.fr, and move the file to your downloads folder.

You can then use the script without downloading it using a command. Simply open Spotlight with `Command + Space` and type `Terminal`. Open the terminal and type the following command:

`curl -s https://raw.githubusercontent.com/OrigamingWasTaken/paladium-appify/main/appify.sh | sh`

Then, press `Enter`.

Once done, the application will be located in `/Applications`

## How does it work?

The script will create a folder named `Paladium Games.app` in `/Applications`, and by respecting the MacOS application structure, create other folders (ex: for the icon)

The script will move the `Paladium Games Launcher.jar` file into the app and will then make another shell script that will execute on the app startup. This script will use the command **java** to launch Paladium's `.jar` file using the integrated icon.
