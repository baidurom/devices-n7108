.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    monitor-enter v2

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    .line 195
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$500(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .line 199
    .local v0, callback:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    .line 202
    :cond_0
    return-void

    .line 195
    .end local v0           #callback:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
