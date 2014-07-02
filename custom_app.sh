
apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
	echo ">>> in custom_app $apkBaseName"
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/%%//g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/ %[ )\%]/ /g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/\(%[0-9]\$[ds]\)%/\1/g'
	find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'

elif [ "$apkBaseName" = "Settings" ];then
        echo ">>> in custom_app $apkBaseName"
	find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'

elif [ "$apkBaseName" = "HomePro" ];then
	echo ">>> in custom_app $apkBaseName"
	sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.sec.android.app.camera.Camera" packageName="com.sec.android.app.camera"/g' $tempSmaliDir/res/xml-xhdpi/default_workspace.xml
     
fi

