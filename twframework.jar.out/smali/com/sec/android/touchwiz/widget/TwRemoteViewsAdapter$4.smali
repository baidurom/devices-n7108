.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->onNotifyDataSetChanged()V
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
    .line 1068
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    monitor-enter v1

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    .line 1073
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1076
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$700(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    .line 1077
    return-void

    .line 1073
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
