#!/bin/sh

export OUTPUT_DIR="openarena-0.8.8"

pushd openarena-ioq3
ARCH=x86_64 make
PLATFORM=mingw64 ARCH=x86_64 make
ARCH=x86 make
PLATFORM=mingw64 ARCH=x86 make


cp build/release-linux-x86_64/oa-ioq3ded.x86_64 ../$OUTPUT_DIR/
cp build/release-linux-x86_64/oa-ioquake3.x86_64 ../$OUTPUT_DIR/
cp build/release-linux-x86_64/renderer_opengl1_x86_64.so ../$OUTPUT_DIR/
cp build/release-linux-x86_64/renderer_opengl2_x86_64.so ../$OUTPUT_DIR/

cp build/release-mingw64-x86_64/oa-ioq3ded.x86_64.exe ../$OUTPUT_DIR/
cp build/release-mingw64-x86_64/oa-ioquake3.x86_64.exe ../$OUTPUT_DIR/
cp build/release-mingw64-x86_64/renderer_opengl1_x86_64.dll ../$OUTPUT_DIR/
cp build/release-mingw64-x86_64/renderer_opengl2_x86_64.dll ../$OUTPUT_DIR/
cp build/release-mingw64-x86_64/SDL264.dll ../$OUTPUT_DIR/

cp build/release-linux-x86/oa-ioq3ded.x86 ../$OUTPUT_DIR/
cp build/release-linux-x86/oa-ioquake3.x86 ../$OUTPUT_DIR/
cp build/release-linux-x86/renderer_opengl1_x86.so ../$OUTPUT_DIR/
cp build/release-linux-x86/renderer_opengl2_x86.so ../$OUTPUT_DIR/

cp build/release-mingw64-x86/oa-ioq3ded.x86.exe ../$OUTPUT_DIR/
cp build/release-mingw64-x86/oa-ioquake3.x86.exe ../$OUTPUT_DIR/
cp build/release-mingw64-x86/renderer_opengl1_x86.dll ../$OUTPUT_DIR/
cp build/release-mingw64-x86/renderer_opengl2_x86.dll ../$OUTPUT_DIR/
cp build/release-mingw64-x86/SDL2.dll ../$OUTPUT_DIR/

popd

echo $OUTPUT_DIR

rm $OUTPUT_DIR.zip
zip -r $OUTPUT_DIR.zip $OUTPUT_DIR
