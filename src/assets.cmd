@echo off

pushd images

REM Convert the main graphics file

bmp2tile.exe "graphics.png" -savetiles "graphics.png.tiles.zx7" -savepalette "palette.bin"

bmp2tile.exe "graphics.png" -savetilemap "graphics.png.tilemap.bin"

REM Loop through each PNG file starting with "tiles" and process it

for %%f in (tiles*.png) do (

    bmp2tile.exe "%%f" -tileoffset 1 -savetiles "%%f.tiles.zx7"

)

popd
