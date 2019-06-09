#!/bin/sh

if ! [ -f 'libespeak.so' ]; then 
    ln -s ../lib/libespeak.so.1     libespeak.so 
fi

if ! [ -f 'libpng.so' ]; then 
    ln -s ../lib/libpng14.so.14     libpng.so
fi

if ! [ -f 'libSDL.so' ]; then 
    ln -s ../lib/libSDL-1.2.so.0    libSDL.so
fi

if ! [ -f 'libopenal.so' ]; then 
    ln -s ../lib/libopenal.so.1     libopenal.so
fi

if ! [ -f 'libogg.so' ]; then 
    ln -s ../lib/libogg.so.0        libogg.so
fi

if ! [ -f 'libvorbis.so' ]; then 
    ln -s ../lib/libvorbis.so.0     libvorbis.so
fi

if ! [ -f 'libvorbisfile.so' ]; then 
    ln -s ../lib/libvorbisfile.so.3 libvorbisfile.so
fi

if ! [ -f 'libz.so' ]; then 
    ln -s ../lib/libz.so.1          libz.so
fi

exit;

