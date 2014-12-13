.class final Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1052
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mScreenshotLock-0429bb()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1053
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mGlobalActions-a61d42()Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->takeScreenShot(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$invoke-takeScreenShot-e80c68(Landroid/content/Context;)V

    .line 1054
    monitor-exit v1

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
