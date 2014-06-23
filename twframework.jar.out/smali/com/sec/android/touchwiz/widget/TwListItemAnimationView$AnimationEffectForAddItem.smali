.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationEffectForAddItem"
.end annotation


# instance fields
.field protected mIsBookedPosition:I

.field protected mIsThisAnimatingForAddItem:Z

.field protected mIsThisAnimatingForAddLastItem:Z

.field protected mStepForAddItem:I

.field protected mStepForLastAddItem:I

.field protected mTimeIntervalForAlphaEffect:I

.field protected mTimeIntervalForTranslateEffectLastItem:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1462
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1452
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mTimeIntervalForAlphaEffect:I

    .line 1455
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mTimeIntervalForTranslateEffectLastItem:I

    .line 1456
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddItem:Z

    .line 1457
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddLastItem:Z

    .line 1458
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    .line 1459
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForLastAddItem:I

    .line 1460
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    .line 1463
    return-void
.end method


# virtual methods
.method protected userAfterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1654
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1655
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddItem:Z

    .line 1656
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddLastItem:Z

    .line 1657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddItem(Landroid/graphics/Canvas;)V

    .line 1658
    return-void
.end method

.method public userCancelAnimationEffectForAddItem()V
    .locals 3

    .prologue
    .line 1489
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v1

    .line 1490
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1491
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1494
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userAfterAnimation()V

    .line 1495
    return-void
.end method

.method public userGetTimeIntervalAlphaEffectForAddItem()I
    .locals 1

    .prologue
    .line 1480
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mTimeIntervalForAlphaEffect:I

    return v0
.end method

.method public userIsThisAnimating()Z
    .locals 1

    .prologue
    .line 1476
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddItem:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddLastItem:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 1468
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddItem:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddLastItem:Z

    if-eqz v0, :cond_1

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    if-eqz v0, :cond_1

    .line 1470
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;->userOnExitAnimationEffectForAddItem()V

    .line 1473
    :cond_1
    return-void
.end method

.method public userRunningAnimationEffectForAddItem(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x2

    .line 1499
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setSelection(I)V

    .line 1501
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    if-ne v0, v2, :cond_0

    .line 1503
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStart(I)V

    .line 1504
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    goto :goto_0
.end method

.method public userRunningAnimationEffectForAddLastItem()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1512
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForLastAddItem:I

    if-nez v3, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForLastAddItem:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1518
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForLastAddItem:I

    .line 1519
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setSelection(I)V

    goto :goto_0

    .line 1521
    :cond_2
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForLastAddItem:I

    if-ne v3, v1, :cond_0

    .line 1524
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1531
    .local v0, ani:Landroid/view/animation/Animation;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mTimeIntervalForTranslateEffectLastItem:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1533
    const/4 v10, 0x0

    .line 1534
    .local v10, childView:Landroid/view/View;
    const/4 v9, 0x0

    .line 1535
    .local v9, animView:Landroid/view/View;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 1537
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1, v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1539
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1, v10}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    if-ne v1, v2, :cond_5

    .line 1541
    move-object v9, v10

    .line 1542
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1, v10}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 1546
    :cond_3
    if-eqz v9, :cond_4

    .line 1548
    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1550
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userAfterAnimation()V

    .line 1551
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForLastAddItem:I

    goto :goto_0

    .line 1535
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method public userSetTimeIntervalAlphaEffectForAddItem(I)V
    .locals 0
    .parameter "timeInterval"

    .prologue
    .line 1484
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mTimeIntervalForAlphaEffect:I

    .line 1485
    return-void
.end method

.method protected userStart(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 1613
    const/4 v1, 0x0

    .line 1614
    .local v1, aniView:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v4

    .line 1615
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1616
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1617
    .local v2, childView:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1618
    move-object v1, v2

    .line 1623
    .end local v2           #childView:Landroid/view/View;
    :cond_0
    if-nez v1, :cond_2

    .line 1651
    :goto_1
    return-void

    .line 1615
    .restart local v2       #childView:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1627
    .end local v2           #childView:Landroid/view/View;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1628
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mTimeIntervalForAlphaEffect:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1629
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1630
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1631
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1650
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public userStartAnimationEffectForAddFirstItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1558
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userAfterAnimation()V

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_1

    .line 1571
    :goto_0
    return-void

    .line 1566
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1567
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddItem:Z

    .line 1568
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    .line 1569
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    .line 1570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddItem(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public userStartAnimationEffectForAddItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 1592
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_2

    .line 1597
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userAfterAnimation()V

    .line 1600
    :cond_2
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1605
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddItem:Z

    .line 1606
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    .line 1607
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    .line 1608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddItem(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public userStartAnimationEffectForAddLastItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1589
    :goto_0
    return-void

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_1

    .line 1580
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userAfterAnimation()V

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1584
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsThisAnimatingForAddLastItem:Z

    .line 1585
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForAddItem:I

    .line 1586
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mStepForLastAddItem:I

    .line 1587
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->mIsBookedPosition:I

    .line 1588
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddLastItem()V

    goto :goto_0
.end method
