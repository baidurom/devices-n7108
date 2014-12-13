.class Lcom/android/server/NotificationManagerService$BaiduLedInjector;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduLedInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;
    }
.end annotation


# static fields
.field private static mNotificationPulseCustomLedValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageNameMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    .line 1754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mPackageNameMappings:Ljava/util/Map;

    .line 1755
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    return-void
.end method

.method static synthetic access$sget-mNotificationPulseCustomLedValues-488415()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1742
    sget-object v0, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static getLedValuesForNotification(Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;
    .locals 2
    .parameter "ledNotification"

    .prologue
    .line 1802
    sget-object v0, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mapPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;

    return-object v0
.end method

.method private static mapPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1806
    sget-object v0, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mPackageNameMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1809
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    sget-object v0, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mPackageNameMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    goto :goto_0
.end method

.method static parseNotificationPulseCustomValuesString(Ljava/lang/String;)V
    .locals 15
    .parameter "customLedValuesString"

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1771
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1799
    :cond_0
    return-void

    .line 1775
    :cond_1
    const-string v9, "\\|"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 1776
    .local v7, packageValuesString:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1777
    .local v6, packageValues:[Ljava/lang/String;
    array-length v9, v6

    if-eq v9, v14, :cond_2

    .line 1778
    const-string v9, "NotificationService"

    const-string v10, "Error parsing custom led values for unknown package"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1781
    :cond_2
    aget-object v5, v6, v13

    .line 1782
    .local v5, packageName:Ljava/lang/String;
    aget-object v9, v6, v12

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1783
    .local v8, values:[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    .line 1784
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing custom led values \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1787
    :cond_3
    new-instance v3, Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;

    invoke-direct {v3}, Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;-><init>()V

    .line 1789
    .local v3, ledValues:Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;->color:I

    .line 1790
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;->onMS:I

    .line 1791
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/NotificationManagerService$BaiduLedInjector$NotificationLedValues;->offMS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    sget-object v9, Lcom/android/server/NotificationManagerService$BaiduLedInjector;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1792
    :catch_0
    move-exception v1

    .line 1793
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing custom led values \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static registerContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "resolver"
    .parameter "observer"

    .prologue
    const/4 v1, 0x0

    .line 1758
    const-string v0, "notification_light_pulse_default_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1760
    const-string v0, "notification_light_pulse_default_led_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1762
    const-string v0, "notification_light_pulse_default_led_off"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1764
    const-string v0, "notification_light_pulse_custom_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1766
    const-string v0, "notification_light_pulse_custom_values"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1768
    return-void
.end method
