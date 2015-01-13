
jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
	echo ">>> in custom_jar $jarBaseName"
        find $tempSmaliDir -name "BaiduTelephonyManager\.smali" | xargs sed -i 's#Lcom/android/internal/telephony/uicc/IccUtils#Lcom/android/internal/telephony/IccUtils#g'

elif [ "$jarBaseName" = "framework-yi" ];then
        echo ">>> in custom_jar $jarBaseName"
        find $tempSmaliDir -name "BaiduTelephonyManager\.smali" | xargs sed -i 's#Lcom/android/internal/telephony/uicc/IccUtils#Lcom/android/internal/telephony/IccUtils#g'
fi
