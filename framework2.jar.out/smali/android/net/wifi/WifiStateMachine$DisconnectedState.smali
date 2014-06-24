.class Landroid/net/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mAlarmEnabled:Z

.field private mFrameworkScanIntervalMs:J

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 5164
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 5165
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mAlarmEnabled:Z

    return-void
.end method

.method private setScanAlarm(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 5173
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5192
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5193
    :cond_0
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5195
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_framework_scan_interval_ms"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$16300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanIntervalMs:J

    .line 5203
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5210
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5211
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 5227
    :cond_1
    :goto_0
    return-void

    .line 5214
    :cond_2
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5321
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5322
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 5324
    :cond_0
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    .line 5325
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const v8, 0x20058

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5230
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5231
    :cond_0
    const/4 v1, 0x1

    .line 5232
    .local v1, ret:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 5313
    const/4 v1, 0x0

    .line 5315
    :cond_1
    :goto_0
    :sswitch_0
    return v1

    .line 5234
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$16400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 5236
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x20047

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 5237
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$16404(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v4, v8, v6, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 5246
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$16404(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v4, v8, v6, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 5248
    const/4 v1, 0x0

    .line 5249
    goto :goto_0

    .line 5251
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 5252
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 5254
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 5255
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$6502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5256
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$16500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 5260
    :sswitch_4
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$1902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5261
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5262
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 5263
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v5

    .line 5260
    goto :goto_1

    .line 5265
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 5266
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->setScanAlarm(Z)V

    goto/16 :goto_0

    .line 5273
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/StateChangeResult;

    .line 5274
    .local v2, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, v2, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 5276
    const/4 v1, 0x0

    .line 5277
    goto/16 :goto_0

    .line 5280
    .end local v2           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5281
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 5284
    :cond_4
    const/4 v1, 0x0

    .line 5285
    goto/16 :goto_0

    .line 5288
    :sswitch_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5289
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 5292
    :cond_5
    const/4 v1, 0x0

    .line 5293
    goto/16 :goto_0

    .line 5296
    :sswitch_8
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SHOW_EAP_MESSAGE_DIALOG, message.obj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    sget-boolean v3, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    if-eqz v3, :cond_6

    .line 5298
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$14700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$WifiMobility;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->handleEAP(Ljava/lang/String;)V

    .line 5300
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5301
    .local v0, eapIntent:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5302
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DisconnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$14800(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 5310
    const/4 v1, 0x0

    .line 5311
    goto/16 :goto_0

    .line 5232
    nop

    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_3
        0x20058 -> :sswitch_1
        0x2005b -> :sswitch_4
        0x2007c -> :sswitch_8
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_5
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
