.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1537
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2$1;->this$2:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView$2;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionFired(II)V

    .line 1549
    :cond_0
    return-void
.end method
