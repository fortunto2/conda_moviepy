#!/bin/bash

mkdir build
cd build
# unset CMAKE_OSX_SYSROOT
# unset CMAKE_OSX_DEPLOYMENT_TARGET
# export SDKROOT=/Library/Developer/CommandlineTools
export LD_LIBRARY_PATH=$PREFIX/lib/
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig
cmake                                                               \
    -DPYTHON_EXECUTABLE=$PREFIX/bin/python                          \
    -DPYTHON_INCLUDE_DIR=$PREFIX/include/python2.7/                 \
    -DPYTHON_LIBRARY=$PREFIX/lib/libpython2.7.so                    \
    -DPYTHON_PACKAGES_PATH=$PREFIX/lib/python2.7/site-packages/     \
    -DBUILD_DOCS=OFF \
    -DBUILD_opencv_java=OFF                                         \
    -DBUILD_OPENEXR=ON \
    -DBUILD_JASPER=ON \
    -DWITH_QT=OFF                                                   \
    -DWITH_GTK=OFF                                                  \
    -DWITH_1394=ON                                                 \
    -DCMAKE_INSTALL_PREFIX=$PREFIX                                  \
    -DWITH_CUDA=OFF                                                 \
    -DWITH_AVFOUNDATION=OFF                                         \
    -DWITH_FFMPEG=ON                                                \
    -DJPEG_INCLUDE_DIR:PATH=$PREFIX/include                         \
    -DJPEG_LIBRARY:FILEPATH=$PREFIX/lib/libjpeg.so                  \
    -DPNG_PNG_INCLUDE_DIR:PATH=$PREFIX/include/libpng15             \
    -DPNG_LIBRARY:FILEPATH=$PREFIX/lib/libpng.so                    \
    -DZLIB_INCLUDE_DIR:PATH=$PREFIX/include                         \
    -DZLIB_LIBRARY:FILEPATH=$PREFIX/lib/libz.so                     \
    -DTIFF_INCLUDE_DIR:PATH=$PREFIX/include                         \
    -DTIFF_LIBRARY:FILEPATH=$PREFIX/lib/libtiff.so                  \
    ..
make
make install
