/*
 * main.m
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

#include <notify.h>
#import <Foundation/Foundation.h>

// Required
extern "C" BOOL isCapable() {
	return YES;
}

// Required
extern "C" BOOL isEnabled() {
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSString *tempAdBlockFile = @"/var/mobile/Library/SBSettings/Toggles/AdBlock/AdBlock.pid";
	if([fileManager fileExistsAtPath:tempAdBlockFile])
	{
		return YES;
	}
	return NO;
}

// Optional
// Faster isEnabled. Remove this if it's not necessary. Keep it if isEnabled() is expensive and you can make it faster here.
extern "C" BOOL getStateFast() {
	return isEnabled();
}

// Required
extern "C" void setState(BOOL enabled) {
	notify_post("com.nathulal.AdBlockToggle");
}

// Required
// How long the toggle takes to toggle, in seconds.
extern "C" float getDelayTime() {
	return 0.1f;
}
