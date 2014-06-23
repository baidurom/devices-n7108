.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$5;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->notifyDataSetChanged()V
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
    .line 1100
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$5;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$5;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->onNotifyDataSetChanged()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$100(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    .line 1104
    return-void
.end method
