.class Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManagerBaidu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mHardwareKeyLongPressUri:Landroid/net/Uri;

.field mLongPressPowerWhenLockUri:Landroid/net/Uri;

.field mVolumeRevokeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;

    .line 266
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 267
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mContext:Landroid/content/Context;

    .line 268
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mLongPressPowerWhenLockUri:Landroid/net/Uri;

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;

    const-string v4, "disable_power_menu_when_lock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v1, :cond_1

    :goto_0
    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->access$iput-isEnablePowerLongPressWhenLock-6099bd(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Z)Z

    .line 299
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 293
    goto :goto_0

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mVolumeRevokeUri:Landroid/net/Uri;

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;

    const-string v4, "volume_revoke"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_3

    :goto_2
    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->access$iput-isEnableVolumeRevoke-ae1390(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Z)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 296
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mHardwareKeyLongPressUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/util/ButtonHelper;->getHardwareKeyLongPressAction(Landroid/content/Context;)[Lcom/android/internal/util/ButtonHelper$Action;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->access$iput-mHardwareKeyLongPressActions-c13565(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;[Lcom/android/internal/util/ButtonHelper$Action;)[Lcom/android/internal/util/ButtonHelper$Action;

    goto :goto_1
.end method

.method startObserving(Z)V
    .locals 3
    .parameter "hasHardKey"

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "disable_power_menu_when_lock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mLongPressPowerWhenLockUri:Landroid/net/Uri;

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mLongPressPowerWhenLockUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    const-string v1, "volume_revoke"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mVolumeRevokeUri:Landroid/net/Uri;

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mVolumeRevokeUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    sget-object v1, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mHardwareKeyLongPressUri:Landroid/net/Uri;

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mHardwareKeyLongPressUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 283
    :cond_0
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    return-void
.end method
