.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationEffectForShowHeaderAndViewOfListItem"
.end annotation


# instance fields
.field protected mHeaderViews:[Landroid/view/View;

.field protected mIsShowTransferHeaderView:Z

.field protected mIsShownForShowHeaderAndViewOfListItem:Z

.field protected mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

.field protected mMovingViewLength:I

.field protected mMovingViewResourceIds:[I

.field protected mOffsetMovingView:[I

.field protected mOffsetShowingView:[I

.field protected mOffsetViewLength:I

.field protected mShowingViewResorceIds:[I

.field protected mStepForShowHeaderAndViewOfListItem:I

.field protected mSumsetViewLength:I

.field protected mTimeIntervalForTransferEffect:I

.field protected mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

.field protected mTransferOffsetHeaderView:I

.field protected mTransferPositionHeaderView:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1685
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    .line 1665
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1666
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1668
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1670
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    .line 1671
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    .line 1672
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    .line 1673
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    .line 1675
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    .line 1676
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    .line 1677
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    .line 1678
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    .line 1680
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    .line 1681
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1682
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    .line 1683
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1687
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1688
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userSetOnAnimationListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;)V

    .line 1790
    return-void
.end method


# virtual methods
.method protected userAfterAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1995
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1996
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1997
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1998
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    .line 1999
    return-void
.end method

.method public userCancelAnimationEffectForShowHeaderAndViewOfListItem()V
    .locals 0

    .prologue
    .line 1816
    return-void
.end method

.method protected userGetHeadersHeight()I
    .locals 4

    .prologue
    .line 2031
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-nez v3, :cond_1

    .line 2032
    const/4 v0, 0x0

    .line 2041
    :cond_0
    return v0

    .line 2035
    :cond_1
    const/4 v0, 0x0

    .line 2036
    .local v0, height:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    array-length v2, v3

    .line 2037
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2038
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 2037
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I
    .locals 1

    .prologue
    .line 1808
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    return v0
.end method

.method public userHideHeaders()V
    .locals 4

    .prologue
    .line 2018
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2019
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    array-length v1, v2

    .line 2020
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2021
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->removeHeaderView(Landroid/view/View;)Z

    .line 2020
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2024
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2025
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2027
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V
    .locals 3
    .parameter "headerViews"
    .parameter "moveViewResourceIds"
    .parameter "showViewResorceIds"
    .parameter "movingViewLength"

    .prologue
    const/4 v2, 0x0

    .line 1844
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    .line 1845
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    .line 1846
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    .line 1847
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    .line 1849
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    .line 1850
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1851
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aput v2, v1, v0

    .line 1850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1854
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    .line 1855
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1856
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aput v2, v1, v0

    .line 1855
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1859
    :cond_1
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    .line 1860
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    .line 1862
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1863
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1864
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1865
    return-void
.end method

.method public userIsShownForShowHeaderAndViewOfListItem()Z
    .locals 1

    .prologue
    .line 1804
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    return v0
.end method

.method public userIsThisAnimatingForShowHeaderAndViewOfListItem()Z
    .locals 1

    .prologue
    .line 1800
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    return v0
.end method

.method public userMakeNewListItems()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2054
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v5

    .line 2055
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_9

    .line 2056
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2057
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7, v6}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 2059
    .local v4, position:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getHeaderViewsCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 2055
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2061
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getCount()I

    move-result v7

    sub-int/2addr v7, v4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getFooterViewsCount()I

    move-result v9

    if-le v7, v9, :cond_0

    .line 2065
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    if-eqz v7, :cond_6

    .line 2066
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v7, v7

    if-ge v2, v7, :cond_6

    .line 2067
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2068
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 2070
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lez v7, :cond_2

    .line 2071
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aget v7, v7, v2

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aget v7, v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v3, v7, v9

    .line 2072
    .local v3, offset:I
    :goto_2
    if-eqz v3, :cond_2

    .line 2073
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2077
    .end local v3           #offset:I
    :cond_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    if-lez v7, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2066
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v3, v8

    .line 2071
    goto :goto_2

    .line 2077
    :cond_5
    const/4 v7, 0x4

    goto :goto_3

    .line 2082
    .end local v0           #child:Landroid/view/View;
    .end local v2           #j:I
    :cond_6
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    if-eqz v7, :cond_0

    .line 2083
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 2084
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2085
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_7

    .line 2086
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lez v7, :cond_7

    .line 2087
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aget v7, v7, v2

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aget v7, v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v3, v7, v9

    .line 2088
    .restart local v3       #offset:I
    :goto_5
    if-eqz v3, :cond_7

    .line 2089
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2083
    .end local v3           #offset:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v3, v8

    .line 2087
    goto :goto_5

    .line 2096
    .end local v0           #child:Landroid/view/View;
    .end local v2           #j:I
    .end local v4           #position:I
    .end local v6           #view:Landroid/view/View;
    :cond_9
    return-void
.end method

.method protected userOffsetTopAndBottomItem(I)V
    .locals 4
    .parameter "offsetY"

    .prologue
    .line 2045
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v1

    .line 2046
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2047
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2048
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2050
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userRelease()V

    .line 1795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    .line 1797
    :cond_0
    return-void
.end method

.method public userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x4

    .line 1819
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userMakeNewListItems()V

    .line 1820
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1821
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userHideHeaders()V

    .line 1822
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1823
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1824
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStep1()V

    .line 1825
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_0

    .line 1826
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    if-ne v0, v2, :cond_3

    .line 1827
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStep2()V

    .line 1828
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_0

    .line 1829
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1830
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userAfterAnimation()V

    goto :goto_0

    .line 1831
    :cond_4
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 1832
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStep1()V

    .line 1833
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_0

    .line 1834
    :cond_5
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1836
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userOffsetTopAndBottomItem(I)V

    .line 1837
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userAfterAnimation()V

    goto :goto_0
.end method

.method public userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V
    .locals 0
    .parameter "timeInterval"

    .prologue
    .line 1812
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    .line 1813
    return-void
.end method

.method protected userShowHeaders()V
    .locals 4

    .prologue
    .line 2003
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2005
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2007
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    array-length v1, v2

    .line 2008
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2009
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->addHeaderView(Landroid/view/View;)V

    .line 2008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2012
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2014
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1904
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_1

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1921
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1923
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1924
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1869
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-boolean v1, v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v1, :cond_1

    .line 1900
    :cond_0
    :goto_0
    return-void

    .line 1873
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-nez v1, :cond_0

    .line 1877
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1881
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    .line 1886
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1887
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    aput v3, v1, v0

    .line 1886
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1890
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    .line 1891
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1892
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    aput v3, v1, v0

    .line 1891
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1895
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iput-boolean v2, v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 1896
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsThisAnimatingForShowHeaderAndViewOfListItem:Z

    .line 1897
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    .line 1898
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    .line 1899
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected userStep1()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1929
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v3, :cond_3

    .line 1931
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1933
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1934
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1935
    .local v0, view:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    .line 1936
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    .line 1938
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userShowHeaders()V

    .line 1939
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-nez v1, :cond_0

    .line 1940
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1941
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setSelection(I)V

    .line 1964
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #view:Landroid/view/View;
    :cond_1
    move v1, v2

    .line 1936
    goto :goto_0

    .line 1944
    .end local v0           #view:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->invalidate()V

    goto :goto_1

    .line 1948
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1949
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1950
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1951
    .restart local v0       #view:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    .line 1952
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    .line 1954
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getHeaderViewsCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1955
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-nez v1, :cond_4

    .line 1956
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setSelection(I)V

    .line 1962
    .end local v0           #view:Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation(I)V

    goto :goto_1

    .restart local v0       #view:Landroid/view/View;
    :cond_5
    move v1, v2

    .line 1952
    goto :goto_2
.end method

.method protected userStep2()V
    .locals 3

    .prologue
    .line 1968
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v1, :cond_2

    .line 1970
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1971
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-eqz v1, :cond_1

    .line 1972
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userGetHeadersHeight()I

    move-result v0

    .line 1973
    .local v0, height:I
    mul-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userOffsetTopAndBottomItem(I)V

    .line 1979
    .end local v0           #height:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTimeIntervalForTransferEffect:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation(I)V

    .line 1992
    :goto_1
    return-void

    .line 1975
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferOffsetHeaderView:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userOffsetTopAndBottomItem(I)V

    goto :goto_0

    .line 1982
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-eqz v1, :cond_3

    .line 1983
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userHideHeaders()V

    .line 1984
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userAfterAnimation()V

    goto :goto_1

    .line 1986
    :cond_3
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    .line 1987
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userHideHeaders()V

    .line 1988
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mTransferPositionHeaderView:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setSelection(I)V

    .line 1989
    const/16 v1, 0x9

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mStepForShowHeaderAndViewOfListItem:I

    goto :goto_1
.end method
