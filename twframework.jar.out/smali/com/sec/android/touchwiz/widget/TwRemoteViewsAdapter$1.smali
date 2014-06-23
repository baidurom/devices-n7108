.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 762
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$200(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 764
    const/4 v1, -0x1

    .line 765
    .local v1, position:I
    const/4 v0, 0x0

    .line 766
    .local v0, isRequested:Z
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v5

    monitor-enter v5

    .line 767
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()[I

    move-result-object v2

    .line 768
    .local v2, res:[I
    const/4 v6, 0x0

    aget v1, v2, v6

    .line 769
    const/4 v6, 0x1

    aget v6, v2, v6

    if-lez v6, :cond_1

    move v0, v3

    .line 770
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    const/4 v3, -0x1

    if-le v1, v3, :cond_2

    .line 773
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateRemoteViews(IZ)V
    invoke-static {v3, v1, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$1300(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;IZ)V

    .line 776
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$1400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    .line 782
    .end local v0           #isRequested:Z
    .end local v1           #position:I
    .end local v2           #res:[I
    :cond_0
    :goto_1
    return-void

    .restart local v0       #isRequested:Z
    .restart local v1       #position:I
    .restart local v2       #res:[I
    :cond_1
    move v0, v4

    .line 769
    goto :goto_0

    .line 770
    .end local v2           #res:[I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 779
    .restart local v2       #res:[I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$700(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    goto :goto_1
.end method
