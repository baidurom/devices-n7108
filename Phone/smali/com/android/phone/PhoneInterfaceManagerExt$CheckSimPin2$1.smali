.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 693
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 694
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 706
    :goto_0
    return-void

    .line 696
    :pswitch_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "SUPPLY_PIN_COMPLETE"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    monitor-enter v2

    .line 698
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mResult:Z
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->access$902(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;Z)Z

    .line 699
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->access$1002(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;Z)Z

    .line 700
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2$1;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 701
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 698
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 694
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
