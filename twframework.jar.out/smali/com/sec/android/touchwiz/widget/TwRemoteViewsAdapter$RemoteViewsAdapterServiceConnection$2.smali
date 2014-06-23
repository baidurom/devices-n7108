.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceDisconnected()V
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
    .line 223
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$500(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .line 230
    .local v0, callback:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterDisconnected()V

    .line 233
    :cond_0
    return-void
.end method
