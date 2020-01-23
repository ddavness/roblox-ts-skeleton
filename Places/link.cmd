@Echo Off

Rem Links a place to the global folder.
Rem Args: name - the name of the location to link.

IF %1.==. GOTO INVALID_PARAM

Set name=%1

Echo * Creating Symlinks...

Mklink /J %name%\src\global global\src
Mklink /J %name%\lua\global global\lua

IF ErrorLevel 1 Exit 1

Exit 0
