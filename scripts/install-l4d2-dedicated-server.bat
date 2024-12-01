
rem REMEMBER COMMENTS WITH REM



cd ..
cd steamcmd

rem ^ is the spread this command onto a new line operator
steamcmd.exe ^
  +force_install_dir 'D:\Games\L4D-Dedicated-Server-2024\' ^
  +login anonymous            ^
  +app_update 222860          ^
  +app_update 222860 validate ^
  +quit