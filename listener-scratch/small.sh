# dynamically linked but tiny
gcc  -Os -fdata-sections -ffunction-sections -fipa-pta  -Wl,--gc-sections -Wl,-O1 -Wl,--as-needed -Wl,--strip-all pausle.c

#statically linked
gcc -Os -s -static -ffunction-sections -fipa-pta  -Wl,--gc-sections pausle.c -o fooble

strip fooble
