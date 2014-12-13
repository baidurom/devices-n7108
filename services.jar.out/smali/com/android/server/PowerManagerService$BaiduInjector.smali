.class Lcom/android/server/PowerManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;
    }
.end annotation


# static fields
.field static pservice:Lcom/android/server/PowerManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3739
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3753
    return-void
.end method

.method static regitsterBaiduSettingsObserver(Lcom/android/server/PowerManagerService;)V
    .locals 4
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    .line 3742
    sput-object p0, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    .line 3743
    sget-object v2, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3744
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;

    sget-object v2, Lcom/android/server/PowerManagerService$BaiduInjector;->pservice:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;-><init>(Landroid/os/Handler;)V

    .line 3745
    .local v0, observer:Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;
    const-string v2, "auto_brightness_coe"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3747
    const-string v2, "button_light_off"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3749
    #calls: Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->updateButtonLightLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->access$invoke-updateButtonLightLocked-c45330(Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;)V

    .line 3750
    #calls: Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->updateLcdBrightnessLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;->access$invoke-updateLcdBrightnessLocked-e01244(Lcom/android/server/PowerManagerService$BaiduInjector$BaiduSettingsObserver;)V

    .line 3751
    return-void
.end method
