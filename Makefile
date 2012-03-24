messages=yes
FW_DEVICE_IP=ipad

include theos/makefiles/common.mk

LIBRARY_NAME = Toggle
Toggle_FILES = Toggle.mm
Toggle_INSTALL_PATH = /var/mobile/Library/SBSettings/Toggles/AdBlock

include $(THEOS_MAKE_PATH)/library.mk
