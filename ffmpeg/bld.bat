7z x *.7z

copy "ffmpeg-%PKG_VERSION%-win%ARCH%-static\bin\ffmpeg.exe" "%LIBRARY_BIN%\ffmpeg.exe"
copy "ffmpeg-%PKG_VERSION%-win%ARCH%-static\bin\ffplay.exe" "%LIBRARY_BIN%\ffplay.exe"
copy "ffmpeg-%PKG_VERSION%-win%ARCH%-static\bin\ffprobe.exe" "%LIBRARY_BIN%\ffprobe.exe"

if errorlevel 1 exit 1
