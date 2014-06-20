Oolite Binary Release
=====================


Here are some things that you need to know and will get you out of 
possible mishaps.

Keyboard shortcut F12 toggles full screen/windowed mode.

Full screen or windowed mode as well as full screen mode resolutions may be 
selected in "Game Options..." from the main game menu (F2 key). The 
settings you select will be saved to your user defaults.

Some older (much older) OpenGL cards can't cope with Oolite in higher 
resolutions and graphics rendering modes. This may result in textures not 
properly rendered, text rendered as blocks, visual artifacts to be displayed or 
low perfomance and frame rate. You may try various settings in the 
"Game Options..." menu, to check if any of these issues are addressed.
Most newer cards work just fine in all supported resolutions and graphics detail 
settings. In any case we invite you to visit the oolite bulletin board at 
http://aegidian.org/bb/index.php
and post any issue, concern or suggestion. Our community is known as being 
"The friendliest board in this side of Riedquat".



Troubleshoot audio issues
=========================
If you encounter sound issues with Oolite, it could be that the prepackaged 
libraries that come with Oolite are not that much compatible with your system. 
A workaround is to force Oolite to use your system's libraries instead of the 
prepackaged ones. 
The prepackaged Oolite libraries are located under the  
<Oolite installation folder>/oolite-deps/lib/ folder.
If any of the following suggestions does not resolve the issue then join us at 
our oolite-linux community at http://aegidian.org/bb/viewforum.php?f=9
and share your case with us. 
We have a thing for helping a fellow commander in distress.

1. Oolite speech synthesis troubleshooting
------------------------------------------
To correct issues with Oolite speech synthesis go to the oolite-deps/lib folder 
and try the following: 

Workaround A: Use the alternative PulseAudio speech synthesis library
$ cp -p libespeak.so.1 libespeak.so.1.portaudio
$ cp -p libespeak.so.1.pulseaudio libespeak.so.1
Now execute oolite. If this doesn't work try the following:

Workaround B: Force Oolite to use your system's libespeak library
First make sure that you have libespeak.so.1 installed in your system. Then "hide" 
the Oolite libespeak prepackaged library by going into the oolite-deps/lib 
folder and executing the following:
$ mv libespeak.so.1 libespeak.so.1.oolite
Now execute oolite.

2. No Audio or Oolite fails to execute
--------------------------------------
2a. First make sure that you have libSDL-1.2.so.0 installed in your system. Then "hide" 
the Oolite libSDL prepackaged library by going into the oolite-deps/lib 
folder and executing the following: 
$ mv libSDL-1.2.so.0 libSDL-1.2.so.0.oolite
Now execute oolite. If this doesn't work then restore Oolite prepackaged libSDL
$ mv libSDL-1.2.so.0.oolite libSDL-1.2.so.0 
and try the following:

2b. First make sure that you have libopenal.so.1 installed in your system. Then "hide" 
the Oolite libopenal prepackaged library by going into the oolite-deps/lib 
folder and executing the following:
$ mv libopenal.so.1 libopenal.so.1.oolite
Now execute oolite. 

If this doesn't work either, try hiding both libSDL and libopenal Oolite prepackaged 
libraries and execute oolite again.



Updating to new versions
========================
Once installed, oolite can be updated to the latest release, by executing 
the oolite-update script. 
This resides in either /usr/local/bin/ for system-wide oolite installations 
or in ~/GNUstep/Applications/Oolite/ for home-directory installations.
Running this updater will be considerably faster than downloading the full 
new package. "oolite-update" uses the rsync utility software and network 
protocol, and will update your oolite installation from any version >= 1.75.2 
to the latest release. 



Folders that get created during execution
=========================================
Note: Please, note, that the folders described in this paragraph are not 
removed when you uninstall oolite. They are considered as user folders 
(e.g. AddOns, screenshots, savegames with player's in-game status, 
game settings, etc.) having files generated with commander's pain and blood. 
You will have to manually remove them, if you believe that you do not need them 
and that you will not need them even if you reinstall Oolite in the future.

When you run oolite for the first time a ~/GNUstep/ (~ stands for your home 
directory path) directory will be created into your home directory. The 
GNUstep backend needs this. 
If you decide to use the "Manage Expansion Packs" functionality the 
~/GNUstep/Library/ApplicationSupport/Oolite/ManagedAddOns/ folder will be created 
to store the AddOns that you install from within the game itself. This is the only 
folder (from the folders described in this section) that the uninstaller will 
remove in case it finds it empty.
A ~/.Oolite/Logs/ folder is created to store the application Logs folder. 
When oolite is installed as a system-wide application, the .Oolite folder 
may also be used to store OXPs visible only by the specific user (~/.Oolite/AddOns.); 
see the "Adding AddOns" section below for more details.
A ~/.Oolite/.oolite-run file is also created at first run and its existence 
supresses the display of this README.
A ~/oolite-saves/ directory is created when you save your game status 
as a commander. 
Finally a ~/oolite-saves/snapshots/ folder is created when you grab an 
in-game screenshot (* key) for the first time. 



