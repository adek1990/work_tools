###########################################################################
#
# MODULE:             Eyesight - Makefile
#
# REVISION:           $Revision: 1.0 $
#
# DATED:              $Date: 2015-10-1 11:16:28 +0000 $
#
# AUTHOR:             PCT
#
###########################################################################
#
# Copyright Tonly B.V. 2015. All rights reserved
#
###########################################################################
TARGET=xSwipe
.PHONY: all clean distclean depends_app test install

default:all

install:
	sudo cp -rf $(TARGET) /usr/local/
	sudo install $(TARGET).sh /etc/init.d/
	cd /etc/init.d; sudo sysv-rc-conf $(TARGET).sh on

uninstall:
	sudo /etc/init.d/$(TARGET).sh stop
	cd /etc/init.d; sudo sysv-rc-conf $(TARGET).sh off
	sudo rm /etc/init.d/$(TARGET).sh
	sudo rm -rf /usr/local/$(TARGET)
