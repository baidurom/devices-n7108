.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field public static final MSG_MULTITHEME_LOCKSREEN_ENABLE:I = 0x142

.field public static final MSG_STATUSBAR_LOCKSREEN_ENABLE:I = 0x1f5

.field public static mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private static mStatusBarExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultithemLockscreen(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 4
    .parameter "keyguardUpdateMonitor"

    .prologue
    .line 965
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.lockmode_type"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleMultithemLockscreenEnable(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/Integer;)V
    .locals 6
    .parameter "keyguardUpdateMonitor"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 922
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi-theme LockScreen: handleMultithemLockscreenEnalbe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 925
    invoke-static {}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setWallpaperChange()V

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v1, :cond_2

    .line 928
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/LockScreenElement;->clearElement()V

    .line 929
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 931
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 933
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 934
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 935
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 936
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    const-wide/16 v3, 0xb

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 938
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 940
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->getMultithemLockscreen(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 942
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 943
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 944
    invoke-static {p0, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->setMultiThemeLockScreen(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)V

    goto :goto_0

    .line 946
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->getMultithemLockscreen(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 948
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 949
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 950
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 951
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 953
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->setMultiThemeLockScreen(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)V

    goto :goto_0

    .line 954
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 956
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 957
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 958
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 959
    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->setMultiThemeLockScreen(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0
.end method

.method public static handleStatubarExpandEnable(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "keyguardUpdateMonitor"
    .parameter "state"

    .prologue
    .line 914
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mStatusBarExpand:Z

    .line 915
    return-void
.end method

.method public static holdPersistData(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/baidu/themeanimation/element/LockScreenElement;)V
    .locals 0
    .parameter "keyguardUpdateMonitor"
    .parameter "element"

    .prologue
    .line 976
    sput-object p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 977
    return-void
.end method

.method public static initExtParams(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 3
    .parameter "keyguardUpdateMonitor"

    .prologue
    const/4 v0, 0x0

    .line 894
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBaiduHandler:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$iput-mBaiduHandler-7179d3(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;

    .line 895
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduBroadcastReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBaiduBroadcastReceiver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduBroadcastReceiver;
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$iput-mBaiduBroadcastReceiver-c2c5db(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduBroadcastReceiver;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduBroadcastReceiver;

    .line 897
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_expand_lockscreen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mStatusBarExpand:Z

    .line 898
    return-void
.end method

.method public static isStatusBarExpandEnable(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "keyguardUpdateMonitor"

    .prologue
    .line 918
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->mStatusBarExpand:Z

    return v0
.end method

.method public static registerBaiduReceiver(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/IntentFilter;)V
    .locals 2
    .parameter "keyguardUpdateMonitor"
    .parameter "filter"

    .prologue
    .line 901
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    .line 903
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 904
    const-string v1, "com.baidu.lockscreen.syncdone"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    const-string v1, "theme.lockscreen.action.apply_theme"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 906
    const-string v1, "theme.lockscreen.action.reduce_theme"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    const-string v1, "com.baidu.lockscreen.action.reduce_theme_settings"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 908
    const-string v1, "theme.lockscreen.action.apply_theme_water"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    const-string v1, "com.baidu.lockscreen.statusbar.expand"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBaiduBroadcastReceiver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduBroadcastReceiver;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$iget-mBaiduBroadcastReceiver-b531d5(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 911
    return-void
.end method

.method private static setMultiThemeLockScreen(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)V
    .locals 4
    .parameter "keyguardUpdateMonitor"
    .parameter "bMulti"

    .prologue
    .line 970
    invoke-static {}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->getDefaultLockMode()J

    move-result-wide v0

    .line 971
    .local v0, defaultLockMode:J
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.lockmode_type"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2

    .end local v0           #defaultLockMode:J
    :cond_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 973
    return-void
.end method
