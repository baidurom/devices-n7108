.class public Lcom/sec/android/touchwiz/widget/TwListView;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "TwListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwListView$1;,
        Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;,
        Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;,
        Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field static final TAG:Ljava/lang/String; = "TwListView"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field protected mShowAnimationOnDataChange:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 161
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 117
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 135
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 137
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    .line 140
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 146
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;-><init>(Lcom/sec/android/touchwiz/widget/TwListView$1;)V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    .line 167
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 170
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 171
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 172
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 185
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 186
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 191
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 192
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 198
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 199
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setDividerHeight(I)V

    .line 202
    :cond_4
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    .line 203
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v6

    if-ge v6, v11, :cond_5

    .line 210
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 211
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->setFadingEdgeLength(I)V

    .line 213
    :cond_5
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3074
    add-int/lit8 v2, p2, -0x1

    .line 3075
    .local v2, abovePosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3076
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3078
    .local v3, edgeOfNewChild:I
    if-eqz v1, :cond_0

    .line 3079
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3082
    :cond_0
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3086
    add-int/lit8 v2, p2, 0x1

    .line 3087
    .local v2, belowPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3088
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3089
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3090
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 231
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 234
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 237
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 239
    .local v2, delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 242
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 244
    :cond_0
    if-gez v2, :cond_1

    .line 247
    const/4 v2, 0x0

    .line 265
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 266
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 269
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 251
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 254
    .restart local v2       #delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 257
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 260
    :cond_4
    if-lez v2, :cond_1

    .line 261
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2669
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2671
    .local v5, listTop:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    .line 2673
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2674
    add-int/lit8 v3, v7, -0x1

    .line 2675
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2676
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2679
    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2680
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2682
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2683
    .local v1, goalBottom:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2684
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2687
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2689
    const/4 v10, 0x0

    .line 2737
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2692
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2696
    const/4 v10, 0x0

    goto :goto_0

    .line 2699
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2701
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2703
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2704
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2707
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2709
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2710
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2711
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2713
    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2714
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2715
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2716
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2717
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2719
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2721
    const/4 v10, 0x0

    goto :goto_0

    .line 2724
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2728
    const/4 v10, 0x0

    goto :goto_0

    .line 2731
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2732
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2734
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2735
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2737
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2928
    const/4 v0, 0x0

    .line 2929
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2930
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2931
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2932
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2933
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2934
    if-lez p3, :cond_0

    .line 2935
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2947
    :cond_0
    :goto_0
    return v0

    .line 2939
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2940
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2941
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2942
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 2943
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    .locals 17
    .parameter "direction"

    .prologue
    .line 2827
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2829
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2830
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2831
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2853
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2854
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2858
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2859
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2860
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 2862
    :cond_1
    const/4 v14, 0x0

    .line 2885
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_1
    return-object v14

    .line 2833
    .end local v7           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2834
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 2835
    .local v12, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 2837
    .local v5, listTop:I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2840
    .local v13, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2850
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_0

    .line 2834
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2835
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5       #listTop:I
    :cond_5
    move v13, v5

    .line 2837
    goto :goto_4

    .line 2842
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 2843
    .local v2, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 2845
    .local v4, listBottom:I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2848
    .restart local v13       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2842
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2843
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4       #listBottom:I
    :cond_9
    move v13, v4

    .line 2845
    goto :goto_8

    .line 2866
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2868
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getMaxScrollAmount()I

    move-result v6

    .line 2869
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_b

    .line 2871
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2872
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->populate(II)V

    .line 2873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2874
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 2880
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2881
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->populate(II)V

    .line 2882
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 2885
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2444
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2522
    :cond_0
    :goto_0
    return v9

    .line 2448
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2449
    .local v6, selectedView:Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 2451
    .local v5, selectedPos:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2452
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->amountToScroll(II)I

    move-result v0

    .line 2455
    .local v0, amountToScroll:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2457
    .local v1, focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2458
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2459
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2462
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2463
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2464
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2466
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 2467
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 2468
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2469
    move v5, v4

    .line 2470
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2473
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2474
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2475
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2478
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2479
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    .line 2482
    :cond_4
    if-lez v0, :cond_5

    .line 2483
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->scrollListItemsBy(I)V

    .line 2484
    const/4 v3, 0x1

    .line 2489
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2491
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2492
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2493
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2499
    .end local v2           #focused:Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2501
    const/4 v6, 0x0

    .line 2502
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hideSelector()V

    .line 2507
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 2510
    :cond_8
    if-eqz v3, :cond_0

    .line 2511
    if-eqz v6, :cond_9

    .line 2512
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 2513
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 2515
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2516
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 2518
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2519
    goto/16 :goto_0

    .line 2455
    .end local v1           #focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/sec/android/touchwiz/widget/TwListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2462
    goto/16 :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_d
    move v7, v9

    .line 2464
    goto :goto_3

    .line 2483
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 542
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 544
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 545
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 546
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 547
    .local v3, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 548
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 544
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2122
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2279
    :cond_1
    :goto_0
    return v4

    .line 2126
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2127
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 2130
    :cond_3
    const/4 v2, 0x0

    .line 2131
    .local v2, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2133
    .local v0, action:I
    if-eq v0, v4, :cond_4

    .line 2134
    sparse-switch p1, :sswitch_data_0

    .line 2260
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2264
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2268
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2279
    goto :goto_0

    .line 2136
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2137
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2138
    if-nez v2, :cond_4

    move v1, p2

    .line 2139
    .end local p2
    .local v1, count:I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2140
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2141
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_2

    .line 2147
    .end local v1           #count:I
    .restart local p2
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2148
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2156
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2157
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2158
    if-nez v2, :cond_4

    move v1, p2

    .line 2159
    .end local p2
    .restart local v1       #count:I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_4

    .line 2160
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2161
    const/4 v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_4

    .line 2167
    .end local v1           #count:I
    .restart local p2
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2168
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2176
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2177
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2182
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2183
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2189
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2190
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2191
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2192
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->keyPressed()V

    .line 2193
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2199
    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2200
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2201
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2205
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2201
    goto :goto_6

    .line 2202
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2203
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2210
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2211
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2212
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2213
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2218
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2219
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2220
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2221
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2226
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2227
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2232
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2233
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2270
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2273
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2276
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2134
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    .line 1401
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1402
    .local v6, lastPosition:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1405
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1408
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1411
    .local v4, lastBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1416
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1417
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1418
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1424
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldCorrectTooHigh()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1426
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1428
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1431
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 1432
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1436
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 1438
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1443
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2958
    const/4 v0, 0x0

    .line 2959
    .local v0, distance:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2960
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2961
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2962
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2963
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2967
    :cond_0
    :goto_0
    return v0

    .line 2964
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2965
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 812
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 813
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 814
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 815
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 816
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 822
    :goto_0
    return-void

    .line 818
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 819
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 820
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 781
    sub-int v6, p2, p1

    .line 783
    .local v6, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->reconcileSelectedPosition()I

    move-result v1

    .line 785
    .local v1, position:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 786
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 788
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 789
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 790
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 793
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 795
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 801
    :goto_0
    return-object v7

    .line 798
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 836
    .local v8, fadingEdgeLength:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 840
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 842
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 845
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 848
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 851
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 855
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 856
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 859
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 875
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 877
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 883
    :goto_1
    return-object v10

    .line 860
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 863
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 867
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 868
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 871
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 880
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 762
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 763
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 764
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 767
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1347
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1348
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1350
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1355
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 1356
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1357
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1360
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1361
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1362
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v8

    .line 1363
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1364
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 1378
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1383
    .end local v10           #temp:Landroid/view/View;
    :goto_2
    return-object v10

    .line 1347
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1367
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1370
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1371
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1372
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v8

    .line 1373
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1374
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_1

    .line 1380
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1381
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1383
    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2651
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 896
    move v0, p1

    .line 897
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 898
    sub-int/2addr v0, p2

    .line 900
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 913
    move v0, p1

    .line 914
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 915
    add-int/2addr v0, p2

    .line 917
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2376
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2377
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2381
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v3

    .line 2382
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2383
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2384
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2387
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2388
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2390
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2393
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2394
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2395
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2396
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2397
    const/4 v5, 0x1

    .line 2413
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2406
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2408
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2409
    invoke-direct {p0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2413
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2542
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2543
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2553
    :cond_0
    const/4 v5, 0x0

    .line 2554
    .local v5, topSelected:Z
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2555
    .local v4, selectedIndex:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2556
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2557
    move v7, v2

    .line 2558
    .local v7, topViewIndex:I
    move v1, v4

    .line 2559
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2560
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2561
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2569
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v3

    .line 2572
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2573
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2574
    invoke-direct {p0, v6, v7, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2578
    :cond_1
    if-eqz v0, :cond_2

    .line 2579
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2580
    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2582
    :cond_2
    return-void

    .line 2563
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2564
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2565
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2566
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2573
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2579
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1778
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1779
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1780
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1781
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1792
    :goto_1
    return v5

    .line 1780
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1785
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1786
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1787
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1788
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1789
    goto :goto_1

    .line 1787
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1792
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2908
    if-ne p1, p2, :cond_1

    .line 2913
    :cond_0
    :goto_0
    return v1

    .line 2912
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2913
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2776
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2777
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2778
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2780
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2814
    :cond_0
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_1
    move v5, v1

    .line 2778
    goto :goto_0

    .line 2783
    .restart local v5       #startPos:I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2784
    move v5, v1

    .line 2787
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getLastVisiblePosition()I

    move-result v3

    .line 2788
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2789
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2790
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2789
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2796
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2797
    .local v2, last:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2799
    .restart local v5       #startPos:I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2800
    goto :goto_1

    .line 2797
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2802
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2803
    move v5, v2

    .line 2806
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2807
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2808
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2807
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 2814
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1812
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1815
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1823
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1839
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1831
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1835
    .restart local v1       #child:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1836
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    move-object v8, v1

    .line 1839
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2593
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2594
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureItem(Landroid/view/View;)V

    .line 2595
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2597
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2600
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2601
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2602
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2605
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2613
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2614
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2615
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2619
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2621
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2623
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2624
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2628
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2629
    return-void

    .line 2626
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1189
    .local v3, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1190
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v3           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1192
    .restart local v3       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1195
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1197
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1199
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1201
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1202
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1206
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1207
    return-void

    .line 1204
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 963
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 967
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 969
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 972
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 985
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 988
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 991
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 996
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1000
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1004
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1007
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1008
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1009
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1012
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1014
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1018
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1019
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 1020
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1021
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1096
    .end local v9           #dividerHeight:I
    :goto_0
    return-object v14

    .line 1023
    .restart local v9       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1024
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1025
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1027
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1039
    if-eqz p2, :cond_4

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1052
    .restart local v14       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1055
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1059
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1062
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1063
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1064
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1067
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1071
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1047
    .end local v14           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_1

    .line 1074
    .end local v14           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1079
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1082
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1085
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1086
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1088
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1093
    .end local v12           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2893
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v2

    .line 2894
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2895
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2896
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2897
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2894
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2900
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2638
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2639
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2640
    .local v4, h:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2641
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2642
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2643
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2644
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2645
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 348
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 349
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    .line 350
    .local v1, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iget-object v3, v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 351
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 355
    .end local v1           #info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_0
    return-void

    .line 348
    .restart local v1       #info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 2977
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 2979
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2980
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2981
    .local v6, listTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 2983
    .local v8, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    if-gez p1, :cond_5

    .line 2987
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    .line 2990
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    .line 3071
    .end local v7           #numChildren:I
    :cond_0
    return-void

    .line 2993
    .restart local v7       #numChildren:I
    :cond_1
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2994
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_2

    .line 2995
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 2996
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_2

    .line 2997
    invoke-direct {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2998
    add-int/lit8 v7, v7, 0x1

    .line 3002
    goto :goto_0

    .line 3007
    .end local v3           #lastVisiblePosition:I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_3

    .line 3008
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 3012
    :cond_3
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3016
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3017
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_0

    .line 3018
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 3019
    .local v4, layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3020
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3021
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3025
    :goto_2
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3026
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_1

    .line 3023
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3030
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_5
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3034
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3037
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_6

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v9, :cond_6

    .line 3038
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3040
    if-eqz v0, :cond_0

    .line 3042
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    goto :goto_3

    .line 3047
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_7

    .line 3048
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 3051
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3054
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3057
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3060
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_0

    .line 3061
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 3062
    .restart local v4       #layoutParams:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3063
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3064
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3068
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3069
    goto :goto_4

    .line 3066
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1858
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .line 1859
    .local v11, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .line 1860
    .local v17, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 1861
    .local v13, mode:I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 1863
    .local v10, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 1864
    .local v16, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .line 1869
    .local v14, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1870
    .local v15, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1871
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v15           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1874
    .restart local v15       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1876
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1878
    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/sec/android/touchwiz/widget/TwListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1887
    :goto_6
    if-eqz v17, :cond_4

    .line 1888
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1891
    :cond_4
    if-eqz v16, :cond_5

    .line 1892
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1895
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1896
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 1897
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1903
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    .line 1904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

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

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1906
    .local v8, childWidthSpec:I
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1908
    .local v12, lpHeight:I
    if-lez v12, :cond_13

    .line 1909
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1913
    .local v5, childHeightSpec:I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1918
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1919
    .local v18, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1920
    .local v9, h:I
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 1922
    .local v7, childTop:I
    :goto_a
    if-eqz v14, :cond_16

    .line 1923
    add-int v6, p5, v18

    .line 1924
    .local v6, childRight:I
    add-int v4, v7, v9

    .line 1925
    .local v4, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 1931
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 1932
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1935
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 1937
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1939
    :cond_8
    return-void

    .line 1858
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isPressed:Z
    .end local v11           #isSelected:Z
    .end local v13           #mode:I
    .end local v14           #needToMeasure:Z
    .end local v15           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v16           #updateChildPressed:Z
    .end local v17           #updateChildSelected:Z
    .end local v18           #w:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1859
    .restart local v11       #isSelected:Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1861
    .restart local v13       #mode:I
    .restart local v17       #updateChildSelected:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1863
    .restart local v10       #isPressed:Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1864
    .restart local v16       #updateChildPressed:Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1878
    .restart local v14       #needToMeasure:Z
    .restart local v15       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1880
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1881
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1882
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1884
    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    .line 1898
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 1911
    .restart local v8       #childWidthSpec:I
    .restart local v12       #lpHeight:I
    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto/16 :goto_8

    .line 1915
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpHeight:I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 1920
    .restart local v9       #h:I
    .restart local v18       #w:I
    :cond_15
    sub-int v7, p3, v9

    goto/16 :goto_a

    .line 1927
    .restart local v7       #childTop:I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1928
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 567
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 568
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 570
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 572
    .local v3, listBottom:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 558
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 559
    .local v0, listTop:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 402
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 403
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 377
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    .line 378
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 379
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 380
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    .line 381
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 388
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 316
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 317
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 286
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;)V

    .line 292
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 293
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 294
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    .line 295
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 302
    :cond_1
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2424
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2425
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2426
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2427
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1943
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    .line 1457
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1460
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1463
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1466
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1469
    .local v6, start:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1474
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1475
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1476
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1477
    .local v3, lastBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1483
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1484
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1485
    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1487
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1490
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetChildrenTopAndBottom(I)V

    .line 1491
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1495
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 1497
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    .line 1504
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1499
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1500
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 3185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 3186
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    .line 3190
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3191
    .local v10, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 3192
    .local v27, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 3193
    .local v26, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_a

    const/4 v13, 0x1

    .line 3194
    .local v13, drawOverscrollHeader:Z
    :goto_0
    if-eqz v26, :cond_b

    const/4 v12, 0x1

    .line 3195
    .local v12, drawOverscrollFooter:Z
    :goto_1
    if-lez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    const/4 v11, 0x1

    .line 3197
    .local v11, drawDividers:Z
    :goto_2
    if-nez v11, :cond_1

    if-nez v13, :cond_1

    if-eqz v12, :cond_11

    .line 3200
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3201
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3204
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    .line 3205
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3206
    .local v20, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v23, v0

    .line 3207
    .local v23, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v23, v32

    add-int/lit8 v19, v32, -0x1

    .line 3208
    .local v19, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3209
    .local v21, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3210
    .local v18, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3211
    .local v17, first:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 3212
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3217
    .local v4, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_d

    const/16 v16, 0x1

    .line 3219
    .local v16, fillForMissingDividers:Z
    :goto_3
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 3220
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    .line 3223
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3225
    .local v28, paint:Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3226
    .local v15, effectivePaddingTop:I
    const/4 v14, 0x0

    .line 3227
    .local v14, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3232
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    sub-int v32, v32, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v33, v0

    add-int v24, v32, v33

    .line 3233
    .local v24, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_12

    .line 3234
    const/4 v6, 0x0

    .line 3237
    .local v6, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v29, v0

    .line 3238
    .local v29, scrollY:I
    if-lez v9, :cond_4

    if-gez v29, :cond_4

    .line 3239
    if-eqz v13, :cond_e

    .line 3240
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3241
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3250
    :cond_4
    :goto_4
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_10

    .line 3251
    if-nez v21, :cond_5

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    :cond_5
    if-nez v18, :cond_6

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 3253
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3254
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3258
    if-eqz v11, :cond_9

    move/from16 v0, v24

    if-ge v6, v0, :cond_9

    if-eqz v12, :cond_7

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    .line 3260
    :cond_7
    if-nez v5, :cond_8

    add-int v32, v17, v22

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 3263
    :cond_8
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3264
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3250
    .end local v8           #child:Landroid/view/View;
    :cond_9
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 3193
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v11           #drawDividers:Z
    .end local v12           #drawOverscrollFooter:Z
    .end local v13           #drawOverscrollHeader:Z
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3194
    .restart local v13       #drawOverscrollHeader:Z
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3195
    .restart local v12       #drawOverscrollFooter:Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3217
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 3243
    .restart local v6       #bottom:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    .restart local v29       #scrollY:I
    :cond_e
    if-eqz v11, :cond_4

    .line 3244
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3245
    neg-int v0, v10

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3246
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3266
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    :cond_f
    if-eqz v16, :cond_9

    .line 3267
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3268
    add-int v32, v6, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3269
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3275
    .end local v8           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v33, v0

    add-int v25, v32, v33

    .line 3276
    .local v25, overFooterBottom:I
    if-eqz v12, :cond_11

    add-int v32, v17, v9

    move/from16 v0, v32

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    move/from16 v0, v25

    if-le v0, v6, :cond_11

    .line 3277
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3278
    move/from16 v0, v25

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3339
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v14           #effectivePaddingBottom:I
    .end local v15           #effectivePaddingTop:I
    .end local v16           #fillForMissingDividers:Z
    .end local v17           #first:I
    .end local v18           #footerDividers:Z
    .end local v19           #footerLimit:I
    .end local v20           #headerCount:I
    .end local v21           #headerDividers:Z
    .end local v22           #i:I
    .end local v23           #itemCount:I
    .end local v24           #listBottom:I
    .end local v25           #overFooterBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_11
    :goto_7
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3340
    return-void

    .line 3284
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v14       #effectivePaddingBottom:I
    .restart local v15       #effectivePaddingTop:I
    .restart local v16       #fillForMissingDividers:Z
    .restart local v17       #first:I
    .restart local v18       #footerDividers:Z
    .restart local v19       #footerLimit:I
    .restart local v20       #headerCount:I
    .restart local v21       #headerDividers:Z
    .restart local v23       #itemCount:I
    .restart local v24       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v29, v0

    .line 3286
    .restart local v29       #scrollY:I
    if-lez v9, :cond_13

    if-eqz v13, :cond_13

    .line 3287
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3288
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3292
    :cond_13
    if-eqz v13, :cond_18

    const/16 v30, 0x1

    .line 3293
    .local v30, start:I
    :goto_8
    move/from16 v22, v30

    .restart local v22       #i:I
    :goto_9
    move/from16 v0, v22

    if-ge v0, v9, :cond_1a

    .line 3294
    if-nez v21, :cond_14

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v20

    if-lt v0, v1, :cond_17

    :cond_14
    if-nez v18, :cond_15

    add-int v32, v17, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    .line 3296
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3297
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v31

    .line 3300
    .local v31, top:I
    move/from16 v0, v31

    if-le v0, v15, :cond_17

    .line 3301
    if-nez v5, :cond_16

    add-int v32, v17, v22

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    add-int v32, v17, v22

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    add-int/lit8 v32, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_16

    add-int v32, v17, v22

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 3304
    :cond_16
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3305
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3312
    add-int/lit8 v32, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3293
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_17
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 3292
    .end local v22           #i:I
    .end local v30           #start:I
    :cond_18
    const/16 v30, 0x0

    goto :goto_8

    .line 3313
    .restart local v8       #child:Landroid/view/View;
    .restart local v22       #i:I
    .restart local v30       #start:I
    .restart local v31       #top:I
    :cond_19
    if-eqz v16, :cond_17

    .line 3314
    sub-int v32, v31, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3315
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3316
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 3322
    .end local v8           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_1a
    if-lez v9, :cond_11

    if-lez v29, :cond_11

    .line 3323
    if-eqz v12, :cond_1b

    .line 3324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    .line 3325
    .local v3, absListBottom:I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3326
    add-int v32, v3, v29

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3328
    .end local v3           #absListBottom:I
    :cond_1b
    if-eqz v11, :cond_11

    .line 3329
    move/from16 v0, v24

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3330
    add-int v32, v24, v10

    move/from16 v0, v32

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3331
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v7, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method protected dispatchDrawWithBounce(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 3356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    const/4 v8, 0x1

    .line 3357
    .local v8, clipToPadding:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/touchwiz/widget/TwBounceController;->bounce(Landroid/graphics/Canvas;Z)I

    move-result v26

    .line 3360
    .local v26, saveCount:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3361
    .local v10, dividerHeight:I
    if-lez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    const/4 v11, 0x1

    .line 3363
    .local v11, drawDividers:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    .line 3364
    .local v9, count:I
    if-eqz v11, :cond_14

    .line 3367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3368
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3372
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v22, v0

    .line 3373
    .local v22, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v22, v28

    add-int/lit8 v17, v28, -0x1

    .line 3374
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 3375
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 3376
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3377
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 3378
    .local v4, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3383
    .local v3, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isOpaque()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOpaque()Z

    move-result v28

    if-nez v28, :cond_a

    const/4 v14, 0x1

    .line 3385
    .local v14, fillForMissingDividers:Z
    :goto_2
    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 3386
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCacheColorHint()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 3389
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 3391
    .local v25, paint:Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3392
    .local v13, effectivePaddingTop:I
    const/4 v12, 0x0

    .line 3393
    .local v12, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 3395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 3398
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v29, v0

    add-int v23, v28, v29

    .line 3399
    .local v23, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 3400
    const/4 v5, 0x0

    .line 3403
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_2

    if-lez v9, :cond_2

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 3404
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingTop()I

    move-result v28

    sub-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3405
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3406
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3409
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_3

    if-lez v9, :cond_3

    add-int v28, v15, v9

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 3412
    add-int/lit8 v28, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v21

    .line 3414
    .local v21, itemBottom:I
    move/from16 v0, v21

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3415
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3416
    add-int/lit8 v28, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3419
    .end local v21           #itemBottom:I
    :cond_3
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v9, :cond_14

    .line 3420
    if-nez v19, :cond_4

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    :cond_4
    if-nez v16, :cond_5

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 3422
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3423
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3427
    move/from16 v0, v23

    if-ge v5, v0, :cond_7

    .line 3428
    if-nez v4, :cond_6

    add-int v28, v15, v20

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    add-int v28, v15, v20

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_b

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    add-int v28, v15, v20

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 3431
    :cond_6
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3432
    add-int v28, v5, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3419
    .end local v7           #child:Landroid/view/View;
    :cond_7
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 3356
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v5           #bottom:I
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #clipToPadding:Z
    .end local v9           #count:I
    .end local v10           #dividerHeight:I
    .end local v11           #drawDividers:Z
    .end local v12           #effectivePaddingBottom:I
    .end local v13           #effectivePaddingTop:I
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v25           #paint:Landroid/graphics/Paint;
    .end local v26           #saveCount:I
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3361
    .restart local v8       #clipToPadding:Z
    .restart local v10       #dividerHeight:I
    .restart local v26       #saveCount:I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3383
    .restart local v3       #adapter:Landroid/widget/ListAdapter;
    .restart local v4       #areAllItemsSelectable:Z
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v15       #first:I
    .restart local v16       #footerDividers:Z
    .restart local v17       #footerLimit:I
    .restart local v18       #headerCount:I
    .restart local v19       #headerDividers:Z
    .restart local v22       #itemCount:I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 3434
    .restart local v5       #bottom:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v12       #effectivePaddingBottom:I
    .restart local v13       #effectivePaddingTop:I
    .restart local v14       #fillForMissingDividers:Z
    .restart local v20       #i:I
    .restart local v23       #listBottom:I
    .restart local v25       #paint:Landroid/graphics/Paint;
    :cond_b
    if-eqz v14, :cond_7

    .line 3435
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3436
    add-int v28, v5, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3437
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 3444
    .end local v5           #bottom:I
    .end local v7           #child:Landroid/view/View;
    .end local v20           #i:I
    :cond_c
    move/from16 v24, v13

    .line 3447
    .local v24, listTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_d

    if-lez v9, :cond_d

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 3448
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    sub-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3449
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3450
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3453
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_e

    if-lez v9, :cond_e

    add-int v28, v15, v9

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 3455
    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3456
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3457
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3460
    :cond_e
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v9, :cond_14

    .line 3461
    if-nez v19, :cond_f

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_12

    :cond_f
    if-nez v16, :cond_10

    add-int v28, v15, v20

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 3463
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3464
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3467
    .local v27, top:I
    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_12

    .line 3468
    if-nez v4, :cond_11

    add-int v28, v15, v20

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    add-int v28, v15, v20

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_13

    add-int/lit8 v28, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_11

    add-int v28, v15, v20

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 3471
    :cond_11
    sub-int v28, v27, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3472
    move/from16 v0, v27

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3479
    add-int/lit8 v28, v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3460
    .end local v7           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_12
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 3480
    .restart local v7       #child:Landroid/view/View;
    .restart local v27       #top:I
    :cond_13
    if-eqz v14, :cond_12

    .line 3481
    sub-int v28, v27, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3482
    move/from16 v0, v27

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3483
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3493
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #child:Landroid/view/View;
    .end local v12           #effectivePaddingBottom:I
    .end local v13           #effectivePaddingTop:I
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v24           #listTop:I
    .end local v25           #paint:Landroid/graphics/Paint;
    .end local v27           #top:I
    :cond_14
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3495
    if-ltz v26, :cond_15

    .line 3496
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3497
    if-eqz v8, :cond_15

    .line 3498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x22

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 3500
    :cond_15
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 2087
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2088
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2090
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2091
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 2094
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2103
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 2096
    .restart local v0       #focused:Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_0

    instance-of v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    .line 2099
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestFocus()Z

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3344
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3345
    .local v0, more:Z
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    .line 3348
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3515
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3516
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3517
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3167
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3169
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3170
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3172
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3173
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3174
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3177
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3178
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3181
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3150
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3152
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3153
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3155
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3156
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 3157
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3160
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3161
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3164
    return-void
.end method

.method fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 694
    const/4 v8, 0x0

    .line 696
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int v7, v0, v1

    .line 697
    .local v7, end:I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 701
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 703
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 704
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 706
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 707
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 708
    if-eqz v5, :cond_1

    .line 709
    move-object v8, v6

    .line 712
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 713
    goto :goto_0

    .line 703
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 715
    :cond_3
    return-object v8
.end method

.method fillGap(Z)V
    .locals 6
    .parameter "down"

    .prologue
    const/16 v5, 0x22

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 662
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 663
    const/4 v2, 0x0

    .line 664
    .local v2, paddingTop:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getListPaddingTop()I

    move-result v2

    .line 667
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 669
    .local v3, startOffset:I
    :goto_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillDown(II)Landroid/view/View;

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooHigh(I)V

    .line 681
    .end local v2           #paddingTop:I
    :goto_1
    return-void

    .end local v3           #startOffset:I
    .restart local v2       #paddingTop:I
    :cond_1
    move v3, v2

    .line 667
    goto :goto_0

    .line 672
    .end local v2           #paddingTop:I
    :cond_2
    const/4 v1, 0x0

    .line 673
    .local v1, paddingBottom:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 674
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getListPaddingBottom()I

    move-result v1

    .line 676
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 678
    .restart local v3       #startOffset:I
    :goto_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    .line 679
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->correctTooLow(I)V

    goto :goto_1

    .line 676
    .end local v3           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_2
.end method

.method fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 728
    const/4 v8, 0x0

    .line 730
    .local v8, selectedView:Landroid/view/View;
    const/4 v7, 0x0

    .line 731
    .local v7, end:I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 732
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 735
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 737
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 738
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 740
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 741
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 742
    if-eqz v5, :cond_1

    .line 743
    move-object v8, v6

    .line 746
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 747
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_2
    move v5, v3

    .line 737
    goto :goto_1

    .line 749
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 751
    return-object v8
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 1316
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1317
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1318
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1319
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1320
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1321
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1333
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1318
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1325
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1326
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1327
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1328
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1325
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1333
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3828
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3829
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3832
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3833
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3835
    .local v2, v:Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3836
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3838
    if-eqz v2, :cond_0

    .line 3844
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3832
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3844
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3807
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3808
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3809
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3810
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3819
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3814
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3815
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3816
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3819
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3732
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3733
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3736
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3737
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3739
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3740
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3742
    if-eqz v2, :cond_0

    .line 3748
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3736
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3748
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3713
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3714
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3715
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3716
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3724
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3719
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3720
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3721
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3724
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3779
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3780
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3783
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3784
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3786
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3787
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3789
    if-eqz v2, :cond_0

    .line 3795
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3783
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3795
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3759
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3760
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3761
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3762
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3771
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3766
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3767
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3768
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3771
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2336
    const/4 v0, 0x0

    .line 2337
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2338
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2339
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2340
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2341
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2342
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2343
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    .line 2345
    :cond_0
    const/4 v0, 0x1

    .line 2359
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2360
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    .line 2361
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 2364
    :cond_2
    return v0

    .line 2347
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2348
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2349
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2350
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2351
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2352
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2353
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    .line 2355
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3858
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3859
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3889
    :cond_0
    :goto_0
    return-object v5

    .line 3865
    :cond_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3866
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3867
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3868
    .local v3, count:I
    new-array v5, v3, [J

    .line 3869
    .local v5, ids:[J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3871
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3872
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3873
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3874
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3872
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3880
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3883
    new-array v6, v2, [J

    .line 3884
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3886
    goto :goto_0

    .line 3889
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3552
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3111
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 220
    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3628
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3116
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3118
    .local v4, retValue:Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3121
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3122
    .local v3, listTop:I
    :goto_1
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3123
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3133
    .end local v0           #first:Landroid/view/View;
    .end local v3           #listTop:I
    .end local v4           #retValue:Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3116
    goto :goto_0

    .line 3121
    .restart local v4       #retValue:Z
    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    goto :goto_1

    .line 3126
    .restart local v0       #first:Landroid/view/View;
    .restart local v3       #listTop:I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3128
    .local v2, listBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3129
    .local v1, last:Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3130
    goto :goto_2

    .line 3126
    .end local v1           #last:Landroid/view/View;
    .end local v2           #listBottom:I
    :cond_8
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1508
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1509
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 1510
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1516
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    if-nez v8, :cond_0

    .line 1767
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1770
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1527
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v7, v2, v24

    .line 1529
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v10

    .line 1530
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1531
    .local v19, index:I
    const/4 v5, 0x0

    .line 1534
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1535
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1536
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1538
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1541
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1557
    if-ltz v19, :cond_2

    move/from16 v0, v19

    if-ge v0, v10, :cond_2

    .line 1558
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1562
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1564
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1565
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1569
    :cond_3
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1572
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1573
    .local v11, dataChanged:Z
    if-eqz v11, :cond_5

    .line 1574
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->handleDataChanged()V

    .line 1579
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v2, :cond_6

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 1581
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1766
    if-nez v8, :cond_0

    .line 1767
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1543
    .end local v11           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1544
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 1545
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1583
    .restart local v11       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-eq v2, v0, :cond_8

    .line 1584
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The content of the adapter has changed but TwListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") with Adapter("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1766
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_7

    .line 1767
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_7
    throw v2

    .line 1591
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 1595
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1596
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1599
    .local v22, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1603
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_a

    .line 1604
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_b

    .line 1605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v2, :cond_9

    .line 1606
    add-int v2, v18, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addShouldRetainView(ILandroid/view/View;)V

    .line 1604
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1608
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v24, v12, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_3

    .line 1618
    .end local v18           #i:I
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1625
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1626
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_e

    .line 1633
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1634
    :cond_c
    move-object/from16 v13, v17

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1637
    if-eqz v14, :cond_d

    .line 1639
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1642
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestFocus()Z

    .line 1646
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->detachAllViewsFromParent()V

    .line 1648
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1675
    if-nez v10, :cond_17

    .line 1676
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_16

    .line 1677
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1678
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 1679
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1700
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1702
    if-eqz v23, :cond_1f

    .line 1705
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1706
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_10
    const/4 v15, 0x1

    .line 1709
    .local v15, focusWasTaken:Z
    :goto_5
    if-nez v15, :cond_1d

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1715
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_11

    .line 1716
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1718
    :cond_11
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 1726
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_6
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1749
    :cond_12
    :goto_7
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1750
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1753
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1754
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1755
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1756
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 1758
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->updateScrollIndicators()V

    .line 1760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v2, :cond_14

    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    .line 1764
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1766
    if-nez v8, :cond_0

    .line 1767
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1650
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_2
    if-eqz v4, :cond_15

    .line 1651
    :try_start_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1653
    .end local v23           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1655
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1657
    .end local v23           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1658
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1660
    .end local v23           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1661
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1664
    .end local v23           #sel:Landroid/view/View;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1665
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1666
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1669
    .end local v23           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1670
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v23           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1672
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1673
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1681
    .end local v23           #sel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1682
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 1683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1684
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1686
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_19

    .line 1687
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_18

    .end local v6           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1689
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_1b

    .line 1690
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v20, :cond_1a

    .end local v6           #childrenTop:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_9

    .line 1693
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1706
    .end local v6           #childrenTop:I
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1720
    .restart local v15       #focusWasTaken:Z
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    .line 1724
    .end local v15           #focusWasTaken:Z
    :cond_1e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_6

    .line 1728
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-lez v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/widget/ListAdapter;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v2, v0, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    if-ltz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1731
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1732
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_20

    .line 1733
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 1742
    .end local v9           #child:Landroid/view/View;
    :cond_20
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v14, :cond_12

    .line 1743
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    .line 1735
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 1541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1648
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2033
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2034
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2060
    :cond_0
    :goto_0
    return v2

    .line 2038
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2039
    .local v1, count:I
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2040
    if-eqz p2, :cond_2

    .line 2041
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2042
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2043
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2046
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2047
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2048
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2052
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2055
    goto :goto_0

    .line 2057
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2060
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1249
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1250
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1310
    :cond_0
    :goto_0
    return v6

    .line 1254
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1255
    .local v9, returnedHeight:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 1258
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1263
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1264
    :cond_2
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 1265
    .local v7, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->recycleOnMeasure()Z

    move-result v8

    .line 1266
    .local v8, recyle:Z
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 1268
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1269
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1271
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1273
    if-lez v4, :cond_3

    .line 1275
    add-int/2addr v9, v3

    .line 1279
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1282
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1285
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1287
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1291
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1255
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1303
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1304
    move v6, v9

    .line 1268
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1310
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3694
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFinishInflate()V

    .line 3696
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 3697
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3698
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3699
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->addHeaderView(Landroid/view/View;)V

    .line 3698
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3701
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->removeAllViews()V

    .line 3703
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3633
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3635
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3636
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, -0x1

    .line 3637
    .local v2, closetChildIndex:I
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 3638
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3643
    if-nez v0, :cond_0

    .line 3644
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 3685
    :goto_0
    return-void

    .line 3650
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 3651
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3652
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 3657
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mTempRect:Landroid/graphics/Rect;

    .line 3658
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3659
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 3660
    .local v1, childCount:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3662
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_4

    .line 3664
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3662
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3668
    :cond_3
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3669
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3670
    invoke-virtual {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3671
    invoke-static {p3, v8, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3673
    .local v3, distance:I
    if-ge v3, v6, :cond_2

    .line 3674
    move v6, v3

    .line 3675
    move v2, v5

    goto :goto_2

    .line 3680
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_4
    if-ltz v2, :cond_5

    .line 3681
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto :goto_0

    .line 3683
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 3894
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3895
    const-class v0, Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3896
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3900
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3901
    const-class v0, Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3902
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2108
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2113
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1136
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onMeasure(II)V

    .line 1138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1139
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1140
    .local v10, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1141
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1143
    .local v4, heightSize:I
    const/4 v9, 0x0

    .line 1144
    .local v9, childWidth:I
    const/4 v7, 0x0

    .line 1145
    .local v7, childHeight:I
    const/4 v8, 0x0

    .line 1147
    .local v8, childState:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1148
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1152
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1154
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1155
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1156
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1165
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1166
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1172
    :goto_1
    if-nez v10, :cond_2

    .line 1173
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1177
    :cond_2
    const/high16 v0, -0x8000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1180
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1183
    :cond_3
    invoke-virtual {p0, v12, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setMeasuredDimension(II)V

    .line 1184
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 1185
    return-void

    .line 1147
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1169
    :cond_5
    const/high16 v0, -0x100

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1118
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1119
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1120
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1121
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1122
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1123
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1124
    .local v4, top:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1125
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/touchwiz/widget/TwListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    .line 1127
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;->setup(II)Lcom/sec/android/touchwiz/widget/TwListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->post(Ljava/lang/Runnable;)Z

    .line 1130
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSizeChanged(IIII)V

    .line 1131
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2290
    const/4 v1, -0x1

    .line 2291
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2293
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2294
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2300
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2301
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2302
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2303
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2304
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 2306
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2307
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2310
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2311
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2314
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionInt(I)V

    .line 2315
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invokeOnItemScrollListener()V

    .line 2316
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2317
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 2324
    .end local v2           #position:I
    :cond_3
    :goto_1
    return v3

    .line 2295
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2296
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2297
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2324
    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1216
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 424
    :cond_0
    const/4 v0, 0x1

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 429
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 338
    :cond_0
    const/4 v0, 0x1

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 343
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 578
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 581
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeight()I

    move-result v6

    .line 585
    .local v6, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getScrollY()I

    move-result v8

    .line 586
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 587
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 589
    .local v5, fadingEdge:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 591
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 592
    :cond_0
    add-int/2addr v8, v5

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v2

    .line 597
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 599
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 602
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v14, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 604
    :cond_2
    sub-int/2addr v7, v5

    .line 608
    :cond_3
    const/4 v11, 0x0

    .line 610
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 617
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 624
    :goto_0
    sub-int v4, v1, v7

    .line 625
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 646
    .end local v4           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 647
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 648
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/sec/android/touchwiz/widget/TwListView;->scrollListItemsBy(I)V

    .line 649
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->positionSelector(ILandroid/view/View;)V

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 653
    :cond_5
    return v10

    .line 620
    .end local v10           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 626
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 633
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 641
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 642
    .local v12, top:I
    sub-int v3, v12, v8

    .line 643
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 636
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 646
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 535
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetList()V

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 538
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 471
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->resetList()V

    .line 476
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 478
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 479
    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 484
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 485
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 488
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 490
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 491
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 492
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 493
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkFocus()V

    .line 496
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 497
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 499
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 502
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 503
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 507
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectedPositionInt(I)V

    .line 508
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 510
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    .line 521
    .end local v0           #position:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 522
    return-void

    .line 481
    :cond_3
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 505
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 515
    .end local v0           #position:I
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mAreAllItemsSelectable:Z

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkFocus()V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3138
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3139
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mIsCacheColorOpaque:Z

    .line 3140
    if-eqz v0, :cond_1

    .line 3141
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3142
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3144
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3146
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCacheColorHint(I)V

    .line 3147
    return-void

    .line 3138
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3536
    if-eqz p1, :cond_2

    .line 3537
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3541
    :goto_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3542
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerIsOpaque:Z

    .line 3543
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 3544
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3545
    return-void

    .line 3539
    :cond_2
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3563
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    .line 3564
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    .line 3565
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3566
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3588
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mFooterDividersEnabled:Z

    .line 3589
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3590
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3576
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderDividersEnabled:Z

    .line 3577
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3578
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3100
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mItemsCanFocus:Z

    .line 3101
    if-nez p1, :cond_0

    .line 3102
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDescendantFocusability(I)V

    .line 3104
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3620
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3621
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3622
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3599
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3600
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3601
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 3603
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 456
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    .line 1957
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2069
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2070
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2071
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 2082
    :goto_0
    return-void

    .line 2075
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2076
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    goto :goto_0

    .line 2078
    :cond_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 2079
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1974
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1975
    if-ltz p1, :cond_2

    .line 1976
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 1982
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1983
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1984
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1986
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1987
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1988
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1991
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestLayout()V

    goto :goto_0

    .line 1979
    :cond_4
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2002
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setNextSelectedPositionInt(I)V

    .line 2003
    const/4 v0, 0x0

    .line 2005
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 2007
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 2008
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    .line 2009
    const/4 v0, 0x1

    .line 2015
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 2017
    if-eqz v0, :cond_1

    .line 2018
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->awakenScrollBars()Z

    .line 2020
    :cond_1
    return-void

    .line 2010
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2011
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldCorrectTooHigh()Z
    .locals 1

    .prologue
    .line 1388
    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 940
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollByOffset(I)V

    .line 941
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 928
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 929
    return-void
.end method
