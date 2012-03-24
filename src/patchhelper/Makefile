CC=/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/arm-apple-darwin10-gcc-4.2.1
Sysroot=/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.2.sdk/
LD=$(CC)
LDFLAGS=\
-L$(Sysroot)/usr/lib -F"$(Sysroot)/System/Library/PrivateFrameworks"  -F"$(Sysroot)/System/Library/Frameworks"

CFLAGS=-I/Developer/Platforms/iPhoneOS.platform/Developer/usr/lib/gcc/arm-apple-darwin10/4.2.1/include/ -I$(Sysroot)/usr/include -isysroot $(Sysroot)

all:	patchhelper

patchhelper:	patchhelper.o
	$(LD) $(LDFLAGS) -o $@ $^
	ldid -S $@

%.o: %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

clean:
	rm *.o patchhelper

