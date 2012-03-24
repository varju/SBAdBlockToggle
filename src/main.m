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

// Determines if the device is capable of running on this platform. If your toggle is device specific like only for
// 3g you would check that here.
BOOL isCapable()
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSString *tempAdBlockFile = @"/tmp/AdBlock-patchhelper.pid";
	if([fileManager fileExistsAtPath:tempAdBlockFile])
	{
		return NO;
	}
	return YES;
}

// This runs when iPhone springboard resets. This is on boot or respring.
BOOL isEnabled()
{
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSString *tempAdBlockFile = @"/var/mobile/Library/SBSettings/Toggles/AdBlock/AdBlock.pid";
	if([fileManager fileExistsAtPath:tempAdBlockFile])
	{
		return YES;
	}
	return NO;
}

// This function is optional and should only be used if it is likely for the toggle to become out of sync
// with the state while the iPhone is running. It must be very fast or you will slow down the animated
// showing of the sbsettings window. Imagine 12 slow toggles trying to refresh tate on show.
BOOL getStateFast()
{
	return isEnabled();
}

// Pass in state to set. YES for enable, NO to disable.
void setState(BOOL Enable)
{
	notify_post("com.nathulal.AdBlockToggle");
}

// Amount of time spinner should spin in seconds after the toggle is selected.
float getDelayTime()
{
	return 0.7f;
}

// Runs when the dylib is loaded. Only useful for debug. Function can be omitted.
__attribute__((constructor)) 
static void toggle_initializer() 
{ 
	NSLog(@"Initializing SBAdBlock Toggle\n"); 
}

// Determines if your toggle can be used while in a call.
BOOL allowInCall()
{
	return NO;
}

//When the user holds the button, your invokeHoldAction function will be called allowing you to handle the event.
void invokeHoldAction() 
{
	notify_post("com.nathulal.AdBlockToggle.patchhelper");
}
