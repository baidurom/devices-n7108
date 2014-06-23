.class public Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "callback"

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 718
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    .line 719
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    .line 720
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null Intent must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    const-string v0, "remoteAdapterAppWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mAppWidgetId:I

    .line 725
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 727
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    .line 730
    const-string v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    const-string v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 735
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteViewsCache-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    .line 736
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 737
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    .line 738
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    .line 741
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v1, 0x28

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    .line 743
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    .line 744
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->requestBindService()Z

    .line 745
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->onNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateRemoteViews(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateTemporaryMetaData()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V

    return-void
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1130
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1132
    return-void
.end method

.method private getConvertViewTypeId(Landroid/view/View;)I
    .locals 3
    .parameter "convertView"

    .prologue
    .line 927
    const/4 v1, -0x1

    .line 928
    .local v1, typeId:I
    if-eqz p1, :cond_0

    .line 929
    const v2, 0x1020254

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 930
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 931
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 934
    :cond_0
    return v1
.end method

.method private loadNextIndexInBackground()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 784
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .locals 5

    .prologue
    .line 1045
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 1047
    .local v1, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1060
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 1061
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 1062
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateTemporaryMetaData()V

    .line 1068
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1081
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1082
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1054
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1055
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1062
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .parameter "method"
    .parameter "e"

    .prologue
    .line 787
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 792
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 793
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 794
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 796
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 797
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 798
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$2;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    return-void

    .line 794
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 797
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private requestBindService()Z
    .locals 4

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mAppWidgetId:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1142
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateRemoteViews(IZ)V
    .locals 12
    .parameter "position"
    .parameter "isRequested"

    .prologue
    .line 836
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v8

    .line 840
    .local v8, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v3, 0x0

    .line 841
    .local v3, remoteViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    const-wide/16 v4, 0x0

    .line 843
    .local v4, itemId:J
    :try_start_0
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-object v3, v0

    .line 844
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 856
    if-nez v3, :cond_1

    .line 860
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateRemoteViews("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " null RemoteViews "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "returned from RemoteViewsFactory."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 845
    :catch_0
    move-exception v7

    .line 846
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateRemoteViews("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 852
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateRemoteViews("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 864
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v11

    .line 866
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V

    .line 870
    move-object v9, v3

    .line 871
    .local v9, rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget v10, v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 872
    .local v10, typeId:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;

    invoke-direct {v2, p0, p1, v9, v10}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;ILcom/sec/android/touchwiz/widget/TwRemoteViews;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 878
    monitor-exit v11

    goto/16 :goto_0

    .end local v9           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v10           #typeId:I
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateTemporaryMetaData()V
    .locals 9

    .prologue
    .line 807
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    .line 812
    .local v2, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v4

    .line 813
    .local v4, hasStableIds:Z
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v7

    .line 814
    .local v7, viewTypeCount:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v0

    .line 815
    .local v0, count:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 816
    .local v5, loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    const/4 v3, 0x0

    .line 817
    .local v3, firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    if-lez v0, :cond_0

    if-nez v5, :cond_0

    .line 818
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .end local v3           #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 820
    .restart local v3       #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    :cond_0
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    .line 821
    .local v6, tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 822
    :try_start_1
    iput-boolean v4, v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 824
    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 825
    iput v0, v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 826
    invoke-virtual {v6, v5, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V

    .line 827
    monitor-exit v6

    .line 833
    .end local v0           #count:I
    .end local v3           #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v6           #tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :goto_0
    return-void

    .line 827
    .restart local v0       #count:I
    .restart local v3       #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v4       #hasStableIds:Z
    .restart local v5       #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v6       #tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v7       #viewTypeCount:I
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 828
    .end local v0           #count:I
    .end local v3           #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v6           #tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 830
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 831
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 756
    return-void

    .line 754
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 886
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 887
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 888
    :try_start_0
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    .line 889
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 894
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 898
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget-wide v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v2

    .line 902
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 907
    const/4 v1, 0x0

    .line 908
    .local v1, typeId:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 909
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v2

    iget v1, v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 914
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 917
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 918
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    :goto_0
    return v2

    .line 912
    :cond_0
    const/4 v2, 0x0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 914
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 919
    .restart local v0       #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 941
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsRemoteViewAt(I)Z

    move-result v10

    .line 942
    .local v10, isInCache:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v9

    .line 943
    .local v9, isConnected:Z
    const/4 v7, 0x0

    .line 945
    .local v7, hasNewItems:Z
    if-nez v10, :cond_1

    if-nez v9, :cond_1

    .line 948
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->requestBindService()Z

    .line 954
    :goto_0
    if-eqz v10, :cond_7

    .line 955
    const/4 v4, 0x0

    .line 956
    .local v4, convertViewChild:Landroid/view/View;
    const/4 v5, 0x0

    .line 957
    .local v5, convertViewTypeId:I
    const/4 v11, 0x0

    .line 959
    .local v11, layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 960
    move-object/from16 v0, p2

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v11, v0

    .line 961
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 962
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getConvertViewTypeId(Landroid/view/View;)I

    move-result v5

    move-object v12, v11

    .line 967
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v12, layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 968
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-result-object v16

    .line 969
    .local v16, rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v8

    .line 970
    .local v8, indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->isRequested:Z

    .line 971
    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    .local v17, typeId:I
    if-eqz v12, :cond_4

    .line 976
    move/from16 v0, v17

    if-ne v5, v0, :cond_2

    .line 977
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1005
    if-eqz v7, :cond_0

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_0
    monitor-exit v19

    move-object v13, v12

    .line 1020
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :goto_2
    return-object v13

    .line 951
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto :goto_0

    .line 980
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v17       #typeId:I
    :cond_2
    :try_start_3
    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v12

    .line 986
    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_3
    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 987
    .local v15, newView:Landroid/view/View;
    const v18, 0x1020254

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 989
    invoke-virtual {v11, v15}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1005
    if-eqz v7, :cond_3

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_3
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v13, v11

    goto :goto_2

    .line 982
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v15           #newView:Landroid/view/View;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_4
    :try_start_6
    new-instance v11, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_3

    .line 992
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :catch_0
    move-exception v6

    move-object v11, v12

    .line 995
    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v6, e:Ljava/lang/Exception;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_4
    :try_start_7
    const-string v18, "RemoteViewsAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error inflating RemoteViews at position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", using"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "loading view instead"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v13, 0x0

    .line 999
    .local v13, loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 1000
    .local v14, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1001
    :try_start_8
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static {v14, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 1002
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1005
    if-eqz v7, :cond_5

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_5
    monitor-exit v19

    goto/16 :goto_2

    .line 1022
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #hasNewItems:Z
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v9           #isConnected:Z
    .end local v10           #isInCache:Z
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v13           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v18

    .line 1002
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v7       #hasNewItems:Z
    .restart local v8       #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v9       #isConnected:Z
    .restart local v10       #isInCache:Z
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v13       #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v14       #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v16       #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v17       #typeId:I
    :catchall_1
    move-exception v18

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1005
    .end local v6           #e:Ljava/lang/Exception;
    .end local v13           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_2
    move-exception v18

    :goto_5
    if-eqz v7, :cond_6

    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_6
    throw v18

    .line 1010
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :cond_7
    const/4 v13, 0x0

    .line 1011
    .restart local v13       #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 1012
    .restart local v14       #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1013
    :try_start_d
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static {v14, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 1014
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1016
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    .line 1018
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 1020
    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 1014
    :catchall_3
    move-exception v18

    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1005
    .end local v13           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v17       #typeId:I
    :catchall_4
    move-exception v18

    move-object v11, v12

    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_5

    .line 992
    :catch_1
    move-exception v6

    goto/16 :goto_4

    .end local v3           #context:Landroid/content/Context;
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :cond_8
    move-object v12, v11

    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1027
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1028
    :try_start_0
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    .line 1029
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 1114
    const/4 v0, 0x0

    .line 1115
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1125
    :goto_0
    return v0

    .line 1117
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mAppWidgetId:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1120
    :cond_0
    const/4 v0, 0x1

    .line 1121
    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1034
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1035
    :try_start_0
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    .line 1036
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1086
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1090
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    if-eqz v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1095
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1096
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->requestBindService()Z

    goto :goto_0

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$5;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$5;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method superNotifyDataSetChanged()V
    .locals 0

    .prologue
    .line 1109
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1110
    return-void
.end method
