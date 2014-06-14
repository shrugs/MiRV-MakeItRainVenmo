export THEOS_DEVICE_IP=192.168.

include theos/makefiles/common.mk

TWEAK_NAME = MiRV
MiRV_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Venmo.app"
