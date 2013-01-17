@echo off
START .\apps\7z.exe a -t7z -mx9 .\Packed-Mods\"%2".7z "%1"
ECHO "check to make sure mod was packed correctly"