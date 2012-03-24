#!/bin/bash
touch /tmp/wait_on_espn;
#################### REQUIRES AD SERVER START ####################
# ESPN SFTC START
if [ ! -f /User/Applications/*/ESPN\ SFTC.app/ESPN\ SFTC_ ]
	then
	 find /User/Applications/*/ESPN\ SFTC.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ESPN\ SFTC.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ESPN\ SFTC_ /var/tmp/ESPN\ SFTC.plist;
	 mv /var/tmp/ESPN\ SFTC.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@##0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ESPN\ SFTC \n' > /var/tmp/ESPN\ SFTC_;

# copy new exec file to proper location
find /User/Applications/*/ESPN\ SFTC.app -type f -name "ESPN\ SFTC" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ESPN\ SFTC_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPN SFTC END

# ESPN Boston START
if [ ! -f /User/Applications/*/ESPN\ Local\ Boston.app/ESPN\ Local\ Boston_ ]
	then
	 find /User/Applications/*/ESPN\ Local\ Boston.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ESPN\ Local\ Boston.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ESPN\ Local\ Boston_ /var/tmp/ESPN\ Local\ Boston.plist;
	 mv /var/tmp/ESPN\ Local\ Boston.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@##0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ESPN\ Local\ Boston \n' > /var/tmp/ESPN\ Local\ Boston_;

# copy new exec file to proper location
find /User/Applications/*/ESPN\ Local\ Boston.app -type f -name "ESPN\ Local\ Boston" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ESPN\ Local\ Boston_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPN Boston END

# ESPN Chicago START
if [ ! -f /User/Applications/*/ESPN\ Local\ Chicago.app/ESPN\ Local\ Chicago_ ]
	then
	 find /User/Applications/*/ESPN\ Local\ Chicago.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ESPN\ Local\ Chicago.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ESPN\ Local\ Chicago_ /var/tmp/ESPN\ Local\ Chicago.plist;
	 mv /var/tmp/ESPN\ Local\ Chicago.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@##0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ESPN\ Local\ Chicago \n' > /var/tmp/ESPN\ Local\ Chicago_;

# copy new exec file to proper location
find /User/Applications/*/ESPN\ Local\ Chicago.app -type f -name "ESPN\ Local\ Chicago" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ESPN\ Local\ Chicago_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPN Chicago END

# ESPN Los Angeles START
if [ ! -f /User/Applications/*/ESPN\ Local\ LA.app/ESPN\ Local\ LA_ ]
	then
	 find /User/Applications/*/ESPN\ Local\ LA.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ESPN\ Local\ LA.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ESPN\ Local\ LA_ /var/tmp/ESPN\ Local\ LA.plist;
	 mv /var/tmp/ESPN\ Local\ LA.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@##0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ESPN\ Local\ LA \n' > /var/tmp/ESPN\ Local\ LA_;

# copy new exec file to proper location
find /User/Applications/*/ESPN\ Local\ LA.app -type f -name "ESPN\ Local\ LA" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ESPN\ Local\ LA_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPN Los Angeles END

# ESPN Dallas START
if [ ! -f /User/Applications/*/ESPN\ Local\ Dallas.app/ESPN\ Local\ Dallas_ ]
	then
	 find /User/Applications/*/ESPN\ Local\ Dallas.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ESPN\ Local\ Dallas.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ESPN\ Local\ Dallas_ /var/tmp/ESPN\ Local\ Dallas.plist;
	 mv /var/tmp/ESPN\ Local\ Dallas.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@##0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ESPN\ Local\ Dallas \n' > /var/tmp/ESPN\ Local\ Dallas_;

# copy new exec file to proper location
find /User/Applications/*/ESPN\ Local\ Dallas.app -type f -name "ESPN\ Local\ Dallas" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ESPN\ Local\ Dallas_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPN Dallas END

# ESPN Passport START
if [ ! -f /User/Applications/*/Passport.app/Passport_ ]
	then
	 find /User/Applications/*/Passport.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/Passport.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value Passport_ /var/tmp/Passport.plist;
	 mv /var/tmp/Passport.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@##0.0.0.0 adsatt.espn.go.com@\#0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@#0.0.0.0 m.espn.go.com@0.0.0.0 m.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/Passport \n' > /var/tmp/Passport_;

# copy new exec file to proper location
find /User/Applications/*/Passport.app -type f -name "Passport" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/Passport_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPN Passport END

