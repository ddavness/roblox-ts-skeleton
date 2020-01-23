@Echo Off

Rem Initializes a place.
Rem Grabs a copy from .skeleton and then links the global folders to the "global" folder.
Rem Args: name - the name of the new location

IF %1.==. GOTO INVALID_PARAM

Set name=%1

Echo * Copying to "%name%"...
XCopy /S /E /I .skeleton %name%

IF ErrorLevel 1 GOTO XCOPY_FAILURE

link.cmd %name%

IF ErrorLevel 1 GOTO MKLINK_FAILURE

Echo * Success!

Exit

:INVALID_PARAM
    Echo * Invalid folder name!
    Exit 1

:XCOPY_FAILURE
    Echo * Failed to copy the folder!
    Exit 1

:MKLINK_FAILURE
    Echo * Failed to link to the global folders!
    Exit 1
