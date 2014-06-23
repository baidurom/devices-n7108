.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationEffectForOverscrollListItem"
.end annotation


# instance fields
.field protected mAvailiableRange:F

.field protected mIsDefinedOverscrollInfo:Z

.field protected mIsOverscrollDown:Z

.field protected mIsOverscrollTransfer:Z

.field protected mIsPressed:Z

.field protected mIsScrolling:Z

.field protected mIsThisAnimatingForOverscrollListItem:Z

.field protected mIsUseOverscrollEffect:Z

.field protected mLastMotionY:F

.field protected mOverscrollTransferAmount:I

.field protected mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

.field protected mStepForOverscrollListItem:I

.field protected mXPressed:F

.field protected mYPressed:F

.field protected rc:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 817
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 798
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mStepForOverscrollListItem:I

    .line 800
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 801
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    .line 802
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    .line 803
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->rc:Landroid/graphics/RectF;

    .line 804
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    .line 805
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    .line 807
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    .line 808
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 809
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 810
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 812
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollTransfer:Z

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 815
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    .line 818
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 819
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userSetOnAnimationListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;)V

    .line 851
    return-void
.end method


# virtual methods
.method public userCancelAnimationEffectForOverscrollListItem()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userCancelAnimation()V

    .line 875
    :cond_0
    return-void
.end method

.method public userGetUseOverscrollEffect()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    return v0
.end method

.method public userIsPressed()Z
    .locals 2

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 1030
    .local v0, b:Z
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    if-eqz v1, :cond_0

    .line 1031
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 1033
    :cond_0
    return v0
.end method

.method public userIsThisAnimatingForOverscrollListItem()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    return v0
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userRelease()V

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 858
    :cond_0
    return-void
.end method

.method public userRunningAnimationEffectForOverscrollListItem(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 880
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v1

    .line 881
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 882
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 883
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 884
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 885
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 886
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 888
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public userSetUseOverscrollEffect(Z)V
    .locals 0
    .parameter "isUseOverscrollEffect"

    .prologue
    .line 865
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    .line 866
    return-void
.end method

.method public userTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 895
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    if-nez v11, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsUseOverscrollEffect:Z

    if-eqz v11, :cond_0

    .line 905
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollTransfer:Z

    if-nez v11, :cond_0

    .line 910
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 915
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_0

    .line 919
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 920
    .local v1, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 921
    .local v10, y:F
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 924
    :pswitch_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsPressed:Z

    .line 926
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStopAnimation()V

    .line 928
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 929
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 931
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 932
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 934
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    .line 936
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    .line 937
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    goto :goto_0

    .line 945
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    if-nez v11, :cond_2

    .line 946
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->rc:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mXPressed:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mYPressed:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mAvailiableRange:F

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 948
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->rc:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    if-nez v11, :cond_2

    .line 949
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    .line 953
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsScrolling:Z

    if-eqz v11, :cond_0

    .line 957
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    sub-float/2addr v11, v10

    float-to-int v5, v11

    .line 958
    .local v5, deltaY:I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mLastMotionY:F

    .line 959
    if-gez v5, :cond_7

    .line 961
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_3

    .line 962
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getFirstVisiblePosition()I

    move-result v7

    .line 963
    .local v7, firstVisiblePosition:I
    if-nez v7, :cond_0

    .line 968
    .end local v7           #firstVisiblePosition:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 969
    .local v6, firstChild:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getTop()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    if-lt v11, v12, :cond_5

    const/4 v3, 0x1

    .line 970
    .local v3, canOverscrollscrollUp:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_4

    if-eqz v3, :cond_0

    .line 971
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    if-nez v11, :cond_6

    .line 972
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 973
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 974
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 975
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userAddViewBelow()V

    goto/16 :goto_0

    .line 969
    .end local v3           #canOverscrollscrollUp:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 979
    .restart local v3       #canOverscrollscrollUp:Z
    :cond_6
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 980
    .local v4, delta:I
    if-lez v4, :cond_0

    .line 981
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    mul-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userOffsetAllChildTopAndBottom(I)V

    .line 982
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    mul-int/lit8 v12, v5, -0x1

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 983
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->invalidate()V

    goto/16 :goto_0

    .line 988
    .end local v3           #canOverscrollscrollUp:Z
    .end local v4           #delta:I
    .end local v6           #firstChild:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_8

    .line 989
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getLastVisiblePosition()I

    move-result v9

    .line 990
    .local v9, lastVisiblePosition:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v9, v11, :cond_0

    .line 995
    .end local v9           #lastVisiblePosition:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 996
    .local v8, lastChild:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getBottom()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    if-gt v11, v12, :cond_a

    const/4 v2, 0x1

    .line 997
    .local v2, canOverscrollscrollDown:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-nez v11, :cond_9

    if-eqz v2, :cond_0

    .line 998
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    if-nez v11, :cond_b

    .line 999
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 1000
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollDown:Z

    .line 1001
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsDefinedOverscrollInfo:Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userAddViewAbove()V

    goto/16 :goto_0

    .line 996
    .end local v2           #canOverscrollscrollDown:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 1006
    .restart local v2       #canOverscrollscrollDown:Z
    :cond_b
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1007
    .restart local v4       #delta:I
    if-lez v4, :cond_0

    .line 1008
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    mul-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userOffsetAllChildTopAndBottom(I)V

    .line 1009
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    mul-int/lit8 v12, v5, -0x1

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 1010
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->invalidate()V

    goto/16 :goto_0

    .line 1020
    .end local v2           #canOverscrollscrollDown:Z
    .end local v4           #delta:I
    .end local v5           #deltaY:I
    .end local v8           #lastChild:Landroid/view/View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    if-eqz v11, :cond_0

    .line 1021
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation()V

    goto/16 :goto_0

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