#################### REQUIRES AD SERVER END ####################

#################### NO AD SERVER START ####################

# ScoreCenter START
if [ ! -f /User/Applications/*/ScoreCenter.app/ScoreCenter_ ]
	then
	 find /User/Applications/*/ScoreCenter.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ScoreCenter.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ScoreCenter_ /var/tmp/ScoreCenter.plist;
	 mv /var/tmp/ScoreCenter.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\nsudo sed -e \"s@0.0.0.0 m.espn.go.com@#0.0.0.0 m.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nsudo cp /etc/hosts /tmp/hosts.txt;\nsudo sed -e \"s@\##0.0.0.0 m.espn.go.com@\#0.0.0.0 m.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ScoreCenter \n' > /var/tmp/ScoreCenter_;

# copy new exec file to proper location
find /User/Applications/*/ScoreCenter.app -type f -name "ScoreCenter" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ScoreCenter_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ScoreCenter END

# World Cup Countdown START
if [ ! -f /User/Applications/*/World\ Cup\ Countdown.app/World\ Cup\ Countdown_ ]
	then
	 find /User/Applications/*/World\ Cup\ Countdown.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/World\ Cup\ Countdown.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value World\ Cup\ Countdown_ /var/tmp/World\ Cup\ Countdown.plist;
	 mv /var/tmp/World\ Cup\ Countdown.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/World\ Cup\ Countdown \n' > /var/tmp/World\ Cup\ Countdown_;

# copy new exec file to proper location
find /User/Applications/*/World\ Cup\ Countdown.app -type f -name "World\ Cup\ Countdown" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/World\ Cup\ Countdown_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# World Cup Countdown END

# ESPN Deportes START
if [ ! -f /User/Applications/*/ESPN\ Deportes.app/ESPN\ Deportes_ ]
	then
	 find /User/Applications/*/ESPN\ Deportes.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ESPN\ Deportes.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ESPN\ Deportes_ /var/tmp/ESPN\ Deportes.plist;
	 mv /var/tmp/ESPN\ Deportes.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ESPN\ Deportes \n' > /var/tmp/ESPN\ Deportes_;

# copy new exec file to proper location
find /User/Applications/*/ESPN\ Deportes.app -type f -name "ESPN\ Deportes" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ESPN\ Deportes_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPN Deportes END

# ESPNMediaZone START
if [ ! -f /User/Applications/*/ESPNMediaZone.app/ESPNMediaZone_ ]
	then
	 find /User/Applications/*/ESPNMediaZone.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/ESPNMediaZone.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value ESPNMediaZone_ /var/tmp/ESPNMediaZone.plist;
	 mv /var/tmp/ESPNMediaZone.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/ESPNMediaZone \n' > /var/tmp/ESPNMediaZone_;

# copy new exec file to proper location
find /User/Applications/*/ESPNMediaZone.app -type f -name "ESPNMediaZone" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/ESPNMediaZone_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# ESPNMediaZone END

# MapMadness START
if [ ! -f /User/Applications/*/MapMadness.app/MapMadness_ ]
	then
	 find /User/Applications/*/MapMadness.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/MapMadness.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value MapMadness_ /var/tmp/MapMadness.plist;
	 mv /var/tmp/MapMadness.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/MapMadness \n' > /var/tmp/MapMadness_;

# copy new exec file to proper location
find /User/Applications/*/MapMadness.app -type f -name "MapMadness" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/MapMadness_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# MapMadness END

# BowlBound START
if [ ! -f /User/Applications/*/BowlBound.app/BowlBound_ ]
	then
	 find /User/Applications/*/BowlBound.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/BowlBound.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value BowlBound_ /var/tmp/BowlBound.plist;
	 mv /var/tmp/BowlBound.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/BowlBound \n' > /var/tmp/BowlBound_;

# copy new exec file to proper location
find /User/Applications/*/BowlBound.app -type f -name "BowlBound" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/BowlBound_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
fi;
# BowlBound END

#################### NO AD SERVER END ####################

#################### NO AD SERVER but INCL ADS START ####################

