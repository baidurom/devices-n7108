.class Lcom/samsung/commonimsservice/SamsungAPCommonService$3;
.super Lcom/sec/android/ims/IMSEventListener;
.source "SamsungAPCommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/commonimsservice/SamsungAPCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;


# direct methods
.method constructor <init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 8
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .parameter "param"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 184
    if-eqz p6, :cond_0

    .line 185
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nPDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getPLettering()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[\nHistoryDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nModify Supported : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getModifyHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 190
    :cond_0
    const/16 v5, 0xa

    if-ne p1, v5, :cond_1

    .line 191
    packed-switch p2, :pswitch_data_0

    .line 218
    :cond_1
    const/16 v5, 0x8

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-ne p1, v5, :cond_70

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallState listener list size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventType recieved["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] call register len ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 226
    sparse-switch p2, :sswitch_data_0

    .line 1309
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "Default case entered"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x1

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 201
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 203
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    if-eqz v3, :cond_4

    .line 205
    if-eqz p5, :cond_5

    .line 206
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 210
    .local v4, str:Ljava/lang/String;
    :goto_2
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 201
    .end local v4           #str:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_5
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_2

    .line 229
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :sswitch_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 230
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 231
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    invoke-interface {v3, p3, p4}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onNetworkTransition(II)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 238
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 241
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 242
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 243
    if-eqz v3, :cond_6

    .line 244
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 245
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 240
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 253
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 256
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 257
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 258
    if-eqz v3, :cond_7

    .line 259
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 260
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 255
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 267
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 270
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 271
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 272
    if-eqz v3, :cond_8

    .line 273
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 274
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 269
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 283
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 285
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 287
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 288
    if-eqz v3, :cond_9

    .line 289
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 290
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 285
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 297
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 300
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 301
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 302
    if-eqz v3, :cond_a

    .line 303
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 304
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 299
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 310
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 312
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 313
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 314
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 315
    if-eqz v3, :cond_b

    .line 316
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 317
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 312
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 324
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v0

    .line 336
    .local v0, callType:I
    if-eqz p5, :cond_d

    .line 337
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 341
    .restart local v4       #str:Ljava/lang/String;
    :goto_a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteURI ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] CallType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 343
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 344
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 345
    if-eqz v3, :cond_c

    .line 346
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 347
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v4, p6, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRinging(ILjava/lang/String;Lcom/sec/android/internal/ims/IIMSParams;I)V

    .line 342
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 339
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_d
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto/16 :goto_a

    .line 356
    .end local v0           #callType:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_8
    if-eqz p5, :cond_f

    .line 357
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 361
    .restart local v4       #str:Ljava/lang/String;
    :goto_c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I

    .line 362
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1002(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 364
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 365
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 366
    if-eqz v3, :cond_e

    .line 367
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 368
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 363
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 359
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_f
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_c

    .line 375
    .end local v4           #str:Ljava/lang/String;
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 377
    if-eqz p5, :cond_11

    .line 378
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 382
    .restart local v4       #str:Ljava/lang/String;
    :goto_e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 383
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 384
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 385
    if-eqz v3, :cond_10

    .line 386
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 387
    const-string v5, "Registration Failed"

    invoke-interface {v3, v4, p3, v5}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 380
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_11
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_e

    .line 395
    .end local v4           #str:Ljava/lang/String;
    :sswitch_a
    if-eqz p5, :cond_13

    .line 396
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 400
    .restart local v4       #str:Ljava/lang/String;
    :goto_10
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 401
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_11
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 402
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 403
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 404
    if-eqz v3, :cond_12

    .line 405
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 406
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 398
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_13
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_10

    .line 414
    .end local v4           #str:Ljava/lang/String;
    :sswitch_b
    if-eqz p5, :cond_15

    .line 415
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 419
    .restart local v4       #str:Ljava/lang/String;
    :goto_12
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 420
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 421
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 422
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 423
    if-eqz v3, :cond_14

    .line 424
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 425
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 417
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_15
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_12

    .line 433
    .end local v4           #str:Ljava/lang/String;
    :sswitch_c
    if-eqz p5, :cond_17

    .line 434
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 438
    .restart local v4       #str:Ljava/lang/String;
    :goto_14
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 439
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_15
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 440
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 441
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 442
    if-eqz v3, :cond_16

    .line 443
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 444
    const/16 v5, -0xc

    const/16 v6, -0xc

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 436
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_17
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_14

    .line 452
    .end local v4           #str:Ljava/lang/String;
    :sswitch_d
    if-eqz p5, :cond_19

    .line 453
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 457
    .restart local v4       #str:Ljava/lang/String;
    :goto_16
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 458
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_17
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 459
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 460
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 461
    if-eqz v3, :cond_18

    .line 462
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 463
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 458
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 455
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_19
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_16

    .line 471
    .end local v4           #str:Ljava/lang/String;
    :sswitch_e
    if-eqz p5, :cond_1b

    .line 472
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 476
    .restart local v4       #str:Ljava/lang/String;
    :goto_18
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 477
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_19
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1c

    .line 478
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 479
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 480
    if-eqz v3, :cond_1a

    .line 481
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 482
    const/4 v5, -0x5

    const/4 v6, -0x5

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 474
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1b
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_18

    .line 485
    .restart local v2       #i:I
    :cond_1c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "203"

    const/4 v7, -0x5

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 181
    .end local v2           #i:I
    .end local v4           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 491
    :sswitch_f
    if-eqz p5, :cond_1e

    .line 492
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 496
    .restart local v4       #str:Ljava/lang/String;
    :goto_1a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 497
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1f

    .line 498
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 499
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 500
    if-eqz v3, :cond_1d

    .line 501
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 502
    const/16 v5, -0x32

    const/16 v6, -0x32

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 494
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1e
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_1a

    .line 505
    .restart local v2       #i:I
    :cond_1f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "206"

    const/16 v7, -0x32

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    .end local v2           #i:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_10
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 511
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 512
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 513
    if-eqz v3, :cond_20

    .line 514
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 515
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRingingBack(I)V

    .line 510
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 522
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_11
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 523
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 524
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 525
    if-eqz v3, :cond_21

    .line 526
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 527
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onEarlyMediaStart(I)V

    .line 522
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 534
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_12
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 535
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 536
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 537
    if-eqz v3, :cond_22

    .line 538
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 539
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->stopAlertTone(I)V

    .line 534
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 546
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_13
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_24

    .line 547
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 548
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 549
    if-eqz v3, :cond_23

    .line 550
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 551
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 546
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 554
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_24
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "307"

    const/16 v7, -0x31

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    .end local v2           #i:I
    :sswitch_14
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_20
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 560
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 561
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 562
    if-eqz v3, :cond_25

    .line 563
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 564
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 559
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 572
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_15
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_21
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 573
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 574
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 575
    if-eqz v3, :cond_26

    .line 576
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 577
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 572
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 584
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_16
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_22
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 585
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 586
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_27

    .line 587
    const/16 v5, -0x1a

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 584
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 594
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_17
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_23
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 595
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 596
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_28

    .line 597
    const/16 v5, -0x1b

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 594
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 604
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_18
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_24
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 605
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 606
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_29

    .line 607
    const/16 v5, -0x1c

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 604
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 614
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_19
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_25
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 615
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 616
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2a

    .line 617
    const/16 v5, -0x1d

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 614
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 624
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_26
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2c

    .line 625
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 626
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2b

    .line 627
    const/16 v5, -0x1e

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 624
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 630
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_2c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "116"

    const/16 v7, -0x1e

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    .end local v2           #i:I
    :sswitch_1b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_27
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2e

    .line 636
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 637
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2d

    .line 638
    const/16 v5, -0x26

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 635
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 641
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "101"

    const/16 v7, -0x26

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 646
    .end local v2           #i:I
    :sswitch_1c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_28
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 647
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 648
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2f

    .line 649
    const/16 v5, -0x1f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 646
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 656
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_29
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 657
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 658
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_30

    .line 659
    const/16 v5, -0x20

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 656
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 666
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 667
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 668
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_31

    .line 669
    const/16 v5, -0xa

    const-string v6, "Network Lost"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 666
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 676
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 677
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 678
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_32

    .line 679
    const/16 v5, 0x19f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 676
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 686
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_20
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 687
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 688
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_33

    .line 689
    const/16 v5, -0x21

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 686
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 696
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_21
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_35

    .line 697
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 698
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_34

    .line 699
    const/16 v5, -0x19

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 696
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 702
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_35
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "303"

    const/16 v7, -0x19

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    .end local v2           #i:I
    :sswitch_22
    const/4 v1, 0x0

    .line 713
    .local v1, errCode:I
    const/16 v5, 0x162

    if-ne p2, v5, :cond_38

    .line 714
    const/16 v1, -0x28

    .line 726
    :cond_36
    :goto_2e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3b

    .line 727
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 728
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_37

    .line 729
    const-string v5, "Call failed"

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 726
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 716
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_38
    const/16 v5, 0x163

    if-ne p2, v5, :cond_39

    .line 717
    const/16 v1, -0x29

    goto :goto_2e

    .line 719
    :cond_39
    const/16 v5, 0x160

    if-ne p2, v5, :cond_3a

    .line 721
    const/16 v1, -0x2b

    goto :goto_2e

    .line 723
    :cond_3a
    const/16 v5, 0x161

    if-ne p2, v5, :cond_36

    .line 724
    const/16 v1, -0x2a

    goto :goto_2e

    .line 732
    .restart local v2       #i:I
    :cond_3b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "303"

    invoke-static {v1}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    .end local v1           #errCode:I
    .end local v2           #i:I
    :sswitch_23
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_30
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 738
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 739
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3c

    .line 740
    const/16 v5, -0x18

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 737
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 747
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_24
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_31
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 748
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 749
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3d

    .line 750
    const/16 v5, -0x17

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 747
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 757
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_25
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_32
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 758
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 759
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3e

    .line 760
    const/16 v5, -0x25

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 757
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 767
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_26
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_33
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 768
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 769
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3f

    .line 770
    const/16 v5, -0x16

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 767
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 777
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_27
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_34
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 778
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 779
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_40

    .line 780
    const/16 v5, -0x15

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 777
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 787
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_28
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_35
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 788
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 789
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_41

    .line 790
    const/16 v5, -0x14

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 787
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 797
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_29
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_36
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 798
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 799
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_42

    .line 800
    const/16 v5, -0x13

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 797
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 807
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_37
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 808
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 809
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_43

    .line 810
    const/16 v5, -0x2d

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 807
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 817
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_38
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_45

    .line 818
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 819
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_44

    .line 820
    const/16 v5, -0x12

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 817
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 823
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_45
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "304"

    const/16 v7, -0x12

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    .end local v2           #i:I
    :sswitch_2c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_39
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_47

    .line 829
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 830
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_46

    .line 831
    const/16 v5, -0x11

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 828
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 834
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "202"

    const/16 v7, -0x11

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    .end local v2           #i:I
    :sswitch_2d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 840
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 841
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_48

    .line 842
    const/16 v5, -0x10

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 839
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 849
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1100(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V

    goto/16 :goto_0

    .line 854
    :sswitch_2f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 855
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 856
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 857
    if-eqz v3, :cond_49

    .line 858
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 859
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallBusy(I)V

    .line 854
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 867
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_30
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 868
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 869
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 870
    if-eqz v3, :cond_4a

    .line 871
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 872
    const/4 v5, -0x7

    const-string v6, "Called party not in LTE area"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 867
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 879
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_31
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 880
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 881
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 882
    if-eqz v3, :cond_4b

    .line 883
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 884
    const/16 v5, -0x2f

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 879
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 892
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_32
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 893
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 894
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 895
    if-eqz v3, :cond_4c

    .line 896
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 897
    const/16 v5, -0x34

    const-string v6, "Cannot connect call, Divert to normal call"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 892
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 904
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_33
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 905
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 906
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 907
    if-eqz v3, :cond_4d

    .line 908
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 909
    const/4 v5, -0x6

    const-string v6, "Called party does not exist"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 904
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 917
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_34
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_40
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 918
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 919
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 920
    if-eqz v3, :cond_4e

    .line 921
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 922
    const/16 v5, -0x2c

    const-string v6, "Called party has only VoLte Alternative Services"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 917
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 929
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_35
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_41
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 930
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 931
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 932
    if-eqz v3, :cond_4f

    .line 933
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 934
    const/16 v5, -0x22

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 929
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 942
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_36
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_42
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_51

    .line 943
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 944
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "reason code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 945
    if-eqz v3, :cond_50

    .line 946
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 947
    const/16 v5, -0x30

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 942
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 950
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_51
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "308"

    const/16 v7, -0x30

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 955
    .end local v2           #i:I
    :sswitch_37
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_43
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_53

    .line 956
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 957
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 958
    if-eqz v3, :cond_52

    .line 959
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 960
    const/16 v5, -0x27

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 955
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 963
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "301"

    const/16 v7, -0x27

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 969
    .end local v2           #i:I
    :sswitch_38
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_44
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 970
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 971
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 972
    if-eqz v3, :cond_54

    .line 973
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 974
    const/4 v5, -0x5

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 969
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 981
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_39
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_45
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 982
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 983
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 984
    if-eqz v3, :cond_55

    .line 985
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 986
    const/16 v5, 0x19f

    const-string v6, "Called party does not support media"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 981
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 993
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_46
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 994
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 995
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 996
    if-eqz v3, :cond_56

    .line 997
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 998
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallHeld(I)V

    .line 993
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1005
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1006
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1007
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1008
    if-eqz v3, :cond_57

    .line 1009
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1010
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallResumed(I)V

    .line 1005
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1019
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_48
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1020
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1021
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1022
    if-eqz v3, :cond_58

    .line 1023
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1024
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onConferenceEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1019
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1030
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_49
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1031
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1032
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1033
    if-eqz v3, :cond_59

    .line 1034
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1035
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1030
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1042
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1043
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1044
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1045
    if-eqz v3, :cond_5a

    .line 1046
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1047
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 1042
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1054
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1055
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1056
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1057
    if-eqz v3, :cond_5b

    .line 1058
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1059
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1054
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1066
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_40
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1067
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1068
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1069
    if-eqz v3, :cond_5c

    .line 1070
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1071
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1066
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1078
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_41
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1079
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1080
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1081
    if-eqz v3, :cond_5d

    .line 1082
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1083
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1078
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1090
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_42
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1091
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1092
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1093
    if-eqz v3, :cond_5e

    .line 1094
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1095
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1090
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1102
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_43
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1103
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1104
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1105
    if-eqz v3, :cond_5f

    .line 1106
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1107
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1102
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1114
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_44
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_50
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1115
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1116
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1117
    if-eqz v3, :cond_60

    .line 1118
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1119
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1114
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1126
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_45
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_51
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1127
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1128
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1129
    if-eqz v3, :cond_61

    .line 1130
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1132
    const/16 v5, 0x14e

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallSwitched(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1126
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1139
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_46
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_52
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1140
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1141
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1142
    if-eqz v3, :cond_62

    .line 1143
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1145
    const/16 v5, 0x14d

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallSwitched(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1139
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1152
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_47
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1153
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1154
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1155
    if-eqz v3, :cond_63

    .line 1156
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1157
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1152
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1164
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_48
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_54
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1165
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1166
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1167
    if-eqz v3, :cond_64

    .line 1168
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1169
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1164
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1176
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_49
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_55
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1177
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1178
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1179
    if-eqz v3, :cond_65

    .line 1180
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1181
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1176
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 1188
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_56
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1189
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1190
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1191
    if-eqz v3, :cond_66

    .line 1192
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1193
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1188
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1200
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_57
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1201
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1202
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1203
    if-eqz v3, :cond_67

    .line 1204
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1205
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1200
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1212
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_58
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1213
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1214
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1215
    if-eqz v3, :cond_68

    .line 1216
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1217
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1212
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1224
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_59
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1225
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1226
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1227
    if-eqz v3, :cond_69

    .line 1228
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1229
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoHeld(I)V

    .line 1224
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 1236
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1237
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1238
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1239
    if-eqz v3, :cond_6a

    .line 1240
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1241
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoResumed(I)V

    .line 1236
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1248
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1249
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1250
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1251
    if-eqz v3, :cond_6b

    .line 1252
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1253
    const/16 v5, 0x2bc

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1248
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 1259
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_50
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1260
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1261
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1262
    if-eqz v3, :cond_6c

    .line 1263
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1264
    const/16 v5, 0x2bd

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1259
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1271
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_51
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1272
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1273
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1274
    if-eqz v3, :cond_6d

    .line 1275
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1276
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_HOLD_FAILED_IND.."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1277
    const/16 v5, 0x2be

    const-string v6, "Hold has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1271
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1283
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_52
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1284
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1285
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1286
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_RETRIEVE_FAILED_IND..."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1287
    if-eqz v3, :cond_6e

    .line 1288
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1289
    const/16 v5, 0x2bf

    const-string v6, "Resume has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1283
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 1297
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_53
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1298
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1299
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1300
    if-eqz v3, :cond_6f

    .line 1301
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1302
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoAvailable(I)V

    .line 1297
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 1313
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_70
    const-string v5, "SamsungAPCommonService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event listener invalid app type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_8
        0x67 -> :sswitch_b
        0x68 -> :sswitch_9
        0x6d -> :sswitch_e
        0x6e -> :sswitch_c
        0x6f -> :sswitch_a
        0x70 -> :sswitch_d
        0x71 -> :sswitch_f
        0xca -> :sswitch_7
        0xcb -> :sswitch_3e
        0xcc -> :sswitch_14
        0xcd -> :sswitch_10
        0xcf -> :sswitch_15
        0xd0 -> :sswitch_3d
        0xd1 -> :sswitch_13
        0xd2 -> :sswitch_2b
        0xd4 -> :sswitch_2d
        0xd5 -> :sswitch_2e
        0xd6 -> :sswitch_29
        0xd7 -> :sswitch_33
        0xd8 -> :sswitch_30
        0xd9 -> :sswitch_2f
        0xda -> :sswitch_38
        0xdb -> :sswitch_36
        0xde -> :sswitch_1b
        0xe1 -> :sswitch_2c
        0xe4 -> :sswitch_16
        0xe5 -> :sswitch_17
        0xe6 -> :sswitch_18
        0xe7 -> :sswitch_19
        0xea -> :sswitch_1a
        0xeb -> :sswitch_37
        0xed -> :sswitch_1c
        0xee -> :sswitch_39
        0x107 -> :sswitch_51
        0x108 -> :sswitch_52
        0x109 -> :sswitch_3a
        0x10a -> :sswitch_3b
        0x12a -> :sswitch_3
        0x12b -> :sswitch_4
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_53
        0x12f -> :sswitch_21
        0x130 -> :sswitch_23
        0x131 -> :sswitch_24
        0x132 -> :sswitch_1f
        0x133 -> :sswitch_28
        0x134 -> :sswitch_26
        0x135 -> :sswitch_20
        0x136 -> :sswitch_30
        0x137 -> :sswitch_1d
        0x138 -> :sswitch_6
        0x139 -> :sswitch_5
        0x13a -> :sswitch_25
        0x13d -> :sswitch_27
        0x13e -> :sswitch_35
        0x13f -> :sswitch_3c
        0x141 -> :sswitch_2a
        0x142 -> :sswitch_3c
        0x147 -> :sswitch_3c
        0x14b -> :sswitch_3f
        0x14c -> :sswitch_41
        0x14d -> :sswitch_46
        0x14e -> :sswitch_45
        0x14f -> :sswitch_4f
        0x150 -> :sswitch_50
        0x151 -> :sswitch_40
        0x152 -> :sswitch_49
        0x153 -> :sswitch_42
        0x154 -> :sswitch_47
        0x155 -> :sswitch_48
        0x156 -> :sswitch_4a
        0x157 -> :sswitch_43
        0x158 -> :sswitch_44
        0x159 -> :sswitch_4b
        0x15a -> :sswitch_4d
        0x15b -> :sswitch_4c
        0x15c -> :sswitch_4e
        0x15f -> :sswitch_0
        0x160 -> :sswitch_22
        0x161 -> :sswitch_22
        0x162 -> :sswitch_22
        0x163 -> :sswitch_22
        0x164 -> :sswitch_11
        0x165 -> :sswitch_34
        0x166 -> :sswitch_12
        0x167 -> :sswitch_1e
        0x168 -> :sswitch_31
        0x169 -> :sswitch_32
    .end sparse-switch
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"

    .prologue
    .line 1318
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS event received EventType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AppType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg2 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1320
    packed-switch p2, :pswitch_data_0

    .line 1334
    :cond_0
    return-void

    .line 1322
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1324
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1325
    if-eqz v1, :cond_1

    .line 1326
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1327
    invoke-interface {v1, p3, p5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onNotifyReceived(I[I[Ljava/lang/String;)V

    .line 1322
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    nop

    :pswitch_data_0
    .packed-switch 0x145
        :pswitch_0
    .end packed-switch
.end method
