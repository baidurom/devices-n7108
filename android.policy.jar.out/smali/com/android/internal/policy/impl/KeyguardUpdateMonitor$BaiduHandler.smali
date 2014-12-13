.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaiduHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 839
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 847
    :goto_0
    return-void

    .line 841
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->handleMultithemLockscreenEnable(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/Integer;)V

    goto :goto_0

    .line 844
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduHandler;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BaiduInjector;->handleStatubarExpandEnable(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 839
    :sswitch_data_0
    .sparse-switch
        0x142 -> :sswitch_0
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
