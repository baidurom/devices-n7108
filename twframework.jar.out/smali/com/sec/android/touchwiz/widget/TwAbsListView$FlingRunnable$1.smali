.class Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 5476
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 5478
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v0

    .line 5479
    .local v0, activeId:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 5480
    .local v2, vt:Landroid/view/VelocityTracker;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->access$2300(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    .line 5481
    .local v1, scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 5496
    :cond_0
    :goto_0
    return-void

    .line 5485
    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5486
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 5488
    .local v3, yvel:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5490
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const-wide/16 v5, 0x28

    invoke-virtual {v4, p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5492
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 5493
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v5, 0x3

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5494
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
