.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 341
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 343
    .local v2, opcode:I
    packed-switch v2, :pswitch_data_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mIsStartedByUser:Z
    invoke-static {v3, v7}, Lcom/android/stk/StkAppService;->access$302(Lcom/android/stk/StkAppService;Z)Z

    .line 350
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    invoke-static {v3, v8}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 362
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    invoke-static {v3, v0}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v3, v0}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v3, v7}, Lcom/android/stk/StkAppService;->access$702(Lcom/android/stk/StkAppService;Z)Z

    .line 367
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #calls: Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v4, v3}, Lcom/android/stk/StkAppService;->access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v4

    new-instance v5, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v6, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v5, v6, v7, v3}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 375
    .end local v0           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_2
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$900(Lcom/android/stk/StkAppService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    #calls: Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V
    invoke-static {v4, v3}, Lcom/android/stk/StkAppService;->access$1000(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    .line 379
    :cond_3
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->callDelayedMsg()V
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$1100(Lcom/android/stk/StkAppService;)V

    .line 385
    :goto_1
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->responseNeeded:Z
    invoke-static {v3, v7}, Lcom/android/stk/StkAppService;->access$902(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_0

    .line 382
    :cond_4
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v4, 0x0

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v3, v4}, Lcom/android/stk/StkAppService;->access$702(Lcom/android/stk/StkAppService;Z)Z

    goto :goto_1

    .line 388
    :pswitch_3
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$700(Lcom/android/stk/StkAppService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 389
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #setter for: Lcom/android/stk/StkAppService;->mCmdInProgress:Z
    invoke-static {v3, v7}, Lcom/android/stk/StkAppService;->access$702(Lcom/android/stk/StkAppService;Z)Z

    .line 390
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleSessionEnd()V
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$1200(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 392
    :cond_5
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$800(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v8}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 396
    :pswitch_4
    const-string v3, "OP_BOOT_COMPLETED"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v3

    if-nez v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$1300(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 402
    :pswitch_5
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleDelayedCmd()V
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$1400(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_0

    .line 405
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatEventDownload;

    .line 406
    .local v1, event:Lcom/android/internal/telephony/cat/CatEventDownload;
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #calls: Lcom/android/stk/StkAppService;->handleEvent(Lcom/android/internal/telephony/cat/CatEventDownload;)V
    invoke-static {v3, v1}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatEventDownload;)V

    goto/16 :goto_0

    .line 409
    .end local v1           #event:Lcom/android/internal/telephony/cat/CatEventDownload;
    :pswitch_7
    const-string v3, "before ckecking timed release wakeup"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v3, v3, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v3, v3, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 414
    const-string v3, "before timed release wakeup"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v3, v3, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :cond_6
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v3, v3, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v4, v4, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
