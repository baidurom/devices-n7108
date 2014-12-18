.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckIccPerso"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt;Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 757
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 748
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mDone:Z

    .line 749
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mResult:Z

    .line 758
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 759
    return-void
.end method

.method static synthetic access$1102(Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mResult:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPerso(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    .line 790
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 792
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 797
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 804
    :try_start_4
    const-class v1, Lcom/android/internal/telephony/IccCard;

    const-string v2, "supplyPerso"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 805
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    .line 812
    :goto_1
    :try_start_5
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_1

    .line 814
    :try_start_6
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 816
    :catch_1
    move-exception v0

    .line 818
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 821
    :cond_1
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mResult:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v0

    .line 809
    :catch_2
    move-exception v0

    goto :goto_1

    .line 808
    :catch_3
    move-exception v0

    goto :goto_1

    .line 807
    :catch_4
    move-exception v0

    goto :goto_1

    .line 806
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 764
    monitor-enter p0

    .line 765
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->mHandler:Landroid/os/Handler;

    .line 783
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 784
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 786
    return-void

    .line 784
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
