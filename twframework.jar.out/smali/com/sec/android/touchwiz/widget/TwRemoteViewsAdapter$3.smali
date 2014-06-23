.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateRemoteViews(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

.field final synthetic val$position:I

.field final synthetic val$rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field final synthetic val$typeId:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;ILcom/sec/android/touchwiz/widget/TwRemoteViews;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->val$rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->val$typeId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 875
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$1500(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->val$position:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->val$rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;->val$typeId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->notifyOnRemoteViewsLoaded(ILcom/sec/android/touchwiz/widget/TwRemoteViews;I)V

    .line 876
    return-void
.end method
