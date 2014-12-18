# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# The value decides which base device should choose for patchall and upgrade.
# You can configure the property according to your device.
# The default value is base.
# Support values: base, base_cm, base_mt6592 and other devices in the future.
#-----------------------------------------------------------------------------
#BASE := base_cm

##############################################################################
# The value is used for resource adapter with the aapt tool.
# It depends on the device's resolution.
# The default value is hdpi.
#-----------------------------------------------------------------------------
DENSITY := xhdpi

##############################################################################
# The value is used to config the bootanimation.
# It depends on the device's resolution, such as 480x854, 540x960, 720x1280, 1080x1920.
# The default value is nothing.
#-----------------------------------------------------------------------------
RESOLUTION := 720x1280

##############################################################################
# The value decides whether use prebuilt image or pack from the BOOT or RECOVERY directory in the vendor directory.
# Support values: boot, recovery or nothing.
# The default value is nothing.
# When the value is boot or recovery, the system of build will pack boot.img or recovery.img
# from the BOOT or vendor RECOVERY in the vendor directory which might contain your changes.
# When the value is nothing, the system of build will check boot.img or recovery.img in the project root directory.
# If the boot.img or recovery.img exists, the system of build will use a prebuilt boot.img or recovery.img.
# If the boot.img or recovery.img doesn't exists, the system of build will do nothing.
#-----------------------------------------------------------------------------
vendor_modify_images := boot

##############################################################################
# The value decides the directory which you want to remove in the vendor directory for the ota package.
# The default value is app or pri-app which not need to configure.
# You can configure the directory name which relative to the vendor/system directory.
#-----------------------------------------------------------------------------
vendor_remove_dirs := preload tts voicebargeindata vsc sipdb

##############################################################################
# The value decides the file which you want to remove in the vendor directory for the ota package.
# The default value is nothing.
# You can configure the file name which relative to the vendor/system directory.
#-----------------------------------------------------------------------------
vendor_remove_files := etc/PowerOn.wav media/audio/ui/PowerOn.ogg media/bootsamsung.qmg media/bootsamsungloop.qmg media/video/shutdown/shutdown.qmg media/video/AndroidInSpace.240p.mp4 media/video/Sunset.240p.mp4

##############################################################################
# The value decides the vendor apk which you want to save in the vendor directory for the ota package.
# The default value is Bluetooth.
# You can configure the apk name in the vendor/system/app or vendor/system/pri-app directory.
#-----------------------------------------------------------------------------
vendor_saved_apps := BluetoothAvrcp BluetoothMap BluetoothTest SecBluetooth MtpApplication

##############################################################################
# The value decides which vendor apk you want to modify.
# The modify jar will build from the directory named the vendor apk name in the current project root directory.
# eg: vendor_modify_apps := FMRadio
# You need ro decode FMRadio.apk to the project directory(use apktool d FMRadio.apk) first,
# and then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := SamsungCamera Stk

##############################################################################
# The value decides which vendor jar you want to modify.
# The modify jar will build from the *.jar.out directory in the current project root directory.
# eg: vendor_modify_jars := android.policy
# You need to decode android.policy.jar to the project directory (use apktool d android.policy.jar) first,
# and then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := android.policy framework framework2 pm services

##############################################################################
# The value decides which baidu system directory you want to save.
# The default value is nothing.
# You can configure the baidu system directory path which relative to the system directory in the baidu release.
#-----------------------------------------------------------------------------
#baidu_saved_dirs := media/audio/ui

##############################################################################
# The value decides which baidu system file you want to save.
# The default value is nothing.
# You can configure the baidu system file path which relative to the system directory in the baidu release.
#-----------------------------------------------------------------------------
#baidu_saved_files := lib/libsqlite.so

##############################################################################
# The value decides which baidu system apk you want to remove.
# The default value is nothing.
# You can configure the baidu system apk name in the value.
#-----------------------------------------------------------------------------
baidu_remove_apps := BaiduCamera

##############################################################################
# The value decides which apk you want to modify, when the apk is based on the baidu system apk.
# The default value is Phone.
# You can configure the baidu system apk name in the value.
# You can modify the apk with the smali.part file or other method.
# You may need to check if the apk in the BAIDU_UPDATE_RES_APPS(you can see it in build/configs/baidu_default.mk).
# If in, you may need to change the resource id to "#type@name#t" or "#type@name#a" by the command idtoname.
# The command idtoname how to use: first use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res",
# and then use "idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali"(XXXX is the directory where you decode baidu system apk).
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone Settings HomePro

