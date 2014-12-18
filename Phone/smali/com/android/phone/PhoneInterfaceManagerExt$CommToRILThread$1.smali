.class Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1104
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1134
    :goto_0
    return-void

    .line 1106
    :pswitch_0
    const-string v4, "PhoneInterfaceManagerExt"

    const-string v5, "[EVENT_GET_RIL_INFO]"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    monitor-enter v5

    .line 1109
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->access$1300(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;)Lcom/samsung/android/sec_platform_library/FactoryPhone;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1110
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "error"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1111
    .local v3, error:I
    if-eqz v3, :cond_0

    .line 1112
    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AsyncResult exception occur!!! - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const-string v6, ""

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->access$1402(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;

    .line 1127
    .end local v3           #error:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/4 v6, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->access$1502(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Z)Z

    .line 1128
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1129
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1115
    .restart local v3       #error:I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "response"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    check-cast v2, [B

    .line 1116
    .local v2, buf:[B
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->access$1402(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1119
    .end local v2           #buf:[B
    .end local v3           #error:I
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1120
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1121
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 1122
    .restart local v2       #buf:[B
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->access$1402(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1124
    .end local v2           #buf:[B
    :cond_2
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->access$1402(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
