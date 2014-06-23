.class public Lcom/sec/android/touchwiz/widget/TwGridView;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "TwGridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 88
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 90
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 96
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 97
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 88
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 90
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 91
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 96
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 97
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 99
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 101
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 114
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 119
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->setHorizontalSpacing(I)V

    .line 121
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 123
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->setVerticalSpacing(I)V

    .line 125
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 126
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 127
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setStretchMode(I)V

    .line 130
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 131
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 132
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setColumnWidth(I)V

    .line 135
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 136
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNumColumns(I)V

    .line 138
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 139
    if-ltz v3, :cond_2

    .line 140
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setGravity(I)V

    .line 143
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 776
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 777
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 780
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 782
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 799
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 803
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 804
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 807
    .local v0, offset:I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 809
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2023
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2025
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 2029
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2032
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2033
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2034
    .local v2, delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2037
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2039
    :cond_0
    if-gez v2, :cond_1

    .line 2041
    const/4 v2, 0x0

    .line 2060
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2061
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 2064
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 2045
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2046
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2048
    .restart local v2       #delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2051
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2054
    :cond_4
    if-lez v2, :cond_1

    .line 2056
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1512
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1639
    :goto_0
    return v2

    .line 1516
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1517
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1520
    :cond_1
    const/4 v1, 0x0

    .line 1521
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1523
    .local v0, action:I
    if-eq v0, v3, :cond_2

    .line 1524
    sparse-switch p1, :sswitch_data_0

    .line 1623
    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    .line 1624
    goto :goto_0

    .line 1526
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1527
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1532
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1533
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1538
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1539
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 1540
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1541
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1546
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1547
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1548
    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1549
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 1555
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1556
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1557
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1559
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->keyPressed()V

    .line 1560
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1566
    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1567
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1568
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    .line 1569
    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1570
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    .line 1576
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1577
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    .line 1578
    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1579
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    .line 1584
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1585
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    .line 1586
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1587
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    .line 1592
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1593
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    .line 1598
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1599
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    .line 1627
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    .line 1628
    goto/16 :goto_0

    .line 1631
    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1633
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1635
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1637
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1524
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 1631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 580
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 581
    .local v6, lastPosition:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 583
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 586
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 588
    .local v4, lastBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 592
    .local v1, end:I
    sub-int v0, v1, v4

    .line 594
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 595
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 599
    .local v3, firstTop:I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 600
    :cond_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 602
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 606
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 607
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 610
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 613
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 617
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 620
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 622
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 625
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 628
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 631
    .local v6, start:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 635
    .local v0, end:I
    sub-int v7, v2, v6

    .line 636
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 637
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 638
    .local v3, lastBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 642
    .local v5, lastPosition:I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 643
    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 645
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 649
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 650
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 653
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 656
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 660
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .parameter "availableSpace"

    .prologue
    const/4 v7, 0x1

    .line 929
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 930
    .local v2, requestedHorizontalSpacing:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 931
    .local v4, stretchMode:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 932
    .local v1, requestedColumnWidth:I
    const/4 v0, 0x0

    .line 934
    .local v0, didNotInitiallyFit:Z
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 935
    if-lez v1, :cond_2

    .line 937
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 948
    :goto_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 949
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 952
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 960
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 963
    .local v3, spaceLeftOver:I
    if-gez v3, :cond_1

    .line 964
    const/4 v0, 0x1

    .line 967
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 999
    .end local v3           #spaceLeftOver:I
    :goto_1
    return v0

    .line 941
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_0

    .line 945
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_0

    .line 955
    :pswitch_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 956
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 970
    .restart local v3       #spaceLeftOver:I
    :pswitch_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 971
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 976
    :pswitch_2
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 977
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 978
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 981
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 987
    :pswitch_3
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 988
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 989
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 992
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 967
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int v0, v3, v4

    .line 280
    .local v0, end:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 281
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 284
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 285
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 287
    move-object v1, v2

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 294
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 295
    goto :goto_0

    .line 297
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 411
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 412
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 414
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 415
    .local v0, invertedPosition:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 674
    .local v2, fadingEdgeLength:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 675
    .local v9, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 676
    .local v4, numColumns:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 679
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 681
    .local v6, rowEnd:I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 682
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 693
    .local v7, rowStart:I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 694
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 697
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 699
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 701
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 702
    .local v5, referenceView:Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 703
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 705
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 706
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 707
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 708
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 716
    :goto_2
    return-object v8

    .line 684
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_0
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 686
    .local v3, invertedSelection:I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 687
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_1
    move v12, v7

    .line 697
    goto :goto_1

    .line 710
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 711
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 712
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 401
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 402
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 403
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 406
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 407
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 422
    .local v10, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 423
    .local v4, numColumns:I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 426
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 428
    .local v7, rowEnd:I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 429
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 437
    .local v8, rowStart:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 438
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 440
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 441
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 443
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 445
    .local v6, referenceView:Landroid/view/View;
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 446
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 447
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToBottom(I)V

    .line 448
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 449
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 461
    :goto_2
    return-object v9

    .line 431
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_0
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 433
    .local v3, invertedSelection:I
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 434
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_1
    move v13, v8

    .line 440
    goto :goto_1

    .line 451
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 453
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 454
    .local v5, offset:I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 455
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 456
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToTop(I)V

    .line 457
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 458
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    .line 519
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 522
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 524
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 525
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 533
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 536
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 538
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 540
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_3

    .line 541
    const/4 v8, 0x0

    .line 574
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 527
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 529
    .local v3, invertedSelection:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 530
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_2
    move v10, v5

    .line 533
    goto :goto_1

    .line 544
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 549
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 550
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 552
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 554
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 555
    .local v2, childCount:I
    if-lez v2, :cond_4

    .line 556
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 569
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 571
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 572
    goto :goto_2

    .line 559
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 560
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 561
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 563
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 564
    .restart local v2       #childCount:I
    if-lez v2, :cond_4

    .line 565
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 574
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 364
    const/4 v1, 0x0

    .line 366
    .local v1, selectedView:Landroid/view/View;
    const/4 v0, 0x0

    .line 367
    .local v0, end:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 368
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 371
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 373
    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 374
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 375
    move-object v1, v2

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 380
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 382
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 383
    goto :goto_0

    .line 385
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 386
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 389
    :cond_3
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 731
    move v0, p1

    .line 732
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 733
    sub-int/2addr v0, p2

    .line 735
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 748
    move v0, p1

    .line 749
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 750
    add-int/2addr v0, p2

    .line 752
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1870
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 1871
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1876
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 1877
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1878
    .local v3, rowStart:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1884
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1905
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1880
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1881
    .restart local v2       #rowEnd:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 1888
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 1903
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 1888
    goto :goto_1

    .line 1891
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 1894
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 1897
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 1900
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 1903
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 1884
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1317
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1320
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1332
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 1327
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1330
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1332
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 301
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 302
    .local v8, columnWidth:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 305
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    .line 308
    .local v4, nextLeft:I
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 309
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 319
    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 321
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v9

    .line 322
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 323
    .local v11, inClick:Z
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 325
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 326
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 328
    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    .line 331
    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 332
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 334
    add-int/2addr v4, v8

    .line 335
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    .line 336
    add-int/2addr v4, v10

    .line 339
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 340
    :cond_2
    move-object v14, v7

    .line 326
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 312
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 314
    sub-int v0, v12, p1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-ge v0, v2, :cond_0

    .line 315
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    .line 328
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 331
    .restart local v5       #selected:Z
    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    .line 344
    .end local v5           #selected:Z
    :cond_8
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 346
    if-eqz v14, :cond_9

    .line 347
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 350
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 846
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 847
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 848
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 852
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 854
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 855
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 857
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 869
    .local v14, rowStart:I
    :goto_0
    sub-int v12, v14, v9

    .line 871
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 872
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 876
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 881
    if-lez v12, :cond_3

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 889
    .local v8, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 890
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 892
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 915
    .end local v8           #oldBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 916
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 917
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 918
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 925
    :goto_4
    return-object v15

    .line 859
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 861
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 862
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 864
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 866
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 886
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8       #oldBottom:I
    :cond_2
    move/from16 v19, v14

    .line 889
    goto/16 :goto_2

    .line 893
    .end local v8           #oldBottom:I
    :cond_3
    if-gez v12, :cond_6

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 900
    .local v10, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 901
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 903
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 897
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10       #oldTop:I
    :cond_5
    move/from16 v19, v14

    .line 900
    goto :goto_6

    .line 908
    .end local v10           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 911
    .restart local v10       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 912
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 908
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10       #oldTop:I
    :cond_8
    move/from16 v19, v14

    .line 911
    goto :goto_8

    .line 920
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 922
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 476
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 477
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 478
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 479
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 480
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 483
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 465
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 466
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 467
    .local v1, top:I
    sub-int v0, p1, v1

    .line 468
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 469
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 472
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1353
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1354
    .local v14, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1355
    .local v20, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1356
    .local v16, mode:I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1358
    .local v13, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1360
    .local v19, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1364
    .local v17, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1365
    .local v18, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1366
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v18           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1369
    .restart local v18       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1371
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    :goto_5
    if-eqz v20, :cond_2

    .line 1379
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1380
    if-eqz v14, :cond_2

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestFocus()Z

    .line 1385
    :cond_2
    if-eqz v19, :cond_3

    .line 1386
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1389
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1390
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1391
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1398
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1399
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1402
    .local v7, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1404
    .local v11, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1409
    .end local v7           #childHeightSpec:I
    .end local v11           #childWidthSpec:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1410
    .local v21, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1413
    .local v12, h:I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1415
    .local v10, childTop:I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getResolvedLayoutDirection()I

    move-result v15

    .line 1416
    .local v15, layoutDirection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1417
    .local v5, absoluteGravity:I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1428
    :pswitch_0
    move/from16 v8, p5

    .line 1432
    .local v8, childLeft:I
    :goto_9
    if-eqz v17, :cond_10

    .line 1433
    add-int v9, v8, v21

    .line 1434
    .local v9, childRight:I
    add-int v6, v10, v12

    .line 1435
    .local v6, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1441
    .end local v6           #childBottom:I
    .end local v9           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1442
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1445
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1447
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1449
    :cond_6
    return-void

    .line 1353
    .end local v5           #absoluteGravity:I
    .end local v8           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v15           #layoutDirection:I
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v19           #updateChildPressed:Z
    .end local v20           #updateChildSelected:Z
    .end local v21           #w:I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1354
    .restart local v14       #isSelected:Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1356
    .restart local v16       #mode:I
    .restart local v20       #updateChildSelected:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1358
    .restart local v13       #isPressed:Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1360
    .restart local v19       #updateChildPressed:Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1374
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1375
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1392
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1406
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1413
    .restart local v12       #h:I
    .restart local v21       #w:I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1419
    .restart local v5       #absoluteGravity:I
    .restart local v10       #childTop:I
    .restart local v15       #layoutDirection:I
    :pswitch_1
    move/from16 v8, p5

    .line 1420
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1422
    .end local v8           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1423
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1425
    .end local v8           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1426
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1437
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1438
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1705
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1706
    .local v4, selectedPosition:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1711
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1713
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1714
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1715
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1722
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1753
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1754
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1755
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1758
    :cond_1
    if-eqz v2, :cond_2

    .line 1759
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1762
    :cond_2
    return v2

    .line 1717
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1718
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1719
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1724
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1725
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1726
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1727
    const/4 v2, 0x1

    goto :goto_1

    .line 1731
    :sswitch_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1732
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1733
    add-int v6, v4, v3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1734
    const/4 v2, 0x1

    goto :goto_1

    .line 1738
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1739
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1740
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1741
    const/4 v2, 0x1

    goto :goto_1

    .line 1745
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1746
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1747
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1748
    const/4 v2, 0x1

    goto :goto_1

    .line 1722
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1094
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1097
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1099
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1102
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1103
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1104
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1105
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1107
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1108
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1109
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1116
    :goto_0
    return-void

    .line 1111
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1113
    .local v1, invertedIndex:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1114
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 2068
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2069
    .local v1, count:I
    if-lez v1, :cond_3

    .line 2070
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2071
    .local v4, numColumns:I
    add-int v11, v1, v4

    add-int/lit8 v11, v11, -0x1

    div-int v7, v11, v4

    .line 2073
    .local v7, rowCount:I
    mul-int/lit8 v2, v7, 0x64

    .line 2075
    .local v2, extent:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2076
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2077
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2078
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2079
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v3

    add-int/2addr v2, v10

    .line 2082
    :cond_0
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2083
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2084
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2085
    if-lez v3, :cond_1

    .line 2086
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v2, v10

    .line 2089
    :cond_1
    move v6, v2

    .line 2091
    .local v6, retVal:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollRange()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 2093
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 2095
    .local v5, ratio:F
    int-to-float v10, v6

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .line 2099
    .end local v5           #ratio:F
    :cond_2
    const/4 v10, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2101
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v6           #retVal:I
    .end local v7           #rowCount:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :cond_3
    return v10