##############################################################################
# The value decides which jar you want to modify, when the jar is based on the baidu framework jar.
# The default value is nothing.
# You can modify the jar with the smali.part file or other method.
# You may need to check if the jar in the BAIDU_UPDATE_RES_APPS(you can see it in build/configs/baidu_default.mk).
# If in, you may need to change the resource id to "#type@name#t" or "#type@name#a" by the command idtoname.
# The command idtoname how to use: first use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res",
# and then use "idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali"(XXXX is the directory where you decode baidu system jar).
#-----------------------------------------------------------------------------
baidu_modify_jars := framework-yi

##############################################################################
# The value decides which property you will override in the build.prop.
# The default value is nothing.
# You can add the property name in the value from the build.prop.
#-----------------------------------------------------------------------------

# The property decide whether hide the soft mainkeys.
# The default value is 0.
# If 1, hide the soft mainkeys. If 0, display the soft mainkeys.
# You should configure the property according to your device.
#override_property += \
#    qemu.hw.mainkeys=1

# The property decide whether the device support the phone book index in the sim card.
# If true, support the phone book index. If false, don't support the phone book index.
# You should configure the property according to your device.
# In general, most devices support the phone book index, so the property default value is true.
# Becareful about the initial number of index, some devices start from 0, while others start from 1.
override_property += \
    phone_book_index_supported=false

# The property decide your ID on the backend server which statistical data for your device.
# The default value is Coron.
# You should configure the property according to your ID, ie, replace "Coron" with your ID.
#override_property += \
#    ro.baidu.romer=Coron

override_property += \
    ro.product.device.alias=n7108,GT-N7108 \
    ro.baidu.home.wakeup=true \
    persist.sys.baidu.default_write=first_storage \
    ro.baidu.2nd_storage.format=enable \
    ro.camera.sound.forced=0 \
    ro.baidu.led.dev_spec=0x0000000f

##############################################################################
# The value decides which property you will remove from the build.prop.
# The default value is nothing.
# You can add the property name in the value from the build.prop.
#-----------------------------------------------------------------------------
# remove_property += \
#     dev.defaultwallpaper


##############################################################################
# The value decides whether add the assert function which verify the device in the update-script of the ota package.
# The default value is true.
# If you don't need to verify the device, please set it false.
#-----------------------------------------------------------------------------
#RECOVERY_OTA_ASSERT := false

##############################################################################
# The value decides whether create update the recovery.img script in the system/etc/install-recovery.sh.
# The default value is false.
# If you want to update the recovery image when boot-up, please set it true.
#-----------------------------------------------------------------------------
#MAKE_RECOVERY_PATCH := true

##############################################################################
# The value decides whether cut the useless resource for the resolution of your device.
# The default value is true.
# Generally, it will reduce the size of system, but it will also cost much more time to build.
# It can be false, when you use a baidu.zip which is not a full resource package, but has the same resolution with your device.
#-----------------------------------------------------------------------------
#MINI_SYSTEM := false

##############################################################################
# The value decides whether build the system image.
# The default value is true, means that don't build the system image.
# If you want to generate the system.img, please set it false.
#-----------------------------------------------------------------------------
#NO_SYSTEM_IMG := false

##############################################################################
# The value is only used for odex.
# If not, please ignore.
# The default value is 27.
#-----------------------------------------------------------------------------
#DALVIK_VM_BUILD := 28

##############################################################################
# The value decides whether sign for the ota package.
# The default value is true, because some recovery may check the signature of the ota package.
# If your pc's memory is lower than 2GB, you'd better set it false.
#-----------------------------------------------------------------------------
#SIGN_OTA := false

##############################################################################
# The FORMAT_PARAM_NUM is used to define format function's parameters number,
# which was in the META-INF/com/google/android/updater-script.
#
# If FORMAT_PARAM_NUM is 4, the format function may like this:
# format("ext4", "EMMC", "/dev/block/platform/hi_mci.1/by-name/system", "0");
#
# Otherwise if FORMAT_PARAM_NUM is 5:
# format("ext4", "EMMC", "/dev/block/platform/hi_mci.1/by-name/system", "0", "/system");
#-----------------------------------------------------------------------------
# FORMAT_PARAM_NUM := 4


include $(PORT_BUILD)/main.mk
include $(PORT_BUILD)/autopatch.mk