# DraftKit2010 START
if [ ! -f /User/Applications/*/DraftKit2010.app/DraftKit2010_ ]
	then
	 find /User/Applications/*/DraftKit2010.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/DraftKit2010.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value DraftKit2010_ /var/tmp/DraftKit2010.plist;
	 mv /var/tmp/DraftKit2010.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/DraftKit2010 \n' > /var/tmp/DraftKit2010_;

# copy new exec file to proper location
find /User/Applications/*/DraftKit2010.app -type f -name "DraftKit2010" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/DraftKit2010_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
find /User/Applications/*/DraftKit2010.app -type f -name "samplead.png" | while read FILENAME; do NEWNAME=${FILENAME%.*}.bak; mv ${FILENAME} ${NEWNAME}; done
find /User/Applications/*/DraftKit2010.app -type f -name "toptitle.png" | while read FILENAME; do NEWNAME=${FILENAME%.*}.bak; mv ${FILENAME} ${NEWNAME}; done
fi;
# DraftKit2010 END

# FreezeFrame START
if [ ! -f /User/Applications/*/FreezeFrame.app/FreezeFrame_ ]
	then
	 find /User/Applications/*/FreezeFrame.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/FreezeFrame.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value FreezeFrame_ /var/tmp/FreezeFrame.plist;
	 mv /var/tmp/FreezeFrame.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/FreezeFrame \n' > /var/tmp/FreezeFrame_;

# copy new exec file to proper location
find /User/Applications/*/FreezeFrame.app -type f -name "FreezeFrame" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/FreezeFrame_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
find /User/Applications/*/FreezeFrame.app -type d -name "SC_Info" | while read FILENAME; do NEWNAME="${FILENAME/\/FreezeFrame.app\/SC_Info//Documents/_webresources}"; rm -rf "${NEWNAME}";
# create directory with read access only
mkdir "${NEWNAME}"; chmod 555 "${NEWNAME}" ;
done
fi;
# FreezeFrame END

# WC-Trivia START
if [ ! -f /User/Applications/*/WC-Trivia.app/WC-Trivia_ ]
	then
	 find /User/Applications/*/WC-Trivia.app -type f -name "Info.plist" | while read FILENAME; do
	 cp "$FILENAME" /var/tmp/WC-Trivia.plist;
	 # change key value in plist
	 plutil -key CFBundleExecutable -value WC-Trivia_ /var/tmp/WC-Trivia.plist;
	 mv /var/tmp/WC-Trivia.plist "$FILENAME";
done

# create new exec file
printf '#!/bin/bash \n( exec /private/var/mobile/Library/SBSettings/Commands/adblock_espn/espn_killswitch.sh ) \nwhile [ -f /tmp/wait_on_espn_killswitch ] \ndo \necho \"waiting for ESPN KillSwitch to finish\" \ndone \nsudo cp /etc/hosts /tmp/hosts.txt;\n sudo sed -e \"s@\#0.0.0.0 adsatt.espn.go.com@0.0.0.0 adsatt.espn.go.com@ig\" /tmp/hosts.txt > /tmp/hosts.tmp; sudo mv /tmp/hosts.tmp /etc/hosts;\nsudo rm /tmp/hosts.txt; \nPath=$(dirname \"$0\") \nexec \"${Path}\"/WC-Trivia \n' > /var/tmp/WC-Trivia_;

# copy new exec file to proper location
find /User/Applications/*/WC-Trivia.app -type f -name "WC-Trivia" | while read FILENAME; do NEWNAME=${FILENAME}_; mv /var/tmp/WC-Trivia_ "${NEWNAME}"; 
 chown mobile:mobile "$NEWNAME"; 
 chmod 755 "$NEWNAME"; 
done
find /User/Applications/*/WC-Trivia.app -type f -name "bingdownload.png" | while read FILENAME; do NEWNAME=${FILENAME%.*}.bak; mv ${FILENAME} ${NEWNAME}; done
find /User/Applications/*/WC-Trivia.app -type f -name "bingsplash.png" | while read FILENAME; do NEWNAME=${FILENAME%.*}.bak; mv ${FILENAME} ${NEWNAME}; done
find /User/Applications/*/WC-Trivia.app -type f -name "logo_fifa.png" | while read FILENAME; do NEWNAME=${FILENAME%.*}.bak; mv ${FILENAME} ${NEWNAME}; done
fi;
# WC-Trivia END

#################### NO AD SERVER but INCL ADS END ####################
rm /tmp/wait_on_espn;
