senet
=====

Senet 𓄿 The Ancient Egyptian board game.

This is a 3D video board game written in go. It is using QML for the front end and azul3d.org graphics engine for the 3d graphics in open gl on a qml window. It interfaces to steamworks_sdk_128 for a list of network friends for tournament games.

Installation
------------

Sorry, but you cannot install the game at this time. This is a partial alpha release for the purpose of entry into the go-qml contest described at http://blog.labix.org/2014/03/13/go-qml-contest

You can download a video of the incomplete and barely playable game as it is at this time 
and you can view the source code for the QML file used in the game, the go code that access the QML file, 
and the steamworks callbacks that update the interactive QML objects.

QML is being used to create the ApplicationWindow, an About dialog box, a view of Rules and Keymapping, 
the interactive internet friends selection list for tournament play, and the menu system that allows the user to select game options.

The actual game play is handled by the dasa.cc Universe game environment which is written in go.

If you would like to be informed about progress on this game, please Star https://github.com/davsk/senet