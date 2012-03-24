/*
 * patchhelper.c
 * 
 * Copyright (c) 2009 nathulal <inathulal at gmail.com>. All rights reserved.
 * 
 * This file is part of iPhoneAdBlockToggle.
 * 
 * iPhoneAdBlockToggle is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * iPhoneAdBlockToggle is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with iPhoneAdBlockToggle.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

// /etc/hosts
const char patch[] = {0x2f, 0x65, 0x74, 0x63, 0x2f, 0x68, 0x6f, 0x73, 0x74, 0x73}; 

// checkForValidIpAddress
const char patch1[] = {0x63, 0x68, 0x65, 0x63, 0x6B, 0x46, 0x6F, 0x72, 0x56, 0x61, 0x6C, 0x69, 0x64, 0x49, 0x70, 0x41, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73};
// testMode
const char patch2[] = {0x74, 0x65, 0x73, 0x74, 0x4D, 0x6F, 0x64, 0x65};

void ApplyPatch(FILE* file, const char* patchData, int patchDataLen, const char replacementChar)
{
	fseek(file, 0, SEEK_END);
	int length = ftell(file);
	fseek(file, 0, SEEK_SET);
	uint8_t* buffer = malloc(length);
	fread(buffer, 1, length, file);
	
	int i;
	for(i = 0; i < length; i++) {
		uint8_t* candidate = &buffer[i];
		if(memcmp(candidate, patchData, patchDataLen) == 0) {
			memset(candidate, replacementChar, patchDataLen);			
			fseek(file, i, SEEK_SET);
			fwrite(candidate, patchDataLen, 1, file);
			continue;
		}
	}
}

int main(int argc, char* argv[]) {
	int matchLoc = 0;
	if(argc != 2)
		return;
	FILE* file = fopen(argv[1], "rb+");
	ApplyPatch(file, patch, sizeof(patch), 0x78);
	ApplyPatch(file, patch1, sizeof(patch1), 0x00);
	ApplyPatch(file, patch2, sizeof(patch2), 0x00);
	fclose(file);

	return 0;
}

