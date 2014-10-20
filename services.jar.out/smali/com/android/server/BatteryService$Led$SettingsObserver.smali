.class Lcom/android/server/BatteryService$Led$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mInnerBatteryFullARGB:I

.field private mInnerBatteryLowARGB:I

.field private mInnerBatteryMediumARGB:I

.field private mInnerLedPulseEnabled:Z

.field private mInnerLightEnabled:Z

.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .locals 1
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    .line 889
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 890
    return-void
.end method

.method static synthetic access$invoke-updateLightPulse-fe2949(Lcom/android/server/BatteryService$Led$SettingsObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightPulse()Z

    move-result v0

    return v0
.end method

.method private updateLightProperties()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 931
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v2, v2, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 932
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v2, v2, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 935
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "battery_light_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLightEnabled:Z

    .line 939
    const-string v2, "battery_light_pulse"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLedPulseEnabled:Z

    .line 943
    const-string v2, "battery_light_low_color"

    const v3, #integer@config_notificationsBatteryLowARGB#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryLowARGB:I

    .line 946
    const-string v2, "battery_light_medium_color"

    const v3, #integer@config_notificationsBatteryMediumARGB#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryMediumARGB:I

    .line 949
    const-string v2, "battery_light_full_color"

    const v3, #integer@config_notificationsBatteryFullARGB#t

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryFullARGB:I

    .line 952
    return-void

    :cond_0
    move v2, v4

    .line 935
    goto :goto_0

    :cond_1
    move v3, v4

    .line 939
    goto :goto_1
.end method

.method private updateLightPulse()Z
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 955
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v2, v2, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 956
    .local v0, level:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v2, v2, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 958
    .local v1, status:I
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLightEnabled:Z

    if-nez v2, :cond_0

    .line 960
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 987
    :goto_0
    return v6

    .line 961
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v2, v2, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 962
    if-ne v1, v3, :cond_1

    .line 964
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 965
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerLedPulseEnabled:Z

    if-eqz v2, :cond_2

    .line 967
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryLowARGB:I

    iget-object v4, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I
    invoke-static {v4}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLedOn-1d5160(Lcom/android/server/BatteryService$Led;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I
    invoke-static {v5}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLedOff-cc2be1(Lcom/android/server/BatteryService$Led;)I

    move-result v5

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 971
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 973
    :cond_3
    if-eq v1, v3, :cond_4

    if-ne v1, v4, :cond_7

    .line 975
    :cond_4
    if-eq v1, v4, :cond_5

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_6

    .line 977
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 980
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->mInnerBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 984
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    #getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/BatteryService$Led;->access$iget-mBatteryLight-61288f(Lcom/android/server/BatteryService$Led;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0
.end method

.method private updateLights()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightProperties()V

    .line 927
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLightPulse()Z

    .line 928
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 896
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$SettingsObserver;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v1, v1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 899
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "battery_light_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 903
    const-string v1, "battery_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 907
    const-string v1, "battery_light_low_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 909
    const-string v1, "battery_light_medium_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 911
    const-string v1, "battery_light_full_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 914
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLights()V

    .line 915
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led$SettingsObserver;->updateLights()V

    .line 920
    return-void
.end method
