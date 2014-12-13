.class final Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService$BaiduInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BaiduSettingsObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 3755
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3756
    return-void
.end method

.method static synthetic access$invoke-updateButtonLightLocked-c45330(Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3753
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->updateButtonLightLocked()V

    return-void
.end method

.method static synthetic access$invoke-updateLcdBrightnessLocked-e01244(Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3753
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->updateLcdBrightnessLocked()V

    return-void
.end method

.method private updateButtonLightLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3768
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_light_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3770
    .local v0, buttonLightOff:I
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtonLight, buttonLightOff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3772
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 3773
    :try_start_0
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3774
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    const/4 v3, -0x5

    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$iput-mPowerState-ef31dc(Lcom/android/server/PowerManagerService;I)I

    .line 3775
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    const/4 v3, -0x5

    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$iput-mUserState-660a4d(Lcom/android/server/PowerManagerService;I)I

    .line 3776
    monitor-exit v2

    .line 3778
    :cond_0
    return-void

    .line 3776
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLcdBrightnessLocked()V
    .locals 4

    .prologue
    .line 3781
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 3783
    :try_start_0
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;)F

    move-result v1

    float-to-int v0, v1

    .line 3784
    .local v0, value:I
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    const/high16 v3, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$3802(Lcom/android/server/PowerManagerService;F)F

    .line 3785
    sget-object v1, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V
    invoke-static {v1, v0, v3}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;IZ)V

    .line 3786
    monitor-exit v2

    .line 3787
    return-void

    .line 3786
    .end local v0           #value:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 3760
    const-string v0, "auto_brightness_coe"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3761
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->updateLcdBrightnessLocked()V

    .line 3765
    :cond_0
    :goto_0
    return-void

    .line 3762
    :cond_1
    const-string v0, "button_light_off"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3763
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->updateButtonLightLocked()V

    goto :goto_0
.end method
