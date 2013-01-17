These scripts allow you to easily install and
update mods from a repo. packmod also is used
to pack your mod for use with the installer and
compresses to 7z archive.

installer:
Edit and save REPO URL in installer.sh if you wish.
Edit and save INSTALLLOC location to point to your mod folder.
Run start.exe
Inside resulting window type:
./installer.sh modname
where modname is the name of a mod in the repo that
you want to install.
To see available mods go to:
https://raw.github.com/TheZenKitteh/minetest-bashmodinstaller/master/Repo/


packmod:
Put your mod with proper folder name (modname)
inside the Mod-Packing-Directory

Example:
Mod-Packing-Directory\fakeblocks

Then run RUN-ME.exe
In resulting window type:
.\packmod.exe modname modnamewithversion

Example:
.\packmod.exe fakeblocks fakeblocks_0.0.3

Resulting packed mod should now be in the Packed-Mods directory.

