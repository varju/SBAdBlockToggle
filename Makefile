messages=yes

include theos/makefiles/common.mk

LIBRARY_NAME = Toggle
Toggle_FILES = Toggle.mm
Toggle_INSTALL_PATH = /var/mobile/Library/SBSettings/Toggles/sbadblocktoggle1

include $(THEOS_MAKE_PATH)/library.mk
