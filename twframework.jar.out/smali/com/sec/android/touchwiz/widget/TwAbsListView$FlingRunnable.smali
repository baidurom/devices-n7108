.class public Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 5501
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5476
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 5502
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 5503
    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5465
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 5545
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->notifyVerticalEdgeReached(III)V

    .line 5546
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v0

    .line 5547
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5549
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5550
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 5551
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 5552
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 5562
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5563
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5564
    return-void

    .line 5554
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 5557
    .end local v1           #vel:I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5558
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5559
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 5575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5577
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5578
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5580
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 5581
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 5582
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 5584
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5585
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 5586
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2602(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5588
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5592
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 5595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 5597
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 5725
    :cond_0
    :goto_0
    return-void

    .line 5601
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5606
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 5607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 5610
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 5611
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 5615
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 5616
    .local v26, scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v22

    .line 5617
    .local v22, more:Z
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v28

    .line 5623
    .local v28, y:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v19, v2, v28

    .line 5627
    .local v19, delta:I
    if-lez v19, :cond_6

    .line 5630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 5632
    .local v20, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 5650
    .end local v20           #firstView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 5651
    .local v23, motionView:Landroid/view/View;
    const/16 v25, 0x0

    .line 5652
    .local v25, oldTop:I
    if-eqz v23, :cond_4

    .line 5653
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v25

    .line 5658
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v19, :cond_7

    const/4 v15, 0x1

    .line 5659
    .local v15, atEnd:Z
    :goto_2
    if-eqz v15, :cond_8

    .line 5660
    if-eqz v23, :cond_5

    .line 5662
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v4, v2

    .line 5663
    .local v4, overshoot:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3500(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z

    .line 5666
    .end local v4           #overshoot:I
    :cond_5
    if-eqz v22, :cond_0

    .line 5667
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 5639
    .end local v15           #atEnd:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v25           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 5640
    .local v24, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v3, v3, v24

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 5643
    .local v21, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_1

    .line 5658
    .end local v21           #lastView:Landroid/view/View;
    .end local v24           #offsetToLast:I
    .restart local v23       #motionView:Landroid/view/View;
    .restart local v25       #oldTop:I
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 5672
    .restart local v15       #atEnd:Z
    :cond_8
    if-eqz v22, :cond_9

    if-nez v15, :cond_9

    .line 5673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5674
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    .line 5675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5677
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 5695
    .end local v15           #atEnd:Z
    .end local v19           #delta:I
    .end local v22           #more:Z
    .end local v23           #motionView:Landroid/view/View;
    .end local v25           #oldTop:I
    .end local v26           #scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .end local v28           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 5696
    .restart local v26       #scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v9

    .line 5698
    .local v9, scrollY:I
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v18

    .line 5699
    .local v18, currY:I
    sub-int v7, v18, v9

    .line 5700
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v13, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3700(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5701
    if-gtz v9, :cond_c

    if-lez v18, :cond_c

    const/16 v16, 0x1

    .line 5702
    .local v16, crossDown:Z
    :goto_3
    if-ltz v9, :cond_d

    if-gez v18, :cond_d

    const/16 v17, 0x1

    .line 5703
    .local v17, crossUp:Z
    :goto_4
    if-nez v16, :cond_a

    if-eqz v17, :cond_e

    .line 5704
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 5705
    .local v27, velocity:I
    if-eqz v17, :cond_b

    .line 5706
    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 5710
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 5711
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5701
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    .end local v27           #velocity:I
    :cond_c
    const/16 v16, 0x0

    goto :goto_3

    .line 5702
    .restart local v16       #crossDown:Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_4

    .line 5713
    .restart local v17       #crossUp:Z
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 5716
    .end local v16           #crossDown:Z
    .end local v17           #crossUp:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5720
    .end local v7           #deltaY:I
    .end local v9           #scrollY:I
    .end local v18           #currY:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 5595
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 5506
    if-gez p1, :cond_1

    move v2, v6

    .line 5507
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    .line 5508
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIII)V

    .line 5510
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5511
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5520
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5521
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2602(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5523
    :cond_0
    return-void

    .end local v2           #initialY:I
    :cond_1
    move v2, v1

    .line 5506
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 5537
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 5539
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5540
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5541
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5542
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 5567
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 5568
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mLastFlingY:I

    .line 5569
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 5570
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5571
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5572
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 5567
    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5526
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5527
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5528
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5529
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5534
    :goto_0
    return-void

    .line 5531
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5532
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
