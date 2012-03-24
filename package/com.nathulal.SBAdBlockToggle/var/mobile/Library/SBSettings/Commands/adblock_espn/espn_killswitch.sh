#!/bin/bash
touch /tmp/wait_on_espn_killswitch;

killall ScoreCenter; 
killall ESPN\ SFTC; 
killall ESPN\ Local\ Boston; 
killall ESPN\ Local\ LA; 
killall ESPN\ Local\ Dallas; 
killall FreezeFrame; 
killall ESPN\ Deportes; 
killall Passport; 
killall ESPNMediaZone; 
killall MapMadness; 
killall DraftKit2010; 
killall WC-Trivia; 
killall World\ Cup\ Countdown; 
killall ESPN\ Local\ Chicago; 
killall BowlBound; 

rm /tmp/wait_on_espn_killswitch;

#( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \n
