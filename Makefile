# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# This value defines which base this project should choose, only for baidu internal.
# Support values: S710, JRD77SS, YINS, YIGN
#-----------------------------------------------------------------------------
BAIDU_BASE_DEVICE := N909

##############################################################################
# This value define to trigger server to build timely and daily
# if you want to enable server build, set BAIDU_SERVER_BUILD := true
# ----------------------------------------------------------------------------
BAIDU_SERVER_BUILD_ENABLE := true

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# Default DENSITY setting is hdpi
# this depends on the device's resolution
#-----------------------------------------------------------------------------
DENSITY := xhdpi

##############################################################################
# Default RESOLUTION setting is nothing
# this used to config the bootanimation
#-----------------------------------------------------------------------------
RESOLUTION := 720x1280

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# vendor_modify_images := boot recovery
# boot/recovery, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, check boot.img/recovery.img in project root directory, if it exists,
# use a prebuilt boot.img/recovery.img, if not, nothing to do
#-----------------------------------------------------------------------------
vendor_modify_images := boot

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app preload tts voicebargeindata vsc sipdb

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_files := etc/PowerOn.wav media/audio/ui/PowerOn.ogg media/bootsamsung.qmg media/bootsamsungloop.qmg media/video/shutdown/shutdown.qmg media/video/AndroidInSpace.240p.mp4 media/video/Sunset.240p.mp4

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := BluetoothAvrcp BluetoothMap BluetoothTest SecBluetooth MtpApplication

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := SamsungCamera Stk

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework services framework2 twframework

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
#baidu_saved_files := bin/bootanimation fonts/Clockopia.ttf

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
baidu_remove_apps := BaiduCamera

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone Settings HomePro BaiduGallery3D

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy framework-yi

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# property to show/hide feature of defaultWrite Settings
override_property += \
	ro.product.device.alias=n7108,GT-N7108 \
        ro.baidu.home.wakeup=true \
        persist.sys.baidu.default_write=first_storage \
        ro.baidu.2nd_storage.format=enable \
        ro.camera.sound.forced=0

override_property += \
    phone_book_index_supported=false



# properties from cust.img


##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
remove_property += \
        ro.operator.optr \
        ro.operator.spec \
        ro.operator.seg


##############################################################################
# if NOT_CUSTOM_FRAMEWORK-RES is true, when build framework-res, the custom_app.sh will not be called!
# becarefull if you want to config this
# add this config just because sometimes apktool may failed to build framework-res after call custom_app.sh
#-----------------------------------------------------------------------------
# add for BaiduUpdate to reboot to recovery

include $(PORT_BUILD)/main.mk
