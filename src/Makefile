CC=arm-apple-darwin9-gcc
Sysroot=/var/toolchain/sys30
LD=$(CC)
LDFLAGS=-lobjc -dynamiclib \
-L$(Sysroot)/usr/lib \
-bind_at_load -F"$(Sysroot)/System/Library/PrivateFrameworks"  -F"$(Sysroot)/System/Library/Frameworks" -framework Foundation

CFLAGS=-fconstant-cfstrings -std=gnu99 -Wall -O2 -I/usr/lib/gcc/arm-apple-darwin9/4.2.1/include/ -I$(Sysroot)/usr/include -isysroot $(Sysroot)

VERSION=1.0

all:    Toggle.dylib

Toggle.dylib: main.o
	$(LD) $(LDFLAGS) -o $@ $^
	ldid -S Toggle.dylib

%.o: %.m
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@
	   
%.o: %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

clean:
	rm -f *.o Toggle.dylib