.end method

.method protected computeVerticalScrollOffset()I
    .locals 14

    .prologue
    .line 2106
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v11, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_2

    .line 2107
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2108
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2109
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2110
    .local v1, height:I
    const/4 v4, 0x0

    .line 2111
    .local v4, retVal:I
    if-lez v1, :cond_0

    .line 2112
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2113
    .local v3, numColumns:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    div-int v10, v11, v3

    .line 2114
    .local v10, whichRow:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x1

    div-int v5, v11, v3

    .line 2117
    .local v5, rowCount:I
    mul-int/lit8 v11, v10, 0x64

    mul-int/lit8 v12, v8, 0x64

    div-int/2addr v12, v1

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    int-to-float v13, v5

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c8

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2121
    .end local v3           #numColumns:I
    .end local v5           #rowCount:I
    .end local v10           #whichRow:I
    :cond_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 2122
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v6, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2123
    .local v6, savedBounceExtent:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollExtent()I

    move-result v7

    .line 2124
    .local v7, shrinkedScrollExtent:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v12, 0x0

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2125
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollExtent()I

    move-result v2

    .line 2126
    .local v2, normalScrollExtent:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v6, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2128
    sub-int v0, v2, v7

    .line 2130
    .local v0, delta:I
    add-int/2addr v4, v0

    .line 2135
    .end local v0           #delta:I
    .end local v1           #height:I
    .end local v2           #normalScrollExtent:I
    .end local v4           #retVal:I
    .end local v6           #savedBounceExtent:F
    .end local v7           #shrinkedScrollExtent:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2141
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2142
    .local v0, numColumns:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2143
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2144
    .local v1, result:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2146
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2148
    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 9
    .parameter "down"

    .prologue
    const/16 v8, 0x22

    .line 229
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 230
    .local v1, numColumns:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 232
    .local v6, verticalSpacing:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 234
    .local v0, count:I
    if-eqz p1, :cond_3

    .line 235
    const/4 v3, 0x0

    .line 236
    .local v3, paddingTop:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingTop()I

    move-result v3

    .line 239
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 241
    .local v5, startOffset:I
    :goto_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 242
    .local v4, position:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 243
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 245
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 263
    .end local v3           #paddingTop:I
    :goto_1
    return-void

    .end local v4           #position:I
    .end local v5           #startOffset:I
    .restart local v3       #paddingTop:I
    :cond_2
    move v5, v3

    .line 239
    goto :goto_0

    .line 248
    .end local v3           #paddingTop:I
    :cond_3
    const/4 v2, 0x0

    .line 249
    .local v2, paddingBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingBottom()I

    move-result v2

    .line 252
    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 254
    .restart local v5       #startOffset:I
    :goto_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 255
    .restart local v4       #position:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 256
    sub-int/2addr v4, v1

    .line 260
    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_1

    .line 252
    .end local v4           #position:I
    .end local v5           #startOffset:I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 258
    .restart local v4       #position:I
    .restart local v5       #startOffset:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 488
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 490
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 491
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 492
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 493
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 494
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 505
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 492
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 498
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 499
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 500
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 498
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 505
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1676
    const/4 v0, 0x0

    .line 1677
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1678
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1679
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1680
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1681
    const/4 v0, 0x1

    .line 1689
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1690
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1693
    :cond_1
    return v0

    .line 1682
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1683
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1684
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1686
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2015
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 1974
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1120
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1121
    .local v3, blockLayoutRequests:Z
    if-nez v3, :cond_0

    .line 1122
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1126
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    if-nez v3, :cond_1

    .line 1290
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1293
    :cond_1
    :goto_0
    return-void

    .line 1136
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1137
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1139
    .local v6, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v5

    .line 1141
    .local v5, childCount:I
    const/4 v9, 0x0

    .line 1144
    .local v9, delta:I
    const/16 v16, 0x0

    .line 1145
    .local v16, oldSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1146
    .local v15, oldFirst:Landroid/view/View;
    const/4 v14, 0x0

    .line 1149
    .local v14, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1169
    .local v12, index:I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1174
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1177
    .end local v12           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1178
    .local v8, dataChanged:Z
    if-eqz v8, :cond_5

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->handleDataChanged()V

    .line 1184
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1289
    if-nez v3, :cond_1

    .line 1290
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1151
    .end local v8           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1152
    .restart local v12       #index:I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1153
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1162
    .end local v12           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1190
    .restart local v8       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1194
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1195
    .local v10, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1197
    .local v17, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1198
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1198
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1202
    .end local v11           #i:I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1207
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->detachAllViewsFromParent()V

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1237
    if-nez v5, :cond_12

    .line 1238
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_e

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1241
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1263
    .end local v7           #childrenTop:I
    .local v18, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1265
    if-eqz v18, :cond_17

    .line 1266
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    .line 1267
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1276
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1277
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1278
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->updateScrollIndicators()V

    .line 1283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_b

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 1287
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1289
    if-nez v3, :cond_1

    .line 1290
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1211
    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :pswitch_3
    if-eqz v14, :cond_c

    .line 1212
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1214
    .end local v18           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1216
    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1218
    .end local v18           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1219
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1220
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1289
    .end local v5           #childCount:I
    .end local v6           #childrenBottom:I
    .end local v7           #childrenTop:I
    .end local v8           #dataChanged:Z
    .end local v9           #delta:I
    .end local v10           #firstPosition:I
    .end local v14           #newSel:Landroid/view/View;
    .end local v15           #oldFirst:Landroid/view/View;
    .end local v16           #oldSel:Landroid/view/View;
    .end local v17           #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .end local v18           #sel:Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_d

    .line 1290
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_d
    throw v19

    .line 1223
    .restart local v5       #childCount:I
    .restart local v6       #childrenBottom:I
    .restart local v7       #childrenTop:I
    .restart local v8       #dataChanged:Z
    .restart local v9       #delta:I
    .restart local v10       #firstPosition:I
    .restart local v14       #newSel:Landroid/view/View;
    .restart local v15       #oldFirst:Landroid/view/View;
    .restart local v16       #oldSel:Landroid/view/View;
    .restart local v17       #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1224
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1227
    .end local v18           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1228
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1230
    .end local v18           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1231
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1234
    .end local v18           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1235
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1239
    .end local v18           #sel:Landroid/view/View;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1243
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1244
    .local v13, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_10
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1246
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1247
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    :cond_11
    move/from16 v19, v13

    .line 1244
    goto :goto_6

    .line 1249
    .end local v13           #last:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    .line 1250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_13

    .end local v7           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_13
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1252
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 1253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_15

    .end local v7           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_15
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1256
    :cond_16
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1268
    .end local v7           #childrenTop:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    .line 1269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1270
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1272
    .end local v4           #child:Landroid/view/View;
    :cond_18
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 213
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 214
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 221
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 218
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 219
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1825
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1827
    const/4 v1, -0x1

    .line 1828
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1829
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1833
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1834
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1835
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 1836
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1838
    invoke-direct {p0, v3, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1836
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1842
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1843
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1844
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1845
    invoke-static {p3, v6, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1847
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 1848
    move v4, v2

    .line 1849
    move v1, v3

    goto :goto_1

    .line 1854
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1855
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelection(I)V

    .line 1859
    :goto_2
    return-void

    .line 1857
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2153
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2154
    const-class v0, Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2155
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2159
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2160
    const-class v0, Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2161
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1498
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1503
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1508
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1005
    invoke-super/range {p0 .. p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onMeasure(II)V

    .line 1007
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1008
    .local v18, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1009
    .local v12, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1010
    .local v19, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1012
    .local v13, heightSize:I
    if-nez v18, :cond_0

    .line 1013
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1018
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1021
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 1022
    .local v8, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->determineColumns(I)Z

    move-result v11

    .line 1024
    .local v11, didNotInitiallyFit:Z
    const/4 v5, 0x0

    .line 1025
    .local v5, childHeight:I
    const/4 v7, 0x0

    .line 1027
    .local v7, childState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1028
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1029
    .local v10, count:I
    if-lez v10, :cond_2

    .line 1030
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 1032
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1033
    .local v17, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v17, :cond_1

    .line 1034
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v17           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1036
    .restart local v17       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1039
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1041
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1043
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1045
    .local v9, childWidthSpec:I
    invoke-virtual {v4, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1047
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1048
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->combineMeasuredStates(II)I

    move-result v7

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1055
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v17           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_2
    if-nez v12, :cond_3

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1060
    :cond_3
    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1063
    .local v16, ourSize:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1064
    .local v15, numColumns:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v10, :cond_5

    .line 1065
    add-int v16, v16, v5

    .line 1066
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    .line 1067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1069
    :cond_4
    move/from16 v0, v16

    if-lt v0, v13, :cond_b

    .line 1070
    move/from16 v16, v13

    .line 1074
    :cond_5
    move/from16 v13, v16

    .line 1077
    .end local v14           #i:I
    .end local v15           #numColumns:I
    .end local v16           #ourSize:I
    :cond_6
    const/high16 v20, -0x8000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1081
    .restart local v16       #ourSize:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    if-eqz v11, :cond_8

    .line 1082
    :cond_7
    const/high16 v20, 0x100

    or-int v19, v19, v20

    .line 1086
    .end local v16           #ourSize:I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->setMeasuredDimension(II)V

    .line 1087
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 1088
    return-void

    .line 1016
    .end local v5           #childHeight:I
    .end local v7           #childState:I
    .end local v8           #childWidth:I
    .end local v10           #count:I
    .end local v11           #didNotInitiallyFit:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_0

    .line 1027
    .restart local v5       #childHeight:I
    .restart local v7       #childState:I
    .restart local v8       #childWidth:I
    .restart local v11       #didNotInitiallyFit:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    .line 1064
    .restart local v10       #count:I
    .restart local v14       #i:I
    .restart local v15       #numColumns:I
    .restart local v16       #ourSize:I
    :cond_b
    add-int/2addr v14, v15

    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1650
    const/4 v0, -0x1

    .line 1652
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1653
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1658
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1659
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1660
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1661
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1662
    const/4 v1, 0x1

    .line 1665
    :cond_1
    return v1

    .line 1654
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1655
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13
    .parameter "direction"

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1770
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1771
    .local v5, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1772
    .local v4, numColumns:I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1776
    .local v0, count:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1777
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1778
    .local v7, startOfRow:I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1785
    .local v1, endOfRow:I
    :goto_0
    const/4 v3, 0x0

    .line 1786
    .local v3, moved:Z
    const/4 v6, 0x0

    .line 1787
    .local v6, showScroll:Z
    packed-switch p1, :pswitch_data_0

    .line 1811
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1812
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1813
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1816
    :cond_1
    if-eqz v6, :cond_2

    .line 1817
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1820
    :cond_2
    return v3

    .line 1780
    .end local v1           #endOfRow:I
    .end local v3           #moved:Z
    .end local v6           #showScroll:Z
    .end local v7           #startOfRow:I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1781
    .local v2, invertedSelection:I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1782
    .restart local v1       #endOfRow:I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #startOfRow:I
    goto :goto_0

    .line 1789
    .end local v2           #invertedSelection:I
    .restart local v3       #moved:Z
    .restart local v6       #showScroll:Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1791
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1792
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1793
    const/4 v3, 0x1

    .line 1795
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1800
    :pswitch_1
    if-lez v5, :cond_0

    .line 1802
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1803
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1804
    const/4 v3, 0x1

    .line 1806
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 173
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 174
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 176
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 177
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 180
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 183
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 184
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 185
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 188
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 189
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 194
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 195
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 199
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 208
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 209
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 203
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 1985
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 1986
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 1987
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1989
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1919
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1920
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 1921
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1923
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 1935
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1936
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 1937
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1939
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 1999
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2000
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    .line 2001
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2003
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1466
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1467
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 1468
    return-void

    .line 1464
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1477
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 1479
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1480
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1482
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1484
    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1487
    .local v2, previous:I
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1488
    .local v1, nextRow:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1490
    .local v3, previousRow:I
    if-eq v1, v3, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1494
    :cond_0
    return-void

    .line 1482
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0       #next:I
    :cond_2
    move v2, v4

    .line 1484
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 1967
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 1968
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 1969
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1971
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 1952
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1953
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 1954
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1956
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 828
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollByOffset(I)V

    .line 829
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 818
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 819
    return-void
.end method