Saved games
===========
Saved games are all saved in ~/oolite-saves/ in your home directory.
You can copy all the existing .oolite-save files (for example, from a 
Macintosh) into this directory, and they will appear in the 
'Load Commander' menu screen in the game.
However, if you decide to install add-ons, make sure if you buy an
add-on ship you don't remove it, because your save game will stop working
if the ship it's based-on doesn't exist!



Adding AddOns
=============
There's a whole heap of game add ons - missions, ships etc.
You should start looking at:
Oolite wiki - http://wiki.alioth.net/index.php/OXP

To install an OXP, just copy the .oxp folder in the Oolite "AddOns" folder.
Next time you run Oolite, the OXP will be loaded.

If Oolite is installed system-wide then you have the following options:
A. OXPs visible by all users:
        Copy the .oxp folder in the <system-folder>/Oolite/AddOns/
B. OXPs visible only to a user:
        Copy the .oxp folder in the ~/.Oolite/AddOns/ 
Options A and B can be combined. Oolite will look for add-ons in both 
folders.

If Oolite is installed in your home-directory you may either copy the .oxp 
folder in ~/GNUstep/Oolite/AddOns/ or in ~/.Oolite/AddOns/ . In this case 
putting some add-ons in one folder and some add-ons in another does not 
have any obvious use.

It is suggested that you keep your OXPs in one AddOns folder.

Caution: if you save a game after buying a ship that was in an OXP,
then if you subsequently remove the OXP, that commander file will be 
rendered useless!



What are the dependencies that are packaged?
============================================
Since Oolite for Linux 1.75.2-beta release, a new distribution-neutral 
self-extractable package format has been introduced. The library 
dependencies are packaged within the installer. They are installed under 
the Oolite/ tree structure and are only visible by Oolite, thus, not 
messing at all, with your system's libaries.

So far, we've tested the pre-packaged dependencies on vanilla installations of
Ubuntu, Mint, Debian, Mandriva, Fedora, OpenSuse and on LinpusLite (!!!) with
just the normal beginner's installation (i.e. accepting all the defaults
for the GNU/Linux distro installed). It should work on any Linux 
distribution, however for vintage distros, an old libc can scupper you; 
it won't run on RedHat 8 for instance because libc is just too old. 
It will also run on Knoppix (if you have somewhere writeable
to install it). Please let us know what distro you're using and whether
it worked or not via the oolite-linux forum (see the link below under
'If it's borked').

The pre-packaged dependencies that come with oolite are:
libespeak.so.1 
(compiled to use libportaudio.so.2 also pre-packaged)

libespeak.so.1.pulseaudio 
(compiled to use PulseAudio as an alternative if libespeak.so.1 fails)

libffi.so.4
libgnustep-base.so.1.20 (gnustep-base-1.20.1)
libnspr4.so.0d
libobjc.so.2
libogg.so.0
libopenal.so.1 (openal-soft-1.15.1)
libplc4.so.0d
libplds4.so.0d
libpng14.so.14 (libpg-1.4.7)
libportaudio.so.2 (PortAudio stable v19 released 2011-03-26)
libSDL-1.2.so.0 (SDL-1.2.14)
libvorbisfile.so.3
libvorbis.so.0
libz.so.1 

You can download the source tarballs used to build these libraries from
http://ftpmain.gnustep.org/pub/gnustep/core/gnustep-make-2.0.8.tar.gz
http://ftpmain.gnustep.org/pub/gnustep/core/gnustep-base-1.20.1.tar.gz
http://www.libsdl.org/release/SDL-1.2.14.tar.gz
http://kcat.strangesoft.net/openal-releases/openal-soft-1.15.1.tar.bz2
http://prdownloads.sourceforge.net/libpng/libpng-1.4.7.tar.gz?download
http://www.portaudio.com/archives/pa_stable_v19_20110326.tgz
http://downloads.sourceforge.net/project/espeak/espeak/espeak-1.43/espeak-1.43.03-source.zip?use_mirror=kent
(The rest are the ones that come pre-compiled with Ubuntu 8.04.4.)

All of these dependencies are pretty straightforward to compile.
If you're constructing a package for a non-x86 or non-Linux platform,
take a look in https://github.com/OoliteProject/oolite-linux-dependencies 
for the libraries (dynamic and static) and headers you'll need to copy there. 



Call for maintainers
====================
If you're willing to maintain any non-x86 arch and any non-Linux OS (Oolite 
is at least known to run on FreeBSD) please let us know at: 
http://aegidian.org/bb/viewforum.php?f=5



If it's borked
==============
Please report it in the oolite-linux forum. Please include screen snapshots 
for graphics weirdness, and clear descriptions of sound weirdness. 
Include any logs in the terminal window. If you launched Oolite from an 
icon, you may need to start a terminal and run oolite from there in order 
to see any further O/S error messages. The oolite-linux forum is here:
http://aegidian.org/bb/viewforum.php?f=9



Talking about it, reporting bugs etc.
=====================================
The oolite bulletins board can be found here:
http://aegidian.org/bb



Credits
=======
Original OS X game: Giles Williams
Linux port: David Taylor, Giles Williams and Dylan Smith

...and of course the GNUstep project and the SDL, OpenAL
people, without which the Linux and Win32 ports would not have been
possible.


