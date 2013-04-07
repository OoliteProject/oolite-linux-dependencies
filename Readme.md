# Oolite Linux dependencies
This repository contains binary dependencies used to build Oolite for Linux (32-bit and 64-bit x86). It is included as a submodule in the main Oolite repository.

The documented build process for Oolite for Linux will pull in these pre-built dependencies with no additional work required. The rest of this file documents how to reproduce the changes made.


## Modifications to external libraries' source code for running Oolite
The various ports of Oolite are using a number of external libraries for graphics, sound, input and event handling. Throughout development, certain changes to the source code of these libraries have been deemed necessary, either to enable Oolite to run in a more efficient and independent manner, or simply to fix issues that occurred as a result of these external libraries themselves. Of these libraries, the ones that have to be rebuilt specifically for Oolite, together with the main reasons/areas changed for this reason are:

1. SpiderMonkey v1.85 (all platforms) - certain JS macro definitions required by Oolite not guaranteed or non-existent in standard library.

The changes made in the source code of each of these libraries are as follows:

### SpiderMonkey v1.85 (all platforms)
Specific build settings for Oolite are required. Library rebuilt with the following macros defined as shown below:
* `JS_THREADSAFE` defined on Mac and Linux debug builds.
* `MOZ_TRACE_JSCALLS` defined in order to enable full JavaScript profiling.
The entire source code of the library can be downloaded from ftp://anonymous@ftp.mozilla.org/pub/firefox/releases/4.0/source/firefox-4.0.source.tar.bz2
