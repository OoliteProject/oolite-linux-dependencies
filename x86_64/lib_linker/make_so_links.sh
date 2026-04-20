#!/bin/sh

# Flibble tweaked this .
# added stanza to copy required libraries from build system
# and made symlink references more dynamic
#
# If we are here, then use_deps is in play, so we might like to
#  bundle anything which might break on other distros.

p=x86_64

if [ "x$1" = "xclean" ] ; then
  rm *.so
  rm -Rf ../lib
  rm -Rf ../../espeak-ng-data
  exit
fi

# Currently bundling libgnustep-base
#
#  1: The specific version is called for by oolite, but it WILL work with a
#     symlink to a newer system version.
#
#  2: The gdnc daemon from a newer version seems not to work on some
#     platforms without installing a bucketload of deps. On kubuntu 25.04 I
#     had to "apt install dh-exec" to get dpkg-architecture. After doing that
#     once, I apt autopurged dh-exec, and gdnc continued to work with both
#     versions. Baffling!
#
#     gdnc comes from package gnustep-base-runtime
#
#     Perhaps someone could figure out why Oolite calls the specific version
#     of libgnustep-base from the build host.
#
#     Else I suppose we could include gdnc into deps/bin and add that to PATH
#

mkdir -p ../lib
cp ../lib-static/* ../lib/
cp --dereference \
/usr/lib/libgnustep-base.so.[0-9].[0-9][0-9] \
/usr/lib/$p-linux-gnu/libicudata.so.[0-9][0-9] \
/usr/lib/$p-linux-gnu/libicui18n.so.[0-9][0-9] \
/usr/lib/$p-linux-gnu/libicuuc.so.[0-9][0-9] \
../lib

#cp -rf /usr/lib/$p-linux-gnu/espeak-ng-data ../../

#These work using distro libraries so should only need re-including where
# a future distro no longer has one of them at an appropriate version.
#/usr/lib/$p-linux-gnu/libespeak-ng.so.[0-9]
#/usr/lib/$p-linux-gnu/libcaca.so.0
#/usr/lib/$p-linux-gnu/libffi.so.[0-9]
#/usr/lib/$p-linux-gnu/libjack.so.[0-9]
#/usr/lib/$p-linux-gnu/libportaudio.so.[0-9]
#/usr/lib/$p-linux-gnu/libsndio.so.[0-9].0
#/usr/lib/$p-linux-gnu/libnspr[0-9].so
#/usr/lib/$p-linux-gnu/libobjc.so.[0-9]
#/usr/lib/$p-linux-gnu/libxslt.so.[0-9]
#/usr/lib/$p-linux-gnu/libSDL.so

#essential
##if ! [ -f 'libespeak.so' ]; then
##    ln -s ../lib/libespeak.so.1 libespeak.so
##fi

#essential
##if ! [ -f 'libpng.so' ]; then
##    ln -s ../lib/libpng[0-9][0-9].so.[0-9][0-9] libpng.so
##fi

#if ! [ -f 'libSDL.so' ]; then
#    ln -s ../lib/libSDL-1.2.so.0 libSDL.so
#fi

#if ! [ -f 'libopenal.so' ]; then
#    ln -s ../lib/libopenal.so.[0-9] libopenal.so
#fi

#if ! [ -f 'libogg.so' ]; then
#    ln -s ../lib/libogg.so.0 libogg.so
#fi

#if ! [ -f 'libvorbis.so' ]; then
#    ln -s ../lib/libvorbis.so.[0-9] libvorbis.so
#fi

#if ! [ -f 'libvorbisfile.so' ]; then
#    ln -s ../lib/libvorbisfile.so.[0-9] libvorbisfile.so
#fi

#if ! [ -f 'libz.so' ]; then
#    ln -s ../lib/libz.so.[0-9] libz.so
#fi

exit;

