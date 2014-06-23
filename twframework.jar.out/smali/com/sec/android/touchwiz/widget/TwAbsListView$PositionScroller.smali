.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 5755
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5756
    #getter for: Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 5757
    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 5930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 6102
    :cond_0
    :goto_0
    return-void

    .line 5934
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v16

    .line 5935
    .local v16, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5937
    .local v6, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    goto :goto_0

    .line 5939
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    .line 5940
    .local v13, lastViewIndex:I
    add-int v9, v6, v13

    .line 5942
    .local v9, lastPos:I
    if-ltz v13, :cond_0

    .line 5946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_2

    .line 5948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5952
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5953
    .local v10, lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 5954
    .local v12, lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5955
    .local v15, lastViewTop:I
    sub-int v14, v16, v15

    .line 5956
    .local v14, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v9, v0, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 5959
    .local v5, extraScroll:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v12, v14

    add-int v28, v28, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 5962
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 5963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_0

    .line 5964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5956
    .end local v5           #extraScroll:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 5970
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_1
    const/16 v21, 0x1

    .line 5971
    .local v21, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 5973
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v3, v0, :cond_0

    add-int v27, v6, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 5977
    add-int/lit8 v18, v6, 0x1

    .line 5979
    .local v18, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 5981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5985
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 5986
    .local v19, nextView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 5987
    .local v20, nextViewHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    .line 5988
    .local v22, nextViewTop:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 5989
    .restart local v5       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 5990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int v29, v20, v22

    sub-int v29, v29, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 5993
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 5995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 5997
    :cond_5
    move/from16 v0, v22

    if-le v0, v5, :cond_0

    .line 5998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 6005
    .end local v3           #childCount:I
    .end local v5           #extraScroll:I
    .end local v18           #nextPos:I
    .end local v19           #nextView:Landroid/view/View;
    .end local v20           #nextViewHeight:I
    .end local v21           #nextViewIndex:I
    .end local v22           #nextViewTop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v6, v0, :cond_6

    .line 6007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6011
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6012
    .local v7, firstView:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 6015
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 6016
    .local v8, firstViewTop:I
    if-lez v6, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 6018
    .restart local v5       #extraScroll:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6020
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6022
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v6, v0, :cond_0

    .line 6023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6016
    .end local v5           #extraScroll:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 6029
    .end local v7           #firstView:Landroid/view/View;
    .end local v8           #firstViewTop:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x2

    .line 6030
    .restart local v13       #lastViewIndex:I
    if-ltz v13, :cond_0

    .line 6033
    add-int v9, v6, v13

    .line 6035
    .restart local v9       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_8

    .line 6037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6041
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6042
    .restart local v10       #lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 6043
    .restart local v12       #lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6044
    .restart local v15       #lastViewTop:I
    sub-int v14, v16, v15

    .line 6045
    .restart local v14       #lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v9, v0, :cond_9

    .line 6047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    sub-int v28, v14, v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6050
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v27, v0

    sub-int v2, v16, v27

    .line 6051
    .local v2, bottom:I
    add-int v11, v15, v12

    .line 6052
    .local v11, lastViewBottom:I
    if-le v2, v11, :cond_0

    .line 6053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v2, v11

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 6060
    .end local v2           #bottom:I
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v11           #lastViewBottom:I
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v0, v6, :cond_a

    .line 6062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6066
    :cond_a
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 6068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 6069
    .restart local v3       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v23, v0

    .line 6070
    .local v23, position:I
    add-int v27, v6, v3

    add-int/lit8 v9, v27, -0x1

    .line 6072
    .restart local v9       #lastPos:I
    const/16 v26, 0x0

    .line 6073
    .local v26, viewTravelCount:I
    move/from16 v0, v23

    if-ge v0, v6, :cond_c

    .line 6074
    sub-int v27, v6, v23

    add-int/lit8 v26, v27, 0x1

    .line 6080
    :cond_b
    :goto_3
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v3

    move/from16 v28, v0

    div-float v24, v27, v28

    .line 6082
    .local v24, screenTravelCount:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 6083
    .local v17, modifier:F
    move/from16 v0, v23

    if-ge v0, v6, :cond_d

    .line 6084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6075
    .end local v17           #modifier:F
    .end local v24           #screenTravelCount:F
    :cond_c
    move/from16 v0, v23

    if-le v0, v9, :cond_b

    .line 6076
    sub-int v26, v23, v9

    goto :goto_3

    .line 6086
    .restart local v17       #modifier:F
    .restart local v24       #screenTravelCount:F
    :cond_d
    move/from16 v0, v23

    if-le v0, v9, :cond_e

    .line 6087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 6091
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v6

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v25

    .line 6092
    .local v25, targetTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v27, v0

    sub-int v4, v25, v27

    .line 6093
    .local v4, distance:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v4

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 5937
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method start(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/16 v5, 0x190

    const/4 v4, -0x1

    .line 5795
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 5797
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5798
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 5801
    .local v1, lastPos:I
    if-gt p1, v0, :cond_1

    .line 5802
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 5803
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 5812
    :goto_0
    if-lez v2, :cond_2

    .line 5813
    div-int v3, v5, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 5817
    :goto_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 5818
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 5819
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 5821
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5822
    .end local v2           #viewTravelCount:I
    :cond_0
    return-void

    .line 5804
    :cond_1
    if-lt p1, v1, :cond_0

    .line 5805
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 5806
    .restart local v2       #viewTravelCount:I
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 5815
    :cond_2
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method start(II)V
    .locals 11
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 5825
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 5827
    if-ne p2, v9, :cond_1

    .line 5828
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    .line 5885
    :cond_0
    :goto_0
    return-void

    .line 5832
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5833
    .local v3, firstPos:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    .line 5836
    .local v4, lastPos:I
    if-gt p1, v3, :cond_3

    .line 5837
    sub-int v1, v4, p2

    .line 5838
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_0

    .line 5844
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 5845
    .local v5, posTravel:I
    add-int/lit8 v2, v1, -0x1

    .line 5846
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_2

    .line 5847
    move v6, v2

    .line 5848
    .local v6, viewTravelCount:I
    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 5875
    .end local v1           #boundPosFromLast:I
    :goto_1
    if-lez v6, :cond_5

    .line 5876
    div-int v7, v10, v6

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 5880
    :goto_2
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 5881
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 5882
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 5884
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5850
    .end local v6           #viewTravelCount:I
    .restart local v1       #boundPosFromLast:I
    :cond_2
    move v6, v5

    .line 5851
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 5853
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    .end local v6           #viewTravelCount:I
    :cond_3
    if-lt p1, v4, :cond_0

    .line 5854
    sub-int v0, p2, v3

    .line 5855
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_0

    .line 5861
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 5862
    .restart local v5       #posTravel:I
    add-int/lit8 v2, v0, -0x1

    .line 5863
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_4

    .line 5864
    move v6, v2

    .line 5865
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 5867
    .end local v6           #viewTravelCount:I
    :cond_4
    move v6, v5

    .line 5868
    .restart local v6       #viewTravelCount:I
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 5878
    .end local v0           #boundPosFromFirst:I
    :cond_5
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method startWithDuration(II)V
    .locals 5
    .parameter "position"
    .parameter "duration"

    .prologue
    const/4 v4, -0x1

    .line 5765
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 5767
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5768
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 5771
    .local v1, lastPos:I
    if-gt p1, v0, :cond_1

    .line 5772
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 5773
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 5782
    :goto_0
    if-lez v2, :cond_2

    .line 5783
    div-int v3, p2, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 5787
    :goto_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 5788
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 5789
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 5791
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5792
    .end local v2           #viewTravelCount:I
    :cond_0
    return-void

    .line 5774
    :cond_1
    if-lt p1, v1, :cond_0

    .line 5775
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 5776
    .restart local v2       #viewTravelCount:I
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 5785
    :cond_2
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method startWithOffset(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 5888
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(III)V

    .line 5889
    return-void
.end method

.method startWithOffset(III)V
    .locals 9
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v8, -0x1

    .line 5892
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 5894
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 5895
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    .line 5896
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 5897
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 5898
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 5900
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v1, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5901
    .local v1, firstPos:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 5902
    .local v0, childCount:I
    add-int v6, v1, v0

    add-int/lit8 v2, v6, -0x1

    .line 5905
    .local v2, lastPos:I
    if-ge p1, v1, :cond_0

    .line 5906
    sub-int v5, v1, p1

    .line 5917
    .local v5, viewTravelCount:I
    :goto_0
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 5918
    .local v3, screenTravelCount:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    int-to-float v6, p3

    mul-float/2addr v6, v3

    float-to-int v6, v6

    :goto_1
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 5920
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 5922
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5923
    .end local v3           #screenTravelCount:F
    .end local v5           #viewTravelCount:I
    :goto_2
    return-void

    .line 5907
    :cond_0
    if-le p1, v2, :cond_1

    .line 5908
    sub-int v5, p1, v2

    .restart local v5       #viewTravelCount:I
    goto :goto_0

    .line 5911
    .end local v5           #viewTravelCount:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v7, p1, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 5912
    .local v4, targetTop:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v7, v4, p2

    invoke-virtual {v6, v7, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_2

    .line 5918
    .end local v4           #targetTop:I
    .restart local v3       #screenTravelCount:F
    .restart local v5       #viewTravelCount:I
    :cond_2
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    goto :goto_1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 5926
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5927
    return-void
.end method
