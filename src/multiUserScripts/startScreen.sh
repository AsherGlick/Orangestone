#! /bin/sh
if [ -z $( sudo -u minecraft find /var/run/screen/S-minecraft/ -regex ".*minecraft" ) ]
then
	sudo -u minecraft screen -dmS minecraft -p 0
	sudo -u minecraft screen -x minecraft -p 0 -X multiuser on
	sudo -u minecraft screen -x minecraft -p 0 -X acladd asher
	sudo -u minecraft screen -x minecraft -p 0 -X acladd feygrove
	RET=$(echo "\r")
	sudo -u minecraft screen -x minecraft -p 0 -X stuff "cd /home/minecraft/minecraft$RET"
	sudo -u minecraft screen -x minecraft -p 0 -X stuff "java -Xmx2G -Xms2G -jar craftbukkit.jar nogui;exit$RET"
else
	echo "There is allready a minecraft server running allready. Stop the server to start another"
fi
