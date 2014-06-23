.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 161
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$000(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->onNotifyDataSetChanged()V
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$100(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    .line 207
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$700(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    .line 208
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$802(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 209
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$902(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 210
    :goto_1
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$200(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 168
    .local v1, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateTemporaryMetaData()V
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$300(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    .line 190
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
