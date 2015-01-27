.class Lcom/android/server/pm/ShutdownThread$BaiduInjector$1NegativeClickListener;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread$BaiduInjector;->showBaiduShutdownOrRebootDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NegativeClickListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->access$sput-mReboot-f45f2d(Z)Z

    .line 234
    return-void
.end method
