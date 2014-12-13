.class final Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$4;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->addScreenShotMenu(Lcom/android/internal/policy/impl/GlobalActions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 4

    .prologue
    .line 1125
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mGlobalActions-a61d42()Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1127
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mScreenshotHandler-c6f3d5()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mTakeScreenshot-23ebe4()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1128
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x1

    return v0
.end method
