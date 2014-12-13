.class public Lcom/android/server/am/BaiduBroadcastInjector;
.super Ljava/lang/Object;
.source "BaiduBroadcastInjector.java"


# static fields
.field static final SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

.field static final SPECIAL_SMS_PACKAGE_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.trafficmonitor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.antidisturbance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V
    .locals 14
    .parameter "context"
    .parameter "record"

    .prologue
    const/4 v13, 0x0

    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v10, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    sget v10, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    new-array v9, v10, [Ljava/util/ArrayList;

    .local v9, specialPackageIndex:[Ljava/util/ArrayList;
    sget v10, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    new-array v1, v10, [Z

    .local v1, containsSpecial:[Z
    sget v10, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    add-int/lit8 v2, v10, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    aput-boolean v13, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v10, :cond_3

    .end local v1           #containsSpecial:[Z
    .end local v2           #i:I
    .end local v9           #specialPackageIndex:[Ljava/util/ArrayList;
    :cond_2
    return-void

    .restart local v1       #containsSpecial:[Z
    .restart local v2       #i:I
    .restart local v9       #specialPackageIndex:[Ljava/util/ArrayList;
    :cond_3
    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .local v5, len:I
    const/4 v3, -0x1

    .local v3, index:I
    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_9

    const/4 v3, -0x1

    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .local v8, r:Ljava/lang/Object;
    instance-of v10, v8, Lcom/android/server/am/BroadcastFilter;

    if-eqz v10, :cond_7

    move-object v4, v8

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .local v4, info:Lcom/android/server/am/BroadcastFilter;
    iget-object v10, v4, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .end local v4           #info:Lcom/android/server/am/BroadcastFilter;
    :cond_4
    :goto_2
    const/4 v10, -0x1

    if-le v3, v10, :cond_6

    const/4 v10, 0x1

    aput-boolean v10, v1, v3

    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    aget-object v6, v9, v3

    .local v6, list:Ljava/util/ArrayList;
    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #list:Ljava/util/ArrayList;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6       #list:Ljava/util/ArrayList;
    aput-object v6, v9, v3

    :cond_5
    aget-object v10, v9, v3

    invoke-virtual {v10, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v6           #list:Ljava/util/ArrayList;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    instance-of v10, v8, Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_4

    move-object v4, v8

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_8

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v7, packageName:Ljava/lang/String;
    :goto_3
    invoke-static {p0, v7}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .end local v7           #packageName:Ljava/lang/String;
    :cond_8
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #r:Ljava/lang/Object;
    :cond_9
    const-string v10, "com.baidu.antidisturbance"

    invoke-static {p0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    aget-boolean v10, v1, v10

    if-nez v10, :cond_a

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.baidu.antidisturbance"

    const-string v12, "com.baidu.antidisturbance.receiver.DisturbReceiver"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v9, v0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->tryAddSpecial(Landroid/content/Context;[Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ComponentName;)V

    :cond_a
    const-string v10, "com.baidu.trafficmonitor"

    invoke-static {p0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    aget-boolean v10, v1, v10

    if-nez v10, :cond_b

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.baidu.trafficmonitor"

    const-string v12, "com.baidu.trafficmonitor.receiver.TrafficMonitorReceiver"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v9, v0, v10}, Lcom/android/server/am/BaiduBroadcastInjector;->tryAddSpecial(Landroid/content/Context;[Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ComponentName;)V

    :cond_b
    sget v5, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    add-int/lit8 v2, v5, -0x1

    :goto_4
    if-ltz v2, :cond_2

    aget-object v6, v9, v2

    .restart local v6       #list:Ljava/util/ArrayList;
    if-eqz v6, :cond_c

    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v13, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method static isSpecialPackage(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"

    .prologue
    .line 36
    sget v1, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    .line 37
    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 38
    sget-object v2, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    .end local v0           #i:I
    :goto_1
    return v0

    .line 37
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static tryHookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V
    .locals 0
    .parameter "context"
    .parameter "record"

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/am/BaiduBroadcastInjector;->hookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method static isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v1, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    sget-object v4, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.android.contacts"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "system.mms"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .local v2, mmsHasPriority:Z
    :cond_0
    if-eqz v2, :cond_2

    .end local v0           #i:I
    .end local v2           #mmsHasPriority:Z
    :cond_1
    :goto_1
    return v0

    .restart local v0       #i:I
    .restart local v2       #mmsHasPriority:Z
    :cond_2
    move v0, v3

    goto :goto_1

    .end local v2           #mmsHasPriority:Z
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private static tryAddSpecial(Landroid/content/Context;[Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 10
    .parameter "context"
    .parameter "specialPackageIndex"
    .parameter "action"
    .parameter "component"

    .prologue
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    .local v1, index:I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x400

    const/4 v9, 0x0

    invoke-interface {v6, v2, v7, v8, v9}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .local v4, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    aget-object v3, p1, v1

    .local v3, list:Ljava/util/ArrayList;
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3       #list:Ljava/util/ArrayList;
    aput-object v3, p1, v1

    :cond_2
    aget-object v6, p1, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/ArrayList;
    .end local v4           #resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    :cond_3
    return-void
.end method
