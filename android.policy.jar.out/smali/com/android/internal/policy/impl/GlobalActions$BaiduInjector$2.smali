.class final Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$2;
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
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1061
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mScreenshotLock-0429bb()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1062
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mScreenshotConnection-22a399()Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mGlobalActions-a61d42()Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sget-mScreenshotConnection-22a399()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1064
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$sput-mScreenshotConnection-a527ce(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 1066
    :cond_0
    monitor-exit v1

    .line 1067
    return-void

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
