.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected mMoveTransferHeaderView:I

.field protected mMoveTransferView:I

.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

.field final synthetic val$this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1688
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->val$this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1690
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferHeaderView:I

    .line 1691
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferView:I

    return-void
.end method


# virtual methods
.method protected userMoveListViews()V
    .locals 8

    .prologue
    .line 1737
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v4

    .line 1738
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_9

    .line 1739
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1740
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1742
    .local v3, position:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getHeaderViewsCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 1738
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1744
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getFooterViewsCount()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1748
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    if-eqz v6, :cond_6

    .line 1749
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    array-length v6, v6

    if-ge v2, v6, :cond_6

    .line 1750
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mShowingViewResorceIds:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1751
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1752
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lez v6, :cond_3

    .line 1753
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    if-eqz v6, :cond_2

    .line 1754
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    invoke-virtual {v0, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1755
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1758
    :cond_2
    add-int/lit8 v6, v4, -0x1

    if-ne v1, v6, :cond_3

    .line 1759
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetShowingView:[I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    aput v7, v6, v2

    .line 1763
    :cond_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    if-lez v6, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1763
    :cond_5
    const/4 v6, 0x4

    goto :goto_2

    .line 1768
    .end local v0           #child:Landroid/view/View;
    .end local v2           #j:I
    :cond_6
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    if-eqz v6, :cond_0

    .line 1770
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 1771
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewResourceIds:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1772
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_8

    .line 1773
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lez v6, :cond_8

    .line 1774
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    if-eqz v6, :cond_7

    .line 1775
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    invoke-virtual {v0, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1776
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1779
    :cond_7
    add-int/lit8 v6, v4, -0x1

    if-ne v1, v6, :cond_8

    .line 1780
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetMovingView:[I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    aput v7, v6, v2

    .line 1770
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1787
    .end local v0           #child:Landroid/view/View;
    .end local v2           #j:I
    .end local v3           #position:I
    .end local v5           #view:Landroid/view/View;
    :cond_9
    return-void
.end method

.method public userOnApplyTransformation(F)V
    .locals 6
    .parameter "interpolatedTime"

    .prologue
    .line 1695
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mHeaderViews:[Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1696
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShowTransferHeaderView:Z

    if-eqz v3, :cond_0

    .line 1697
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userGetHeadersHeight()I

    move-result v0

    .line 1698
    .local v0, height:I
    int-to-float v3, v0

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 1699
    .local v1, moveTransfer:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferHeaderView:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userOffsetTopAndBottomItem(I)V

    .line 1700
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferHeaderView:I

    .line 1704
    .end local v0           #height:I
    .end local v1           #moveTransfer:I
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 1705
    .restart local v1       #moveTransfer:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferView:I

    sub-int v2, v1, v3

    .line 1706
    .local v2, offsetX:I
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferView:I

    .line 1708
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    :goto_0
    iput v3, v4, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    .line 1710
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v4, :cond_1

    mul-int/lit8 v2, v2, -0x1

    .end local v2           #offsetX:I
    :cond_1
    iput v2, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    .line 1712
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->userMoveListViews()V

    .line 1713
    return-void

    .line 1708
    .restart local v2       #offsetX:I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    int-to-float v3, v3

    const/high16 v5, 0x3f80

    sub-float/2addr v5, p1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0
.end method

.method public userOnBeginAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1716
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferHeaderView:I

    .line 1717
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->mMoveTransferView:I

    .line 1718
    return-void
.end method

.method public userOnCancelAnimation()V
    .locals 0

    .prologue
    .line 1733
    return-void
.end method

.method public userOnEndAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1722
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mMovingViewLength:I

    :goto_0
    iput v0, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mSumsetViewLength:I

    .line 1723
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mOffsetViewLength:I

    .line 1725
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->mIsShownForShowHeaderAndViewOfListItem:Z

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userAfterAnimation()V

    .line 1730
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1722
    goto :goto_0

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStep2()V

    goto :goto_1
.end method
