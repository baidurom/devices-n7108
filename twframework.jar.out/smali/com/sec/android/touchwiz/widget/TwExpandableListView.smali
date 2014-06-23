.class public Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field static COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F = 0.0f

.field static final DEBUG_GROUP:Z = false

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field static final ITEM_ANIMATION_OFFSET:F = 0.5f

.field public static IndicatorTransDurationMax:F = 0.0f

.field static final MAX_SCROLL_DURATION:I = 0x4

.field static final OFFSET_FOR_SLIDE:F = 0.5f

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field static final ROTATION_AXIS:I = 0x2

.field static final ROTATION_DEPTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TWExpandableList"

.field public static final TIME_DIFF_BETWEEN_ITEM_ANIMATION:I = 0x258

.field static final TIME_ONE_ITEM_FRAME_ANIMATION:I = 0x32

.field static collapseAllChildBaseSpeedFactor:F

.field public static groupIndicatorRotateAngle:I

.field public static mGroupIncrement:I

.field public static mGroupStartOffset:I

.field public static mGroupStartPrev:I


# instance fields
.field final COLLAPSEALL_BASE_SPEED:F

.field private DEBUG_TW_EXP_LIST:Z

.field EXPAND_COLLAPSE_TOTAL_TIME:F

.field EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mBufferExpandAllAnimation:I

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipChildDivider:Z

.field mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field mFooterGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field mGroupFlatPos:I

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field mGroupPos:I

.field mHeaderViewHeight:I

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field mLastDividerAlpha:I

.field private mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

.field private mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

.field private mheightofChildItem:I

.field private mheightofGroupItem:I

.field mposMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

.field rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;

.field private rotateAnimationFlag:Z

.field shudCorrectHeightAfterAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    const/high16 v0, 0x4316

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 273
    const/high16 v0, 0x3f00

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    .line 283
    const/16 v0, 0xb4

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    .line 285
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->IndicatorTransDurationMax:F

    .line 287
    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 289
    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIncrement:I

    .line 291
    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartPrev:I

    .line 345
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    .line 357
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput v2, v1, v2

    aput-object v1, v0, v2

    new-array v1, v3, [I

    aput v3, v1, v2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput v5, v1, v2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    aput v4, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    .line 374
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 392
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, 0x4316

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 244
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 249
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    .line 251
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 253
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 257
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 259
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    .line 275
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSEALL_BASE_SPEED:F

    .line 384
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    .line 1399
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    .line 1569
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    .line 2766
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mLastDividerAlpha:I

    .line 2820
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;

    .line 3493
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    .line 3494
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    .line 398
    sget-object v1, Landroid/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 401
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 403
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 405
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 407
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 409
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 412
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 414
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 415
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    .line 416
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->checkAnimationBuffer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->animateFooterAfterCollapseAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    return-object v0
.end method

.method private adjustListSize(I)Z
    .locals 3
    .parameter "bottom"

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setFrame(IIII)Z

    move-result v0

    .line 1718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private animateFooterAfterCollapseAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1896
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1897
    const/4 v0, 0x0

    .line 1898
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1911
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void

    .line 1901
    .restart local v0       #animation:Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1902
    .local v1, footer:Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, v5, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1903
    .restart local v0       #animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1904
    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1905
    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 1906
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1907
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1908
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1909
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private animateFooterAfterExpandAll()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1870
    const/4 v1, 0x0

    .line 1871
    .local v1, footerCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v7

    sub-int v4, v6, v7

    .local v4, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 1872
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, v4

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1889
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1890
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1892
    :cond_1
    return-void

    .line 1875
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1876
    .local v0, footer:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1879
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1880
    .local v2, footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget v6, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    int-to-float v6, v6

    iget v7, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    int-to-float v7, v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1881
    .local v5, transAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v3

    .line 1882
    .local v3, grpAnimDuration:F
    float-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1883
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1884
    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1885
    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1886
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1887
    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1871
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private checkAnimationBuffer()Z
    .locals 1

    .prologue
    .line 2601
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    if-lez v0, :cond_0

    .line 2602
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    .line 2603
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandAll()Z

    .line 2604
    const/4 v0, 0x1

    .line 2606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillAnimationDataForGroups(Z)V
    .locals 25
    .parameter "isExpansionAllAnimation"

    .prologue
    .line 1402
    const/16 v19, -0x1

    .line 1403
    .local v19, longestAnimationTime:I
    const/16 v16, 0x0

    .line 1404
    .local v16, grpHavingLastAnimation:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/16 v20, 0x0

    .line 1406
    .local v20, numOfAnimatingItems:I
    const/4 v15, 0x0

    .line 1407
    .local v15, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/4 v6, 0x0

    .line 1408
    .local v6, flapPosition:I
    const/4 v3, 0x0

    .line 1410
    .local v3, childHeight:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1413
    .restart local v15       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-eqz v15, :cond_3

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v6

    .line 1415
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_3

    .line 1416
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1417
    .local v4, childView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1418
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1425
    .end local v4           #childView:Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1427
    .local v5, firstGroupView:Landroid/view/View;
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1428
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 1430
    :cond_1
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1434
    .restart local v15       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v15, :cond_4

    .line 1430
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1410
    .end local v5           #firstGroupView:Landroid/view/View;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1441
    .restart local v5       #firstGroupView:Landroid/view/View;
    :cond_4
    if-nez v5, :cond_6

    .line 1568
    :cond_5
    :goto_3
    return-void

    .line 1444
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    .line 1449
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v7

    .line 1451
    .local v7, flatPos:I
    const/16 v21, 0x0

    .line 1452
    .local v21, posHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1453
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    sub-int v23, v7, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v21, v22, v23

    .line 1457
    :goto_4
    add-int/lit8 v22, v7, -0x1

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v2, v21, v22

    .line 1459
    .local v2, actualPos:I
    if-eqz p1, :cond_a

    .line 1461
    mul-int v22, v20, v3

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v23, v23, v20

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-le v2, v0, :cond_9

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v22

    sub-int v22, v22, v2

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    .line 1472
    :goto_5
    if-eqz v17, :cond_7

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V

    .line 1480
    .end local v2           #actualPos:I
    .end local v7           #flatPos:I
    .end local v21           #posHeight:I
    :cond_7
    :goto_6
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1481
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v22, v0

    add-int v20, v20, v22

    goto/16 :goto_2

    .line 1455
    .restart local v7       #flatPos:I
    .restart local v21       #posHeight:I
    :cond_8
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v23, v0

    sub-int v23, v7, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v21, v22, v23

    goto :goto_4

    .line 1466
    .restart local v2       #actualPos:I
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_5

    .line 1469
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1470
    mul-int v22, v20, v3

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v23, v23, v20

    add-int v22, v22, v23

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_5

    .line 1476
    .end local v2           #actualPos:I
    .end local v7           #flatPos:I
    .end local v21           #posHeight:I
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1477
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_6

    .line 1484
    :cond_c
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_d

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    .line 1486
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    .line 1490
    :goto_7
    const/4 v10, 0x0

    .line 1491
    .local v10, footerCount:I
    const/4 v14, -0x1

    .line 1492
    .local v14, footerPosHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v23

    sub-int v17, v22, v23

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 1493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v17

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v22

    if-nez v22, :cond_10

    .line 1534
    .end local v10           #footerCount:I
    .end local v14           #footerPosHeight:I
    :cond_d
    const/16 v17, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1536
    .restart local v15       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v15, :cond_16

    .line 1534
    :cond_e
    :goto_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1488
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 1496
    .restart local v10       #footerCount:I
    .restart local v14       #footerPosHeight:I
    :cond_10
    const/16 v18, 0x0

    .line 1497
    .local v18, lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v10, :cond_13

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v18, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1501
    .restart local v18       #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :goto_b
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v22, v0

    add-int/lit8 v13, v22, 0x1

    .line 1502
    .local v13, footerGroupID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v12

    .line 1503
    .local v12, footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v11

    .line 1504
    .local v11, footerFlatPos:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_11

    .line 1505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 1506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    mul-int v22, v22, v13

    sub-int v23, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v14, v22, v23

    .line 1510
    :cond_11
    :goto_c
    add-int/lit8 v22, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v23

    mul-int v22, v22, v23

    add-int v9, v14, v22

    .line 1512
    .local v9, footerActualPos:I
    mul-int v22, v20, v3

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v23, v0

    mul-int v23, v23, v20

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_15

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v22

    sub-int v22, v22, v9

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    .line 1518
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    .line 1521
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1525
    .local v8, footer:Landroid/view/View;
    if-eqz v8, :cond_12

    .line 1526
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v14, v14, v22

    .line 1492
    :cond_12
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 1500
    .end local v8           #footer:Landroid/view/View;
    .end local v9           #footerActualPos:I
    .end local v11           #footerFlatPos:I
    .end local v12           #footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v13           #footerGroupID:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v18, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .restart local v18       #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    goto/16 :goto_b

    .line 1508
    .restart local v11       #footerFlatPos:I
    .restart local v12       #footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v13       #footerGroupID:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v22, v0

    mul-int v22, v22, v13

    sub-int v23, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v14, v22, v23

    goto/16 :goto_c

    .line 1517
    .restart local v9       #footerActualPos:I
    :cond_15
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_d

    .line 1539
    .end local v9           #footerActualPos:I
    .end local v10           #footerCount:I
    .end local v11           #footerFlatPos:I
    .end local v12           #footerGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v13           #footerGroupID:I
    .end local v14           #footerPosHeight:I
    .end local v18           #lastGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_16
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 1544
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V

    .line 1550
    :cond_17
    :goto_e
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_e

    .line 1551
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1552
    move-object/from16 v16, v15

    goto/16 :goto_a

    .line 1546
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V

    goto :goto_e

    .line 1556
    :cond_19
    if-eqz v16, :cond_5

    .line 1557
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    goto/16 :goto_3
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1211
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1214
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "pos"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 477
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 479
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 485
    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 488
    .local v1, isEmpty:Z
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 490
    .local v3, stateSetIndex:I
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 504
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 485
    goto :goto_0

    .restart local v1       #isEmpty:Z
    :cond_4
    move v5, v4

    .line 488
    goto :goto_1

    .line 493
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 495
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    iget-object v4, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 500
    .local v2, stateSet:[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 498
    .end local v2           #stateSet:[I
    :cond_6
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 1136
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return v0

    .line 1140
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1143
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1163
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1177
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 1116
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1117
    const/4 v0, -0x1

    .line 1119
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 1097
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1098
    const/4 v0, 0x2

    .line 1101
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCollapseAllAnimation()Z
    .locals 69

    .prologue
    .line 2078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v68, v0

    .line 2080
    .local v68, visibleGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;>;"
    invoke-virtual/range {v68 .. v68}, Ljava/util/ArrayList;->size()I

    move-result v55

    .line 2081
    .local v55, nParents:I
    move/from16 v0, v55

    new-array v0, v0, [I

    move-object/from16 v54, v0

    .line 2082
    .local v54, nChildren:[I
    move/from16 v0, v55

    new-array v0, v0, [[Landroid/view/View;

    move-object/from16 v67, v0

    .line 2083
    .local v67, views:[[Landroid/view/View;
    move/from16 v0, v55

    new-array v0, v0, [[Z

    move-object/from16 v61, v0

    .line 2084
    .local v61, skip:[[Z
    move/from16 v0, v55

    new-array v0, v0, [[Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    move-object/from16 v57, v0

    .line 2085
    .local v57, offsetableAnimationSets:[[Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v62, 0x0

    .line 2086
    .local v62, totalAnimatingChildren:I
    const/16 v65, 0x0

    .line 2088
    .local v65, totalVisibleViews:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2089
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2090
    const-string v4, "TWExpandableList"

    const-string v5, "returning from handleCollapseAllAnimation 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_0
    const/4 v4, 0x0

    .line 2296
    :goto_0
    return v4

    .line 2094
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v4, :cond_3

    .line 2095
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v4, :cond_2

    .line 2097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 2098
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 2106
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_3

    .line 2107
    const-string v4, "TWExpandableList"

    const-string v5, "fling/scroll is happening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    move/from16 v66, v0

    .line 2111
    .local v66, viewHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v5, 0x1

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2112
    const/4 v4, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v47, v0

    .line 2113
    .local v47, dividerHeight:I
    const/16 v60, 0x0

    .local v60, parentNo:I
    :goto_2
    move/from16 v0, v60

    move/from16 v1, v55

    if-ge v0, v1, :cond_a

    .line 2114
    move-object/from16 v0, v68

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 2115
    .local v48, group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v48, :cond_6

    .line 2113
    :cond_4
    add-int/lit8 v60, v60, 0x1

    goto :goto_2

    .line 2100
    .end local v47           #dividerHeight:I
    .end local v48           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v60           #parentNo:I
    .end local v66           #viewHeight:I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v4, :cond_2

    .line 2102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 2103
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_1

    .line 2118
    .restart local v47       #dividerHeight:I
    .restart local v48       #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v60       #parentNo:I
    .restart local v66       #viewHeight:I
    :cond_6
    move-object/from16 v0, v48

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v49, v0

    .line 2120
    .local v49, iChildren:I
    aput v49, v54, v60

    .line 2121
    add-int v62, v62, v49

    .line 2122
    add-int/lit8 v4, v49, 0x1

    add-int v65, v65, v4

    .line 2123
    add-int/lit8 v4, v49, 0x1

    new-array v4, v4, [Landroid/view/View;

    aput-object v4, v67, v60

    .line 2124
    add-int/lit8 v4, v49, 0x1

    new-array v4, v4, [Z

    aput-object v4, v61, v60

    .line 2125
    aget v4, v54, v60

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    aput-object v4, v57, v60

    .line 2128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, v48

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v58

    .line 2129
    .local v58, parentFlatPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v59, v58, v4

    .line 2131
    .local v59, parentIndex:I
    aget-object v4, v67, v60

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2132
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_7

    .line 2133
    const-string v4, "DEBUG_COLLAPSE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "views["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][0] :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v67, v60

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parentIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_7
    new-instance v56, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ZZZ)V

    .line 2135
    .local v56, oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    aget-object v4, v57, v60

    const/4 v5, 0x0

    aput-object v56, v4, v5

    .line 2136
    aget-object v4, v61, v60

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    .line 2139
    const/16 v42, 0x1

    .local v42, childNo:I
    :goto_3
    aget v4, v54, v60

    move/from16 v0, v42

    if-gt v0, v4, :cond_4

    .line 2140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, v48

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    add-int/lit8 v6, v42, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v40

    .line 2142
    .local v40, childFlatPos:I
    const/4 v4, -0x1

    move/from16 v0, v40

    if-eq v0, v4, :cond_9

    .line 2143
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v41, v40, v4

    .line 2144
    .local v41, childIndex:I
    aget-object v4, v67, v60

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v42

    .line 2145
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_8

    .line 2146
    const-string v4, "DEBUG_COLLAPSE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "views["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v67, v60

    aget-object v6, v6, v42

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " childIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_8
    aget-object v4, v57, v60

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ZZZ)V

    aput-object v5, v4, v42

    .line 2149
    aget-object v4, v61, v60

    const/4 v5, 0x0

    aput-boolean v5, v4, v42

    .line 2139
    .end local v41           #childIndex:I
    :goto_4
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_3

    .line 2151
    :cond_9
    aget-object v4, v67, v60

    const/4 v5, 0x0

    aput-object v5, v4, v42

    .line 2152
    aget-object v4, v57, v60

    const/4 v5, 0x0

    aput-object v5, v4, v42

    .line 2153
    aget-object v4, v61, v60

    const/4 v5, 0x1

    aput-boolean v5, v4, v42

    goto :goto_4

    .line 2158
    .end local v40           #childFlatPos:I
    .end local v42           #childNo:I
    .end local v48           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v49           #iChildren:I
    .end local v56           #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    .end local v58           #parentFlatPos:I
    .end local v59           #parentIndex:I
    :cond_a
    const-wide/16 v63, 0x0

    .line 2159
    .local v63, totalAnimationDurationBeforeAddingChildren:J
    const-wide/16 v28, 0x0

    .line 2160
    .local v28, totalAnimationDuration:J
    const-wide/16 v7, 0x0

    .line 2161
    .local v7, parentOffset:J
    const-wide/16 v12, 0x0

    .line 2162
    .local v12, childOffset:J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getListPaddingLeft()I

    move-result v53

    .line 2163
    .local v53, listLeft:I
    const/16 v27, 0x0

    .line 2164
    .local v27, childTransDistance:F
    sget v44, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    .line 2165
    .local v44, childTransBaseSpeed:F
    if-lez v55, :cond_b

    .line 2166
    sget v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    const/high16 v5, 0x3f80

    move/from16 v0, v62

    int-to-float v6, v0

    move/from16 v0, v55

    int-to-float v9, v0

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    mul-float v44, v4, v5

    .line 2168
    :cond_b
    const/16 v45, 0x0

    .line 2169
    .local v45, childTransSpeed:F
    const/high16 v46, 0x3f80

    .line 2170
    .local v46, childTransSpeedFactor:F
    const-wide/16 v30, 0x0

    .line 2171
    .local v30, childTransDuration:J
    const/16 v22, 0x0

    .line 2174
    .local v22, childTransAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    const/high16 v43, 0x3f80

    .line 2175
    .local v43, childStartAlpha:F
    const/16 v39, 0x0

    .line 2176
    .local v39, childEndAlpha:F
    const-wide/16 v20, 0x0

    .line 2177
    .local v20, childAlphaDuration:J
    const/4 v14, 0x0

    .line 2179
    .local v14, childAlphaAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    const/16 v34, 0x0

    .line 2180
    .local v34, lastView:Landroid/view/View;
    const/16 v51, 0x0

    .line 2181
    .local v51, lastAnimationSet:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v52, 0x0

    .line 2182
    .local v52, lastChildAnimationSet:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v50, 0x0

    .line 2184
    .local v50, lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 2186
    const-wide/16 v28, 0x0

    .line 2187
    const-wide/16 v63, 0x0

    .line 2188
    const/16 v60, 0x0

    :goto_5
    move/from16 v0, v60

    move/from16 v1, v55

    if-ge v0, v1, :cond_15

    .line 2189
    aget-object v4, v61, v60

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_d

    .line 2188
    :cond_c
    :goto_6
    add-int/lit8 v60, v60, 0x1

    goto :goto_5

    .line 2192
    :cond_d
    move-object/from16 v0, v68

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 2193
    .restart local v48       #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    aget v4, v54, v60

    if-nez v4, :cond_f

    .line 2194
    mul-int/lit8 v4, v60, 0x3

    int-to-long v7, v4

    .line 2199
    :goto_7
    if-eqz v60, :cond_e

    .line 2200
    aget-object v10, v57, v60

    const/4 v11, 0x0

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    add-int/lit8 v5, v60, -0x1

    aget-object v5, v57, v5

    add-int/lit8 v6, v60, -0x1

    aget v6, v54, v6

    aget-object v6, v5, v6

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;JZ)V

    aput-object v4, v10, v11

    .line 2203
    :cond_e
    add-long v28, v28, v7

    .line 2205
    aget v4, v54, v60

    if-nez v4, :cond_10

    .line 2206
    const-wide/16 v63, 0x0

    .line 2210
    :goto_8
    const/16 v42, 0x1

    .restart local v42       #childNo:I
    :goto_9
    aget v4, v54, v60

    move/from16 v0, v42

    if-gt v0, v4, :cond_14

    .line 2211
    aget-object v4, v61, v60

    aget-boolean v4, v4, v42

    if-eqz v4, :cond_11

    .line 2210
    :goto_a
    add-int/lit8 v42, v42, 0x1

    goto :goto_9

    .line 2196
    .end local v42           #childNo:I
    :cond_f
    const-wide/16 v7, 0x0

    goto :goto_7

    .line 2208
    :cond_10
    move-wide/from16 v63, v28

    goto :goto_8

    .line 2215
    .restart local v42       #childNo:I
    :cond_11
    aget-object v4, v57, v60

    new-instance v9, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;

    aget-object v5, v57, v60

    add-int/lit8 v6, v42, -0x1

    aget-object v11, v5, v6

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;JZ)V

    .end local v14           #childAlphaAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    aput-object v9, v4, v42

    .line 2218
    aget-object v4, v67, v60

    aget-object v4, v4, v42

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v66

    .line 2219
    move/from16 v0, v66

    neg-int v4, v0

    sub-int v4, v4, v47

    int-to-float v0, v4

    move/from16 v27, v0

    .line 2220
    mul-float v45, v44, v46

    .line 2221
    const/4 v4, 0x0

    cmpl-float v4, v45, v4

    if-nez v4, :cond_12

    .line 2222
    const v45, 0x3dcccccd

    .line 2223
    :cond_12
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v4, v4, v45

    float-to-long v0, v4

    move-wide/from16 v30, v0

    .line 2225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2226
    const-wide/16 v30, 0x0

    .line 2227
    :cond_13
    move-wide/from16 v20, v30

    .line 2230
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    const-wide/16 v4, 0x2

    div-long v4, v20, v4

    sub-long v18, v28, v4

    new-instance v22, Landroid/view/animation/DecelerateInterpolator;

    .end local v22           #childTransAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    invoke-direct/range {v22 .. v22}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFJJLandroid/view/animation/Interpolator;ZZZ)V

    .line 2234
    .restart local v14       #childAlphaAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAlphaAnimation;
    aget-object v4, v57, v60

    aget-object v4, v4, v42

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v14, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->add(Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)Z

    .line 2237
    new-instance v22, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    new-instance v32, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v32 .. v32}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v35}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFJJLandroid/view/animation/Interpolator;ZZZ)V

    .line 2242
    .end local v34           #lastView:Landroid/view/View;
    .restart local v22       #childTransAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
    aget-object v4, v57, v60

    aget-object v4, v4, v42

    const-wide/16 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->add(Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)Z

    .line 2245
    add-long v4, v30, v7

    add-long v28, v28, v4

    .line 2247
    aget-object v4, v67, v60

    aget-object v34, v4, v42

    .line 2248
    .restart local v34       #lastView:Landroid/view/View;
    aget-object v4, v57, v60

    aget-object v52, v4, v42

    goto/16 :goto_a

    .line 2250
    :cond_14
    aget-object v4, v57, v60

    const/4 v5, 0x0

    aget-object v51, v4, v5

    .line 2254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-eqz v4, :cond_c

    aget v4, v54, v60

    if-eqz v4, :cond_c

    .line 2256
    sub-long v4, v28, v63

    long-to-float v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-wide/from16 v2, v63

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z

    goto/16 :goto_6

    .line 2263
    .end local v42           #childNo:I
    .end local v48           #group:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_15
    if-eqz v34, :cond_1d

    .line 2264
    new-instance v32, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x2

    move-object/from16 v33, p0

    invoke-direct/range {v32 .. v37}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2267
    .end local v50           #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .local v32, lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :goto_b
    const/16 v60, 0x0

    :goto_c
    move/from16 v0, v60

    move/from16 v1, v55

    if-ge v0, v1, :cond_1c

    .line 2268
    const/16 v42, 0x0

    .restart local v42       #childNo:I
    :goto_d
    aget v4, v54, v60

    move/from16 v0, v42

    if-gt v0, v4, :cond_1a

    .line 2269
    aget-object v4, v61, v60

    aget-boolean v4, v4, v42

    if-nez v4, :cond_17

    aget-object v4, v67, v60

    aget-object v4, v4, v42

    if-eqz v4, :cond_17

    .line 2270
    aget-object v4, v57, v60

    aget-object v56, v4, v42

    .line 2271
    .restart local v56       #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    const/16 v38, 0x0

    .line 2273
    .local v38, as:Landroid/view/animation/AnimationSet;
    if-nez v42, :cond_18

    add-int/lit8 v4, v55, -0x1

    move/from16 v0, v60

    if-eq v0, v4, :cond_18

    .line 2274
    invoke-virtual/range {v56 .. v56}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->makeAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v38

    .line 2275
    if-eqz v51, :cond_16

    move-object/from16 v0, v51

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_16

    .line 2276
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2289
    :cond_16
    :goto_e
    aget-object v4, v67, v60

    aget-object v4, v4, v42

    if-eqz v4, :cond_17

    .line 2290
    aget-object v4, v67, v60

    aget-object v4, v4, v42

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2268
    .end local v38           #as:Landroid/view/animation/AnimationSet;
    .end local v56           #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    :cond_17
    add-int/lit8 v42, v42, 0x1

    goto :goto_d

    .line 2278
    .restart local v38       #as:Landroid/view/animation/AnimationSet;
    .restart local v56       #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    :cond_18
    invoke-virtual/range {v56 .. v56}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;->makeAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v38

    .line 2280
    add-int/lit8 v4, v55, -0x1

    move/from16 v0, v60

    if-ne v0, v4, :cond_19

    add-int/lit8 v4, v55, -0x1

    aget v4, v54, v4

    if-eqz v4, :cond_19

    .line 2281
    if-eqz v51, :cond_16

    move-object/from16 v0, v52

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_16

    .line 2282
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_e

    .line 2284
    :cond_19
    if-eqz v51, :cond_16

    move-object/from16 v0, v51

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_16

    .line 2285
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_e

    .line 2293
    .end local v38           #as:Landroid/view/animation/AnimationSet;
    .end local v56           #oas:Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimationSet;
    :cond_1a
    aget-object v4, v67, v60

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eqz v4, :cond_1b

    .line 2294
    aget-object v4, v67, v60

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 2267
    :cond_1b
    add-int/lit8 v60, v60, 0x1

    goto/16 :goto_c

    .line 2296
    .end local v42           #childNo:I
    :cond_1c
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v32           #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v50       #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :cond_1d
    move-object/from16 v32, v50

    .end local v50           #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v32       #lastAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    goto/16 :goto_b
.end method

.method private handleCollapseAnimationWithAllItemsAdded()Z
    .locals 11

    .prologue
    .line 2667
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    sub-int/2addr v9, v10

    sub-int v5, v8, v9

    .line 2669
    .local v5, lastExpandedAnimatingItemIndex:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2670
    .local v6, numberOfNewItemsAnimating:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v5, v8

    .line 2671
    add-int/lit8 v8, v6, -0x1

    sub-int v2, v5, v8

    .line 2674
    .local v2, firstExpandItemIndex:I
    const/4 v0, 0x0

    .line 2676
    .local v0, childHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-nez v8, :cond_3

    .line 2678
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 2679
    move v4, v5

    .local v4, i:I
    :goto_0
    if-lt v4, v2, :cond_2

    .line 2681
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2682
    .local v7, toBeExpandedView:Landroid/view/View;
    if-nez v7, :cond_1

    .line 2684
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_0

    .line 2685
    const-string v8, "TWExpandableList"

    const-string v9, " View is null: View number calculation is not-correct or someother: check"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2688
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2690
    if-eqz v7, :cond_0

    .line 2691
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v8, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getGroupPos(I)I

    move-result v3

    .line 2692
    .local v3, groupPos:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildWithinGroupPos(I)I

    move-result v1

    .line 2694
    .local v1, childWithinGroup:I
    sub-int v8, v5, v4

    invoke-virtual {p0, v7, v3, v1, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemFadeInOutAnimation(Landroid/view/View;III)Z

    goto :goto_1

    .line 2698
    .end local v1           #childWithinGroup:I
    .end local v3           #groupPos:I
    .end local v7           #toBeExpandedView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2, v5, v6, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemTranslateAnimation(IIII)V

    .line 2700
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v9, 0x1

    iput v9, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2702
    .end local v4           #i:I
    :cond_3
    const/4 v8, 0x0

    return v8
.end method

.method private handleExpandAllAnimation()Z
    .locals 23

    .prologue
    .line 1750
    const/16 v22, 0x0

    .line 1753
    .local v22, viewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v22, Ljava/util/ArrayList;

    .end local v22           #viewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    .restart local v22       #viewArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1756
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 1757
    const-string v2, "TWExpandableList"

    const-string v5, "returning from handleExpandAllAnimation"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_0
    const/4 v2, 0x0

    .line 1855
    :goto_0
    return v2

    .line 1761
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v2, :cond_3

    .line 1762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 1763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v2, :cond_2

    .line 1764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 1765
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 1773
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v2, :cond_3

    .line 1774
    const-string v2, "TWExpandableList"

    const-string v5, "fling/scroll is happening"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_3
    const/4 v2, 0x0

    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 1778
    const/4 v7, 0x0

    .line 1780
    .local v7, childHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1782
    .local v20, mNoOfVisibleGroups:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 1783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1785
    .local v4, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v16

    .line 1786
    .local v16, gflatPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v16, v2

    add-int/lit8 v15, v2, 0x1

    .line 1787
    .local v15, gfirstExpandItemIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v16, v2

    iget v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int v17, v2, v5

    .line 1790
    .local v17, glastExpandedItemIndex:I
    const/4 v6, 0x0

    .line 1792
    .local v6, parentTop:I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v16, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1798
    .local v9, currGrpView:Landroid/view/View;
    if-eqz v9, :cond_4

    .line 1799
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1802
    :cond_4
    move/from16 v19, v15

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_8

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v19, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1805
    .local v3, currView:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 1806
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1808
    :cond_5
    if-eqz v3, :cond_6

    .line 1809
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    sub-int v5, v19, v15

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAnimationForExpandAll(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;III)Z

    .line 1802
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1767
    .end local v3           #currView:Landroid/view/View;
    .end local v4           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v6           #parentTop:I
    .end local v7           #childHeight:I
    .end local v9           #currGrpView:Landroid/view/View;
    .end local v15           #gfirstExpandItemIndex:I
    .end local v16           #gflatPos:I
    .end local v17           #glastExpandedItemIndex:I
    .end local v18           #i:I
    .end local v19           #j:I
    .end local v20           #mNoOfVisibleGroups:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v2, :cond_2

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 1770
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto/16 :goto_1

    .line 1819
    .restart local v4       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v6       #parentTop:I
    .restart local v7       #childHeight:I
    .restart local v9       #currGrpView:Landroid/view/View;
    .restart local v15       #gfirstExpandItemIndex:I
    .restart local v16       #gflatPos:I
    .restart local v17       #glastExpandedItemIndex:I
    .restart local v18       #i:I
    .restart local v19       #j:I
    .restart local v20       #mNoOfVisibleGroups:I
    :cond_8
    if-eqz v9, :cond_9

    .line 1820
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object v10, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAnimationForExpandAll(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;III)Z

    .line 1782
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 1826
    .end local v4           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v6           #parentTop:I
    .end local v9           #currGrpView:Landroid/view/View;
    .end local v15           #gfirstExpandItemIndex:I
    .end local v16           #gflatPos:I
    .end local v17           #glastExpandedItemIndex:I
    .end local v19           #j:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->animateFooterAfterExpandAll()V

    .line 1827
    const/4 v14, 0x0

    .line 1829
    .local v14, duration:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1830
    const/4 v2, 0x0

    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 1831
    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1833
    .restart local v4       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/16 v21, 0x0

    .line 1834
    .local v21, nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    if-nez v14, :cond_c

    .line 1835
    add-int/lit8 v2, v18, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_b

    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v21, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1840
    .restart local v21       #nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_b
    if-eqz v21, :cond_e

    .line 1841
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v2

    float-to-int v14, v2

    .line 1847
    :cond_c
    :goto_5
    sget v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    sget v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIncrement:I

    add-int/2addr v2, v5

    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupStartOffset:I

    .line 1848
    iget v2, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isAlreadyExpandedDuringExpandAll(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1850
    int-to-float v2, v14

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v10, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z

    .line 1831
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1843
    :cond_e
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v2

    float-to-int v14, v2

    goto :goto_5

    .line 1855
    .end local v4           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v21           #nextGrp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private handleExpandAnimationWithAllItemsAdded()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2614
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v5, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    .line 2615
    .local v5, lastExpandedAnimatingItemIndex:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v6, v9, v10

    .line 2617
    .local v6, lastExpandedItemIndex:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v7, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2618
    .local v7, numberOfNewItemsAnimating:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v5, v9

    .line 2619
    add-int/lit8 v9, v7, -0x1

    sub-int v2, v5, v9

    .line 2622
    .local v2, firstExpandItemIndex:I
    const/4 v1, 0x0

    .line 2624
    .local v1, childheight:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-nez v9, :cond_3

    .line 2626
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v11, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2627
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 2629
    move v4, v2

    .local v4, i:I
    :goto_0
    if-gt v4, v5, :cond_2

    .line 2631
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2633
    .local v8, toBeExpandedView:Landroid/view/View;
    if-nez v8, :cond_1

    .line 2635
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v9, :cond_0

    .line 2636
    const-string v9, "TWExpandableList"

    const-string v10, " View is null: View number calculation is not-correct or someother: check"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2640
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2642
    if-eqz v8, :cond_0

    .line 2643
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getGroupPos(I)I

    move-result v3

    .line 2644
    .local v3, groupPos:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildWithinGroupPos(I)I

    move-result v0

    .line 2647
    .local v0, childWithinGroup:I
    sub-int v9, v4, v2

    invoke-virtual {p0, v8, v3, v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemFadeInOutAnimation(Landroid/view/View;III)Z

    goto :goto_1

    .line 2652
    .end local v0           #childWithinGroup:I
    .end local v3           #groupPos:I
    .end local v8           #toBeExpandedView:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2, v6, v7, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemTranslateAnimation(IIII)V

    .line 2654
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v11, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2658
    .end local v4           #i:I
    :cond_3
    return v11
.end method

.method private handleExpandCollapseAllAnimation()Z
    .locals 2

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v0, :cond_0

    .line 1742
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandAllAnimation()Z

    move-result v0

    .line 1746
    :goto_0
    return v0

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1744
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z

    move-result v0

    goto :goto_0

    .line 1746
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleExpandCollapseAnimationWithAllItemsAdded()Z
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eqz v0, :cond_0

    .line 1725
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandCollapseAllAnimation()Z

    move-result v0

    .line 1735
    :goto_0
    return v0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    packed-switch v0, :pswitch_data_0

    .line 1735
    const/4 v0, 0x0

    goto :goto_0

    .line 1730
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandAnimationWithAllItemsAdded()Z

    move-result v0

    goto :goto_0

    .line 1733
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAnimationWithAllItemsAdded()Z

    move-result v0

    goto :goto_0

    .line 1727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAlreadyExpandedDuringExpandAll(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 1858
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1859
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1860
    .local v0, allreadyExpNumber:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1861
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    if-eqz v2, :cond_0

    .line 1863
    const/4 v2, 0x1

    .line 1867
    .end local v0           #allreadyExpNumber:I
    .end local v1           #j:I
    :goto_1
    return v2

    .line 1860
    .restart local v0       #allreadyExpNumber:I
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1867
    .end local v0           #allreadyExpNumber:I
    .end local v1           #j:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 659
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lastAnimatingFooterIndex()I
    .locals 4

    .prologue
    .line 2822
    const/4 v1, -0x1

    .line 2823
    .local v1, lastAnimatingFooterIndex:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2824
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2829
    :cond_0
    return v1

    .line 2827
    :cond_1
    move v1, v0

    .line 2823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollToHeaderAtTheTop(Z)V
    .locals 13
    .parameter "expand"

    .prologue
    .line 4550
    const/4 v5, 0x0

    .line 4551
    .local v5, offset:I
    const/4 v8, 0x0

    .line 4552
    .local v8, totalHeight:I
    const/4 v2, 0x0

    .line 4553
    .local v2, grpPos:I
    const/4 v4, 0x0

    .line 4554
    .local v4, numOfGroups:I
    const/4 v3, 0x0

    .line 4556
    .local v3, numOfChildren:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v10

    if-lt v9, v10, :cond_3

    .line 4557
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4558
    .local v6, pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v6, :cond_0

    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    if-eqz v9, :cond_0

    .line 4559
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    mul-int v7, v9, v10

    .line 4560
    .local v7, totalHeadersHeight:I
    move v8, v7

    .line 4561
    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v2, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 4562
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v4, v2, v9

    .line 4563
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, v9, v2

    .line 4564
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 4565
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v10, v3

    add-int v8, v9, v10

    .line 4577
    .end local v6           #pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v7           #totalHeadersHeight:I
    :cond_0
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTop()I

    move-result v10

    sub-int v1, v9, v10

    .line 4578
    .local v1, error:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v9

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int v5, v9, v10

    .line 4579
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    div-int v0, v5, v9

    .line 4580
    .local v0, duration:I
    add-int/lit8 v0, v0, 0x1

    .line 4582
    if-eqz p1, :cond_5

    .line 4583
    if-lez v5, :cond_4

    .line 4584
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v10, 0x2

    const/4 v11, 0x0

    mul-int/lit8 v12, v0, 0x1

    invoke-virtual {v9, v10, v5, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    .line 4595
    :goto_1
    return-void

    .line 4567
    .end local v0           #duration:I
    .end local v1           #error:I
    .restart local v6       #pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v7       #totalHeadersHeight:I
    :cond_1
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 4568
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v10, v3

    add-int v8, v9, v10

    goto :goto_0

    .line 4570
    :cond_2
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 4571
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    mul-int/2addr v10, v3

    add-int v8, v9, v10

    goto :goto_0

    .line 4574
    .end local v6           #pm1:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v7           #totalHeadersHeight:I
    :cond_3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 4575
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    goto :goto_0

    .line 4586
    .restart local v0       #duration:I
    .restart local v1       #error:I
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_1

    .line 4589
    :cond_5
    if-lez v5, :cond_6

    .line 4590
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v10, 0x3

    const/4 v11, 0x0

    mul-int/lit8 v12, v0, 0x1

    invoke-virtual {v9, v10, v5, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_1

    .line 4592
    :cond_6
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_1
.end method

.method private setAnimationForExpandAll(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;III)Z
    .locals 25
    .parameter "view"
    .parameter "grp"
    .parameter "childIndex"
    .parameter "parentTop"
    .parameter "childrenHeight"

    .prologue
    .line 2301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v7, 0x1

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2302
    if-nez p1, :cond_0

    .line 2303
    const/4 v4, 0x0

    .line 2421
    :goto_0
    return v4

    .line 2304
    :cond_0
    const/16 v23, 0x0

    .local v23, startAlpha:F
    const/16 v21, 0x0

    .line 2305
    .local v21, endAlpha:F
    const/4 v5, 0x0

    .local v5, startRot:F
    const/4 v6, 0x0

    .line 2306
    .local v6, endRot:F
    const/4 v11, 0x0

    .line 2307
    .local v11, isExpand:Z
    const/16 v18, 0x0

    .line 2308
    .local v18, alphaAnim:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    .line 2309
    .local v3, rotAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/16 v24, 0x0

    .line 2310
    .local v24, transAnim:Landroid/view/animation/TranslateAnimation;
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2311
    .local v19, animationSet:Landroid/view/animation/AnimationSet;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getListPaddingLeft()I

    move-result v20

    .line 2313
    .local v20, childLeft:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_c

    .line 2314
    const/16 v23, 0x0

    .line 2315
    const/high16 v21, 0x3f80

    .line 2316
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v4, :cond_1

    .line 2317
    const/high16 v5, -0x3d4c

    .line 2318
    const/4 v6, 0x0

    .line 2320
    :cond_1
    const/4 v11, 0x1

    .line 2328
    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v4, v0, :cond_3

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-eqz v4, :cond_3

    .line 2330
    new-instance v18, Landroid/view/animation/AlphaAnimation;

    .end local v18           #alphaAnim:Landroid/view/animation/Animation;
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2331
    .restart local v18       #alphaAnim:Landroid/view/animation/Animation;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2332
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationOffsetForChild(I)F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 2333
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_2

    .line 2334
    const-string v4, "EXPAND_ALL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "group_id: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " duration: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " offset: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_2
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    .end local v3           #rotAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x4000

    div-float v7, v4, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x4000

    div-float v8, v4, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 2337
    .restart local v3       #rotAnim:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v4

    float-to-long v9, v4

    invoke-virtual {v3, v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setDuration(J)V

    .line 2338
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationOffsetForChild(I)F

    move-result v4

    float-to-long v9, v4

    invoke-virtual {v3, v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setStartOffset(J)V

    .line 2341
    if-eqz v11, :cond_e

    .line 2342
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2343
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2350
    :cond_3
    :goto_1
    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v4, v0, :cond_4

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-eqz v4, :cond_4

    .line 2351
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24           #transAnim:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v7, v0

    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationStartPositionForChild(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationEndPositionForChild(I)I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2354
    .restart local v24       #transAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDurationForChild(I)F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2355
    invoke-virtual/range {p2 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationOffsetForChild(I)F

    move-result v4

    float-to-long v9, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2356
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2357
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2360
    :cond_4
    const/4 v4, -0x1

    move/from16 v0, p3

    if-ne v4, v0, :cond_5

    .line 2363
    new-instance v24, Landroid/view/animation/TranslateAnimation;

    .end local v24           #transAnim:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v7, v0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    int-to-float v9, v9

    move-object/from16 v0, p2

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    int-to-float v10, v10

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2365
    .restart local v24       #transAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v22

    .line 2366
    .local v22, grpAnimDuration:F
    move/from16 v0, v22

    float-to-long v9, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2367
    const-wide/16 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2368
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2369
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2372
    .end local v22           #grpAnimDuration:F
    :cond_5
    const/4 v8, 0x0

    .line 2373
    .local v8, animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    const/4 v12, 0x0

    .line 2376
    .local v12, animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_f

    const/4 v4, -0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_f

    .line 2377
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    .end local v8           #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2385
    .end local v12           #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v8       #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :goto_2
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_10

    const/4 v4, -0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    .line 2386
    new-instance v12, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v11

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2392
    .restart local v12       #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :goto_3
    if-eqz v18, :cond_7

    .line 2393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2394
    const-wide/16 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2396
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2397
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2401
    :cond_7
    if-eqz v3, :cond_9

    .line 2402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2403
    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setDuration(J)V

    .line 2406
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2410
    :cond_9
    if-eqz v24, :cond_b

    .line 2411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2412
    const-wide/16 v9, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2414
    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2416
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2419
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2421
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2323
    .end local v8           #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .end local v12           #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_d

    .line 2324
    const-string v4, "TWExpandableList"

    const-string v7, "triggerListItemFadeInOutAnimation:: UNKNOWN ANIMATION ATTACHED"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2345
    :cond_e
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2346
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_1

    .line 2380
    .restart local v8       #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v12       #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    :cond_f
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    .end local v8           #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .end local v12           #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .restart local v8       #animRotListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    goto/16 :goto_2

    .line 2389
    :cond_10
    new-instance v12, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v11

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .restart local v12       #animTranslateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    goto/16 :goto_3
.end method

.method private setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z
    .locals 24
    .parameter "grp"
    .parameter "indDuration"
    .parameter "StartOffset"

    .prologue
    .line 2428
    if-nez p1, :cond_0

    .line 2429
    const/4 v3, 0x0

    .line 2543
    :goto_0
    return v3

    .line 2431
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v7, 0x2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v21

    .line 2434
    .local v21, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2436
    const/16 v18, 0x0

    .line 2437
    .local v18, linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    const/16 v22, 0x0

    .line 2438
    .local v22, subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    const/16 v20, 0x0

    .line 2440
    .local v20, originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    const/16 v16, 0x0

    .line 2441
    .local v16, imgViewInsideSubLinearLayout:Landroid/view/View;
    const/4 v2, 0x0

    .line 2442
    .local v2, animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/4 v4, 0x0

    .line 2443
    .local v4, rotSt:F
    const/4 v5, 0x0

    .line 2444
    .local v5, rotEnd:F
    const/16 v17, 0x0

    .line 2445
    .local v17, isExpand:Z
    const/4 v13, -0x1

    .line 2446
    .local v13, expandingGroupNumber:I
    const/4 v12, -0x1

    .line 2448
    .local v12, collapsingItemNumber:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v13

    .line 2449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v12

    .line 2451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v3, :cond_7

    .line 2452
    const/16 v17, 0x1

    .line 2456
    :goto_1
    if-eqz v17, :cond_9

    .line 2457
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2458
    .local v14, frameLayoutView:Landroid/view/View;
    if-eqz v14, :cond_8

    instance-of v3, v14, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    move-object/from16 v18, v14

    .line 2459
    check-cast v18, Landroid/widget/FrameLayout;

    .line 2473
    :goto_2
    if-eqz v18, :cond_1

    .line 2474
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2475
    .local v19, linearLayoutView:Landroid/view/View;
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    move-object/from16 v22, v19

    .line 2476
    check-cast v22, Landroid/widget/LinearLayout;

    .line 2481
    .end local v19           #linearLayoutView:Landroid/view/View;
    :cond_1
    if-eqz v22, :cond_2

    .line 2483
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 2488
    :cond_2
    const/4 v15, 0x0

    .line 2489
    .local v15, imgView:Landroid/widget/ImageView;
    if-eqz v20, :cond_3

    .line 2490
    const/high16 v3, 0x900

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #imgView:Landroid/widget/ImageView;
    check-cast v15, Landroid/widget/ImageView;

    .line 2492
    .restart local v15       #imgView:Landroid/widget/ImageView;
    :cond_3
    if-eqz v15, :cond_c

    .line 2494
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v3, :cond_4

    .line 2495
    const-string v3, "TWExpandableList"

    const-string v7, "setIndicatorAnimation...imageView supplied by application.."

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_4
    move-object/from16 v16, v15

    .line 2514
    :cond_5
    :goto_3
    if-eqz v17, :cond_f

    .line 2515
    sget v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v5, v3

    .line 2522
    :goto_4
    if-eqz v16, :cond_6

    .line 2523
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    .end local v2           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x4000

    div-float v6, v3, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x4000

    div-float v7, v3, v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 2529
    .restart local v2       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    move/from16 v0, p2

    float-to-long v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setDuration(J)V

    .line 2530
    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setStartOffset(J)V

    .line 2532
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2533
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V

    .line 2536
    .local v6, rotateListener1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2537
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setFillEnabled(Z)V

    .line 2538
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setFillAfter(Z)V

    .line 2540
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2543
    .end local v2           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .end local v4           #rotSt:F
    .end local v5           #rotEnd:F
    .end local v6           #rotateListener1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
    .end local v12           #collapsingItemNumber:I
    .end local v13           #expandingGroupNumber:I
    .end local v14           #frameLayoutView:Landroid/view/View;
    .end local v15           #imgView:Landroid/widget/ImageView;
    .end local v16           #imgViewInsideSubLinearLayout:Landroid/view/View;
    .end local v17           #isExpand:Z
    .end local v18           #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .end local v20           #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .end local v22           #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2454
    .restart local v2       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v4       #rotSt:F
    .restart local v5       #rotEnd:F
    .restart local v12       #collapsingItemNumber:I
    .restart local v13       #expandingGroupNumber:I
    .restart local v16       #imgViewInsideSubLinearLayout:Landroid/view/View;
    .restart local v17       #isExpand:Z
    .restart local v18       #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .restart local v20       #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .restart local v22       #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 2461
    .restart local v14       #frameLayoutView:Landroid/view/View;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2464
    .end local v14           #frameLayoutView:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2465
    .restart local v14       #frameLayoutView:Landroid/view/View;
    if-eqz v14, :cond_a

    instance-of v3, v14, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a

    move-object/from16 v18, v14

    .line 2466
    check-cast v18, Landroid/widget/FrameLayout;

    goto/16 :goto_2

    .line 2468
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2478
    .restart local v19       #linearLayoutView:Landroid/view/View;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2501
    .end local v19           #linearLayoutView:Landroid/view/View;
    .restart local v15       #imgView:Landroid/widget/ImageView;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v3, :cond_d

    .line 2502
    const-string v3, "TWExpandableList"

    const-string v7, "setIndicatorAnimation...imageView not supplied by application.."

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_d
    if-eqz v18, :cond_e

    .line 2504
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 2505
    .local v23, subLinearLayoutView:Landroid/view/View;
    if-eqz v23, :cond_e

    move-object/from16 v0, v23

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_e

    move-object/from16 v22, v23

    .line 2506
    check-cast v22, Landroid/widget/LinearLayout;

    .line 2509
    .end local v23           #subLinearLayoutView:Landroid/view/View;
    :cond_e
    if-eqz v22, :cond_5

    .line 2510
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_3

    .line 2517
    :cond_f
    sget v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v3, v3

    neg-float v5, v3

    goto/16 :goto_4
.end method

.method private triggerCorrectTooHighAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3521
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v1

    .line 3522
    .local v1, childCount:I
    if-gtz v1, :cond_1

    .line 3555
    :cond_0
    :goto_0
    return-void

    .line 3525
    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v1

    add-int/lit8 v8, v10, -0x1

    .line 3526
    .local v8, lastPosition:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_0

    if-lez v1, :cond_0

    .line 3527
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3529
    .local v7, lastChild:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 3532
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3534
    .local v6, lastBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getWidth()I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 3535
    .local v9, widthSpec:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v10

    const/high16 v11, -0x8000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3536
    .local v5, heightSpec:I
    invoke-virtual {p0, v9, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->measure(II)V

    .line 3537
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getMeasuredHeight()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v10, v11

    .line 3538
    .local v2, end:I
    sub-int v0, v2, v6

    .line 3539
    .local v0, bottomOffset:I
    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3541
    .local v3, firstChild:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 3543
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 3544
    .local v4, firstTop:I
    if-lez v0, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v10, :cond_0

    .line 3545
    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v10, :cond_3

    .line 3547
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3549
    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    if-nez v10, :cond_4

    .line 3550
    new-instance v10, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    .line 3551
    :cond_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v10, v13, v0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0
.end method


# virtual methods
.method checkIfGroupCanAddChild(ILjava/util/ArrayList;)Z
    .locals 8
    .parameter "groupIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 4165
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 4167
    .local v1, pData:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    const/4 v0, -0x1

    .line 4168
    .local v0, lastExpandingItemIndex:I
    if-eqz v1, :cond_1

    .line 4170
    iget v5, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v0, v5, v6

    .line 4180
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4182
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_2

    .line 4190
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return v4

    .line 4173
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v6, 0x2

    invoke-static {v6, p1, v7, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 4175
    .local v2, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v5, :cond_0

    .line 4176
    iget-object v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v0, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    goto :goto_0

    .line 4185
    .end local v2           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v3       #view:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTotalChildrenAdded(ILjava/util/ArrayList;)I

    move-result v6

    add-int/2addr v6, v0

    mul-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 4187
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public collapseAll()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4609
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v10

    sub-int v1, v9, v10

    .line 4610
    .local v1, childCount:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getCount()I

    move-result v0

    .line 4614
    .local v0, actualChildCountInAdapter:I
    if-gtz v0, :cond_1

    .line 4716
    :cond_0
    :goto_0
    return v7

    .line 4620
    :cond_1
    if-gtz v1, :cond_3

    .line 4622
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v5

    .line 4623
    .local v5, oldFlag:Z
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 4624
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 4625
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    .line 4624
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4627
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    move v7, v8

    .line 4628
    goto :goto_0

    .line 4630
    .end local v3           #i:I
    .end local v5           #oldFlag:Z
    :cond_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eq v9, v8, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v9, v8, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 4638
    :cond_4
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-ne v9, v8, :cond_0

    .line 4639
    const-string v8, "TWExpandableList"

    const-string v9, "collapseAll returned false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4644
    :cond_5
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v9, :cond_7

    .line 4645
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v8, :cond_9

    .line 4646
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v9, :cond_6

    .line 4647
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 4648
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 4656
    :cond_6
    :goto_2
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v9, :cond_7

    .line 4657
    const-string v9, "TWExpandableList"

    const-string v10, "fling/scroll is happening"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findCollapsingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 4663
    .local v4, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_a

    .line 4664
    :cond_8
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_0

    .line 4665
    const-string v8, "TWExpandableList"

    const-string v9, "Nothing to expand/collapse"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4650
    .end local v4           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_9
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v12, :cond_6

    .line 4651
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v9, :cond_6

    .line 4652
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4653
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_2

    .line 4670
    .restart local v4       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_a
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v9, :cond_b

    .line 4671
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Call setAdapter(ExpandableListAdapter) before expandAll/collapseAll"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4675
    :cond_b
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v9

    if-nez v9, :cond_d

    .line 4676
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_c

    .line 4677
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    .line 4676
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    move v7, v8

    .line 4678
    goto/16 :goto_0

    .line 4682
    .end local v3           #i:I
    :cond_d
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    if-ne v9, v11, :cond_e

    .line 4683
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_e

    .line 4684
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4685
    .local v6, pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v9, v12, :cond_10

    .line 4686
    const/4 v2, 0x0

    .line 4687
    .local v2, childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4688
    if-eqz v2, :cond_10

    .line 4689
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 4696
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_e
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    if-ne v9, v11, :cond_f

    .line 4697
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_f

    .line 4698
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4699
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v9, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v9, v8, :cond_11

    .line 4700
    const/4 v2, 0x0

    .line 4701
    .restart local v2       #childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4702
    if-eqz v2, :cond_11

    .line 4703
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 4710
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_f
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v9, :cond_12

    .line 4711
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollToHeaderAtTheTop(Z)V

    :goto_6
    move v7, v8

    .line 4716
    goto/16 :goto_0

    .line 4683
    .restart local v3       #i:I
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4697
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4714
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_12
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_6
.end method

.method public collapseGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 830
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 832
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 836
    :cond_0
    return v0
.end method

.method correctAnimatingItems()V
    .locals 14

    .prologue
    .line 4063
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    .line 4064
    .local v4, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4065
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4102
    :cond_0
    return-void

    .line 4068
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4069
    .local v2, groupHeight:I
    const/4 v7, 0x0

    .line 4071
    .local v7, numberOfVisibleItems:I
    move v9, v4

    .line 4073
    .local v9, remainingHeight:I
    const/4 v5, 0x0

    .line 4074
    .local v5, i:I
    :goto_0
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    if-lez v9, :cond_0

    .line 4075
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 4077
    .local v3, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isGroupExpanded(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 4078
    const/4 v11, 0x0

    .line 4079
    .local v11, visibleChildren:I
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v13, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v1

    .line 4081
    .local v1, gflatPos:I
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v12, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v8

    .line 4082
    .local v8, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v12

    iget v13, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-interface {v12, v13}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .line 4084
    .local v6, numberOfChildren:I
    sub-int/2addr v9, v2

    .line 4085
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v12, v6

    sub-int v10, v9, v12

    .line 4087
    .local v10, tempHeight:I
    if-gez v10, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    if-eqz v12, :cond_3

    .line 4088
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    div-int v11, v9, v12

    .line 4092
    :goto_1
    move v9, v10

    .line 4093
    add-int/2addr v7, v11

    .line 4095
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v12

    if-nez v12, :cond_2

    .line 4096
    iget v12, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-ge v12, v11, :cond_2

    .line 4097
    iput v11, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 4074
    .end local v1           #gflatPos:I
    .end local v6           #numberOfChildren:I
    .end local v8           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v10           #tempHeight:I
    .end local v11           #visibleChildren:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4090
    .restart local v1       #gflatPos:I
    .restart local v6       #numberOfChildren:I
    .restart local v8       #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v10       #tempHeight:I
    .restart local v11       #visibleChildren:I
    :cond_3
    move v11, v6

    goto :goto_1
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 1182
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1199
    :goto_0
    return-object v0

    .line 1187
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1188
    .local v6, adjustedPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1189
    .local v7, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v7, :cond_1

    .line 1190
    iget-object v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 1191
    .local v8, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 1192
    if-eqz v8, :cond_1

    .line 1193
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 1194
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1195
    .local v2, packedPosition:J
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 1196
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0

    .line 1199
    .end local v2           #packedPosition:J
    .end local v8           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->hideSelector()V

    .line 441
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 443
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v0, :cond_2

    .line 444
    const-string v0, "TWExpandableList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDraw State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 452
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 453
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 461
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->draw(Landroid/graphics/Canvas;)V

    .line 463
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 524
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 526
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    :cond_0
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 9
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    const/4 v8, 0x1

    .line 2769
    const/16 v1, 0xff

    .line 2770
    .local v1, alpha:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-ne v6, v8, :cond_2

    .line 2776
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, p3

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v6

    if-ne v6, v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v6

    if-lt p3, v6, :cond_2

    .line 2777
    :cond_1
    const/4 v1, 0x0

    .line 2780
    :cond_2
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v4, p3, v6

    .line 2784
    .local v4, flatListPosition:I
    if-ltz v4, :cond_7

    .line 2785
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 2786
    .local v0, adjustedPosition:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 2789
    .local v5, pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-eq v6, v8, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v7, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v6, v7, :cond_6

    .line 2792
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 2793
    .local v3, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2794
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mClipChildDivider:Z

    .line 2795
    .local v2, clip:Z
    if-nez v2, :cond_5

    .line 2796
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2801
    :goto_0
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2802
    if-eqz v2, :cond_4

    .line 2803
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2805
    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 2818
    .end local v0           #adjustedPosition:I
    .end local v2           #clip:Z
    .end local v3           #divider:Landroid/graphics/drawable/Drawable;
    .end local v5           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :goto_1
    return-void

    .line 2798
    .restart local v0       #adjustedPosition:I
    .restart local v2       #clip:Z
    .restart local v3       #divider:Landroid/graphics/drawable/Drawable;
    .restart local v5       #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2799
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 2808
    .end local v2           #clip:Z
    .end local v3           #divider:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 2810
    .end local v0           #adjustedPosition:I
    .end local v5           #pos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_7
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mLastDividerAlpha:I

    if-eq v6, v1, :cond_8

    .line 2811
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mLastDividerAlpha:I

    .line 2812
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2813
    .restart local v3       #divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2814
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2817
    .end local v3           #divider:Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-super {p0, p1, p2, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1
.end method

.method protected drawRemainingDivider(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 2706
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v6

    .line 2707
    .local v6, count:I
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 2708
    .local v17, tempRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 2709
    .local v5, clipSaved:Z
    const/4 v15, 0x0

    .line 2710
    .local v15, saveClip:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v13

    .line 2711
    .local v13, listHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_0

    .line 2712
    const/4 v5, 0x1

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2714
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPaddingTop()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2715
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2716
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2717
    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v15

    .line 2718
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2721
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v9, v0

    .line 2722
    .local v9, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    div-float v19, v19, v9

    invoke-interface/range {v18 .. v19}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2724
    .local v16, shift:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1

    .line 2725
    mul-int/lit8 v16, v16, -0x1

    .line 2728
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 2729
    .local v14, save1:I
    const/16 v18, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2731
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v7

    .line 2732
    .local v7, dividerHeight:I
    if-lez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_2

    const/4 v8, 0x1

    .line 2733
    .local v8, drawDividers:Z
    :goto_0
    if-eqz v8, :cond_4

    .line 2734
    const/4 v4, 0x0

    .line 2735
    .local v4, child:Landroid/view/View;
    const/4 v10, 0x0

    .line 2736
    .local v10, i:I
    add-int/lit8 v10, v6, -0x1

    :goto_1
    if-ltz v10, :cond_4

    .line 2737
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2738
    if-eqz v4, :cond_3

    .line 2739
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 2741
    .local v12, lastbottom:I
    move-object/from16 v3, v17

    .line 2742
    .local v3, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 2743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 2744
    if-ge v12, v13, :cond_4

    .line 2745
    const/4 v11, 0x0

    .line 2746
    .local v11, lastChildBottom:I
    :goto_2
    if-ge v11, v13, :cond_4

    .line 2747
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v18

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v18, v18, v19

    add-int v11, v12, v18

    .line 2748
    iput v12, v3, Landroid/graphics/Rect;->top:I

    .line 2749
    add-int v18, v12, v7

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 2750
    move v12, v11

    .line 2751
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 2732
    .end local v3           #bounds:Landroid/graphics/Rect;
    .end local v4           #child:Landroid/view/View;
    .end local v8           #drawDividers:Z
    .end local v10           #i:I
    .end local v11           #lastChildBottom:I
    .end local v12           #lastbottom:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 2736
    .restart local v4       #child:Landroid/view/View;
    .restart local v8       #drawDividers:Z
    .restart local v10       #i:I
    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 2760
    .end local v4           #child:Landroid/view/View;
    .end local v10           #i:I
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2762
    if-eqz v5, :cond_5

    .line 2763
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2765
    :cond_5
    return-void
.end method

.method public enableRotateAnimationForChildViews(Z)V
    .locals 0
    .parameter "animFlag"

    .prologue
    .line 1281
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    .line 1282
    return-void
.end method

.method public expandAll()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4434
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v10

    sub-int v1, v9, v10

    .line 4435
    .local v1, childCount:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getCount()I

    move-result v0

    .line 4439
    .local v0, actualChildCountInAdapter:I
    if-gtz v0, :cond_0

    .line 4539
    :goto_0
    return v7

    .line 4445
    :cond_0
    if-gtz v1, :cond_2

    .line 4447
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v5

    .line 4448
    .local v5, oldFlag:Z
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 4449
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 4450
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 4449
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4452
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    move v7, v8

    .line 4453
    goto :goto_0

    .line 4455
    .end local v3           #i:I
    .end local v5           #oldFlag:Z
    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eq v9, v8, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v9, v8, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    .line 4462
    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_4

    .line 4463
    const-string v8, "TWExpandableList"

    const-string v9, "Expand All returned false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    goto :goto_0

    .line 4468
    :cond_5
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v9, :cond_7

    .line 4469
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v8, :cond_a

    .line 4470
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v9, :cond_6

    .line 4471
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 4472
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 4480
    :cond_6
    :goto_2
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v9, :cond_7

    .line 4481
    const-string v9, "TWExpandableList"

    const-string v10, "fling/scroll is happening"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findExpandingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 4486
    .local v4, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_b

    .line 4487
    :cond_8
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v8, :cond_9

    .line 4488
    const-string v8, "TWExpandableList"

    const-string v9, "Nothing to expand/collapse"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    const-string v8, "TWExpandableList"

    const-string v9, "***********expandAll anim state set to INVALID************"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    :cond_9
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto/16 :goto_0

    .line 4474
    .end local v4           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_a
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-ne v9, v12, :cond_6

    .line 4475
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v9, :cond_6

    .line 4476
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4477
    iput-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_2

    .line 4494
    .restart local v4       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :cond_b
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v7, :cond_c

    .line 4495
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Call setAdapter(ExpandableListAdapter) before expandAll/collapseAll"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4500
    :cond_c
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v7

    if-nez v7, :cond_e

    .line 4501
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 4502
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 4501
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    move v7, v8

    .line 4503
    goto/16 :goto_0

    .line 4507
    .end local v3           #i:I
    :cond_e
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    if-ne v7, v11, :cond_f

    if-lez v1, :cond_f

    .line 4508
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_f

    .line 4509
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4510
    .local v6, pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v12, :cond_11

    .line 4511
    const/4 v2, 0x0

    .line 4512
    .local v2, childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4513
    if-eqz v2, :cond_11

    .line 4514
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 4521
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_f
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    if-ne v7, v11, :cond_10

    if-lez v1, :cond_10

    .line 4522
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_10

    .line 4523
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v9, v3

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 4524
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v7, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v8, :cond_12

    .line 4525
    const/4 v2, 0x0

    .line 4526
    .restart local v2       #childViewTemp:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4527
    if-eqz v2, :cond_12

    .line 4528
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 4534
    .end local v2           #childViewTemp:Landroid/view/View;
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_10
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v7, :cond_13

    if-lez v1, :cond_13

    .line 4535
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollToHeaderAtTheTop(Z)V

    :goto_6
    move v7, v8

    .line 4539
    goto/16 :goto_0

    .line 4508
    .restart local v3       #i:I
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4522
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4537
    .end local v3           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_13
    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_6
.end method

.method public expandGroup(I)Z
    .locals 6
    .parameter "groupPos"

    .prologue
    .line 802
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v1

    .line 803
    .local v1, flatPos:I
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v0, v4, v5

    .line 807
    .local v0, actualPos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 808
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v2

    .line 809
    .local v2, oldFalg:Z
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 810
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(I)Z

    move-result v3

    .line 811
    .local v3, retValue:Z
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 815
    .end local v2           #oldFalg:Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v4, :cond_1

    .line 816
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    invoke-interface {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 819
    :cond_1
    return v3

    .line 813
    .end local v3           #retValue:Z
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(I)Z

    move-result v3

    .restart local v3       #retValue:Z
    goto :goto_0
.end method

.method fillGapExpandableList(Z)V
    .locals 7
    .parameter "down"

    .prologue
    .line 4333
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v2

    .line 4335
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 4368
    :cond_0
    :goto_0
    return-void

    .line 4337
    :cond_1
    const/4 v1, 0x0

    .line 4338
    .local v1, child:Landroid/view/View;
    if-eqz p1, :cond_3

    .line 4339
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4340
    if-eqz v1, :cond_0

    .line 4342
    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v4, v5, v6

    .line 4344
    .local v4, startOffset:I
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 4342
    .end local v4           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getListPaddingTop()I

    move-result v4

    goto :goto_1

    .line 4347
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4348
    if-eqz v1, :cond_0

    .line 4350
    if-lez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v4, v5, v6

    .line 4352
    .restart local v4       #startOffset:I
    :goto_2
    const/4 v0, 0x1

    .line 4353
    .local v0, bFillUp:Z
    :goto_3
    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 4356
    :try_start_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillUp(II)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4358
    const/4 v0, 0x0

    goto :goto_3

    .line 4350
    .end local v0           #bFillUp:Z
    .end local v4           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getListPaddingBottom()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_2

    .line 4359
    .restart local v0       #bFillUp:Z
    .restart local v4       #startOffset:I
    :catch_0
    move-exception v3

    .line 4360
    .local v3, e:Ljava/lang/Exception;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4361
    const/4 v0, 0x1

    .line 4363
    goto :goto_3

    .line 4365
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method fillGroup(ILjava/util/ArrayList;)V
    .locals 1
    .parameter "lastVisibileGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4124
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v0, 0x0

    .line 4125
    .local v0, nextVisibleGroup:I
    :goto_0
    if-ltz v0, :cond_0

    .line 4126
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findLastGroupToAddChild(ILjava/util/ArrayList;)I

    move-result v0

    .line 4127
    move p1, v0

    goto :goto_0

    .line 4131
    :cond_0
    return-void
.end method

.method findAnimatingItems(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3996
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 3997
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v1, :cond_1

    .line 3998
    const-string v1, "TWExpandableList"

    const-string v2, "findAnimatingItems nothing to expand/collapse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_1
    :goto_0
    return-void

    .line 4002
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    .line 4027
    .local v0, lastVisibileGroup:I
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findFirstExpandingGroup(Ljava/util/ArrayList;)V

    .line 4042
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillGroup(ILjava/util/ArrayList;)V

    .line 4051
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->correctAnimatingItems()V

    goto :goto_0
.end method

.method findAnimatingItemsToCollapse(Ljava/util/ArrayList;)I
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3910
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v7, 0x0

    .line 3911
    .local v7, isSomeGroupCollapsing:Z
    const/4 v11, 0x0

    .line 3912
    .local v11, numberOfAnimatingChilren:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_5

    .line 3913
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 3915
    .local v5, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v0, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v4

    .line 3916
    .local v4, gflatPos:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v15, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v13

    .line 3917
    .local v13, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v13, :cond_0

    .line 3912
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3920
    :cond_0
    if-eqz v7, :cond_1

    .line 3921
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 3922
    :cond_1
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v15

    if-nez v15, :cond_3

    .line 3923
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 3946
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dump()V

    goto :goto_1

    .line 3925
    :cond_3
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 3926
    const/4 v7, 0x1

    .line 3927
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v15

    iget v0, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    .line 3928
    .local v2, childCount:I
    const/4 v15, 0x0

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 3929
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    if-ge v8, v2, :cond_4

    .line 3930
    add-int v15, v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3931
    .local v3, currView:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 3932
    iget v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 3929
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3937
    .end local v3           #currView:Landroid/view/View;
    :cond_4
    iget v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/2addr v11, v15

    .line 3938
    iget v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-nez v15, :cond_2

    .line 3943
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    goto :goto_2

    .line 3958
    .end local v2           #childCount:I
    .end local v4           #gflatPos:I
    .end local v5           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v8           #j:I
    .end local v13           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 3959
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int v1, v11, v15

    .line 3960
    .local v1, animChildrenTotalHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    div-int v12, v1, v15

    .line 3963
    .local v12, numberOfAnimatingGroups:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3964
    .local v14, upcomingGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 3966
    .local v10, lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v15, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    add-int/lit8 v9, v15, 0x1

    .line 3967
    .local v9, k:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v15}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v15

    if-ge v9, v15, :cond_7

    if-lez v12, :cond_7

    .line 3968
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v5

    .line 3969
    .restart local v5       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/4 v15, 0x0

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 3970
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 3971
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 3972
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3973
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3974
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v15, :cond_6

    .line 3975
    const-string v15, "DEBUG_COLLAPSE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Step 1: findAnimatingItemsToCollapse: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " getCount() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " childCount: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    :cond_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 3977
    .end local v5           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v15, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->addUpcomingCollpaseGroup(Ljava/util/ArrayList;)V

    .line 3979
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 3981
    .restart local v10       #lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v15, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    add-int/lit8 v9, v15, 0x1

    .line 3982
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v15

    if-ge v6, v15, :cond_9

    .line 3983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v5

    .line 3984
    .restart local v5       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    const/4 v15, 0x0

    iput v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    .line 3985
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    .line 3986
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    .line 3987
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3988
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v15, :cond_8

    .line 3989
    const-string v15, "DEBUG_COLLAPSE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Step 1.1: Adding footer to CollapseALL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " getCount() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " childCount: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    :cond_8
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 3992
    .end local v1           #animChildrenTotalHeight:I
    .end local v5           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v9           #k:I
    .end local v10           #lastVisibleGroup:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v12           #numberOfAnimatingGroups:I
    .end local v14           #upcomingGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;>;"
    :cond_9
    return v11
.end method

.method findFirstExpandingGroup(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4106
    .local p1, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4108
    .local v0, firstItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4109
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4110
    .local v1, groupItemHeight:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findFirstExpandingGroup(Ljava/util/ArrayList;III)V

    .line 4112
    .end local v1           #groupItemHeight:I
    :cond_0
    return-void
.end method

.method findLastGroupToAddChild(ILjava/util/ArrayList;)I
    .locals 5
    .parameter "lastVisibleGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4134
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4135
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4136
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 4137
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->checkIfGroupCanAddChild(ILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4138
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->updateVisibleGroups(ILjava/util/ArrayList;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4148
    .end local v1           #i:I
    :goto_1
    return v1

    .line 4143
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4136
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4148
    .end local v1           #i:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method findNumberOfCollapseAnimatingItems(II)I
    .locals 7
    .parameter "groupFlatPos"
    .parameter "numOfItems"

    .prologue
    .line 4397
    const/4 v4, 0x0

    .line 4398
    .local v4, retVal:I
    const/4 v0, 0x0

    .line 4399
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    .line 4400
    .local v3, remainingSpace:I
    const/4 v1, 0x0

    .line 4401
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v2, p1, v5

    .line 4402
    .local v2, posInList:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 4403
    const/4 v5, 0x0

    .line 4418
    :goto_0
    return v5

    .line 4404
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4405
    if-eqz v0, :cond_1

    .line 4406
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v3, v5, v6

    .line 4408
    :cond_1
    const/4 v0, 0x0

    .line 4410
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4411
    if-eqz v0, :cond_2

    .line 4412
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4413
    if-eqz v1, :cond_2

    .line 4414
    int-to-float v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 4416
    :cond_2
    if-le v4, p2, :cond_3

    .line 4417
    move v4, p2

    :cond_3
    move v5, v4

    .line 4418
    goto :goto_0
.end method

.method findNumberOfExpandAnimatingItems(I)I
    .locals 7
    .parameter "numOfItems"

    .prologue
    .line 4375
    const/4 v1, 0x0

    .line 4377
    .local v1, retVal:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4378
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    move v2, v1

    .line 4389
    .end local v1           #retVal:I
    .local v2, retVal:I
    :goto_0
    return v2

    .line 4381
    .end local v2           #retVal:I
    .restart local v1       #retVal:I
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    mul-int/2addr v4, p1

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v6

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 4383
    .local v3, totSpaceOccupiedByExpansion:I
    move v1, p1

    .line 4384
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 4385
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    sub-int v3, v4, v5

    .line 4386
    int-to-float v4, v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    :cond_1
    move v2, v1

    .line 4389
    .end local v1           #retVal:I
    .restart local v2       #retVal:I
    goto :goto_0
.end method

.method findVisibleGroups(I)V
    .locals 15
    .parameter "type"

    .prologue
    .line 3781
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 3782
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v12

    sub-int v0, v11, v12

    .line 3784
    .local v0, childCount:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    if-lez v0, :cond_0

    .line 3785
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 3786
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 3787
    .local v6, pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v6, :cond_3

    iget-object v11, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 3788
    const/4 v1, 0x0

    .line 3789
    .local v1, childViewTemp:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3790
    if-eqz v1, :cond_3

    .line 3791
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 3799
    .end local v1           #childViewTemp:Landroid/view/View;
    .end local v2           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_0
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    if-lez v0, :cond_1

    .line 3800
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_1

    .line 3801
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 3802
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v6, :cond_4

    iget-object v11, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 3803
    const/4 v1, 0x0

    .line 3804
    .restart local v1       #childViewTemp:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3805
    if-eqz v1, :cond_4

    .line 3806
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 3812
    .end local v1           #childViewTemp:Landroid/view/View;
    .end local v2           #i:I
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_1
    const/4 v3, -0x1

    .line 3814
    .local v3, lastGroupAdded:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 3815
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v8

    .line 3816
    .local v8, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v8, :cond_2

    iget-object v11, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 3817
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v13, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v13, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3819
    iget-object v11, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 3814
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3785
    .end local v3           #lastGroupAdded:I
    .end local v8           #posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v6       #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3800
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3826
    .end local v6           #pmTemp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .restart local v3       #lastGroupAdded:I
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 3905
    :cond_6
    :goto_3
    return-void

    .line 3829
    :pswitch_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findExpandingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 3831
    .local v4, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_9

    .line 3832
    :cond_7
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v11, :cond_8

    .line 3833
    const-string v11, "TWExpandableList"

    const-string v12, "Nothing to expand/collapse"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    :cond_8
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v12, -0x1

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    goto :goto_3

    .line 3852
    :cond_9
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_b

    .line 3853
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 3854
    .local v7, posMetaData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v11, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v9, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 3855
    .local v9, position:I
    add-int/lit8 v11, v3, 0x1

    if-ne v9, v11, :cond_a

    .line 3856
    add-int/lit8 v3, v3, 0x1

    .line 3857
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v13, 0x1

    invoke-virtual {v12, v9, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3852
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3862
    .end local v7           #posMetaData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v9           #position:I
    :cond_b
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findAnimatingItems(Ljava/util/ArrayList;)V

    .line 3864
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 3866
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startExpansionAll(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 3870
    .end local v4           #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    :pswitch_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findCollapsingGroups()Ljava/util/ArrayList;

    move-result-object v4

    .line 3872
    .restart local v4       #listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_d

    .line 3873
    :cond_c
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v12, -0x1

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3874
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v11, :cond_6

    .line 3875
    const-string v11, "TWExpandableList"

    const-string v12, "Nothing to expand/collapse"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3879
    :cond_d
    const/4 v10, 0x0

    .line 3880
    .local v10, totalAnimatingChildren:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findAnimatingItemsToCollapse(Ljava/util/ArrayList;)I

    move-result v10

    .line 3885
    if-gtz v10, :cond_f

    .line 3887
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v5

    .line 3888
    .local v5, oldFalg:Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 3889
    const/4 v2, 0x0

    :goto_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v11}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v11

    if-ge v2, v11, :cond_e

    .line 3890
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    .line 3889
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3892
    :cond_e
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    .line 3893
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v12, 0x2

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 3895
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v11, :cond_6

    .line 3896
    const-string v11, "TWExpandableList"

    const-string v12, "findVisibleGroups current anim state is ANIMATION_FINISHED"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3898
    .end local v5           #oldFalg:Z
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 3899
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v11, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startCollapsingAll(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 3826
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 551
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .parameter "flatListPosition"

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 942
    const-wide v1, 0xffffffffL

    .line 949
    :goto_0
    return-wide v1

    .line 945
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 946
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 947
    .local v3, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 948
    .local v1, packedPos:J
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 964
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainPosition(J)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 966
    .local v1, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 967
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 968
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 997
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 998
    const-wide/16 v3, -0x1

    .line 1007
    :goto_0
    return-wide v3

    .line 1000
    :cond_0
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 1002
    .local v0, groupPos:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 1004
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 985
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method getTotalChildrenAdded(ILjava/util/ArrayList;)I
    .locals 5
    .parameter "groupIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4152
    .local p2, listPosMetadata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;>;"
    const/4 v0, 0x0

    .line 4153
    .local v0, childrenAdded:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, p1, :cond_1

    .line 4154
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 4155
    .local v1, groupObj:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v3, v4, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4157
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/2addr v0, v3

    .line 4158
    :cond_0
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    if-lt p1, v3, :cond_2

    .line 4161
    .end local v1           #groupObj:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_1
    return v0

    .line 4153
    .restart local v1       #groupObj:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 713
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 719
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v0, :cond_1

    .line 720
    const-string v0, "TWExpandableList"

    const-string v1, "Expand All returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_1
    :goto_0
    return v10

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 726
    .local v9, posMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupPos:I

    .line 727
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupFlatPos:I

    .line 728
    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mposMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 730
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    .line 733
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 735
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v8

    .line 736
    .local v8, lpos:I
    if-eqz v8, :cond_1

    .line 744
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwarpViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    move v10, v6

    .line 747
    goto :goto_0

    .line 751
    :cond_3
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 753
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 756
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_4

    .line 759
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 776
    :cond_4
    :goto_1
    const/4 v10, 0x1

    .line 788
    .end local v8           #lpos:I
    .local v10, returnValue:Z
    :goto_2
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 762
    .end local v10           #returnValue:Z
    .restart local v8       #lpos:I
    :cond_5
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 765
    .local v7, groupPos:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v7, v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollTo(Landroid/view/View;IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    move-result v0

    if-nez v0, :cond_6

    move v10, v6

    .line 766
    goto :goto_0

    .line 768
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    .line 769
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 771
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_4

    .line 772
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    goto :goto_1

    .line 779
    .end local v7           #groupPos:I
    .end local v8           #lpos:I
    :cond_7
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_8

    .line 780
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwarpViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move-object v1, p0

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;->onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z

    move-result v10

    goto/16 :goto_0

    .line 785
    :cond_8
    const/4 v10, 0x0

    .restart local v10       #returnValue:Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected layoutChildren()V
    .locals 20

    .prologue
    .line 1576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1578
    const-string v17, "TWExpandableList"

    const-string v18, "layoutChildren Item Count and Adapter Count is not equal"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 1583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1585
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1588
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v17

    if-lez v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    if-lez v17, :cond_2

    .line 1589
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1590
    .local v10, headerView:Landroid/view/View;
    if-eqz v10, :cond_2

    instance-of v0, v10, Landroid/widget/FrameLayout;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 1591
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    .line 1595
    .end local v10           #headerView:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 1596
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1597
    .local v6, firstGroupView:Landroid/view/View;
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1598
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    .line 1602
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_11

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1605
    .local v9, grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v7

    .line 1606
    .local v7, flatPos:I
    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v17, v0

    add-int v17, v17, v7

    add-int/lit8 v12, v17, 0x1

    .line 1608
    .local v12, maxPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1609
    const/4 v8, 0x0

    .line 1610
    .local v8, flatPosition:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    check-cast v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    .line 1612
    .restart local v9       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v17, v0

    if-lez v17, :cond_5

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v8

    .line 1614
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_5

    .line 1615
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1616
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 1617
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 1627
    .end local v3           #childView:Landroid/view/View;
    .end local v8           #flatPosition:I
    .end local v11           #i:I
    :cond_4
    const/16 v16, 0x0

    .line 1629
    .local v16, totalHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1631
    .local v13, numberOfGroups:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofGroupItem:I

    move/from16 v17, v0

    mul-int v17, v17, v13

    sub-int v18, v12, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v16, v17, v18

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v17

    mul-int v17, v17, v12

    add-int v2, v16, v17

    .line 1635
    .local v2, bottom:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    .line 1636
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v2, v2, v17

    .line 1635
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1610
    .end local v2           #bottom:I
    .end local v13           #numberOfGroups:I
    .end local v16           #totalHeight:I
    .restart local v8       #flatPosition:I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1638
    .end local v8           #flatPosition:I
    .restart local v2       #bottom:I
    .restart local v13       #numberOfGroups:I
    .restart local v16       #totalHeight:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v18

    sub-int v11, v17, v18

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    .line 1639
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v2, v2, v17

    .line 1638
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1641
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1642
    const-string v17, "DEBUG_COLLAPSE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Step 2: bottom: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "orig_bottom: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v17

    move/from16 v0, v17

    if-le v2, v0, :cond_9

    .line 1644
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->adjustListSize(I)Z

    .line 1646
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1647
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_a

    .line 1649
    const-string v17, "DEBUG_COLLAPSE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Step 3: Before Layout height of: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1652
    :cond_a
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1653
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1654
    const/4 v11, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_b

    .line 1655
    const-string v17, "DEBUG_COLLAPSE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Step 4: After Layout height of: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1659
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 1661
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillAnimationDataForGroups(Z)V

    .line 1699
    .end local v2           #bottom:I
    .end local v6           #firstGroupView:Landroid/view/View;
    .end local v7           #flatPos:I
    .end local v9           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v11           #i:I
    .end local v12           #maxPos:I
    .end local v13           #numberOfGroups:I
    .end local v16           #totalHeight:I
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1701
    :cond_d
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    .line 1704
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 1705
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandCollapseAnimationWithAllItemsAdded()Z

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 1707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1708
    const-string v17, "TWExpandableList"

    const-string v18, "layoutChildren current anim state is ANIMATION_ADDED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_f
    return-void

    .line 1663
    .restart local v2       #bottom:I
    .restart local v6       #firstGroupView:Landroid/view/View;
    .restart local v7       #flatPos:I
    .restart local v9       #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .restart local v11       #i:I
    .restart local v12       #maxPos:I
    .restart local v13       #numberOfGroups:I
    .restart local v16       #totalHeight:I
    :cond_10
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillAnimationDataForGroups(Z)V

    goto :goto_5

    .line 1672
    .end local v2           #bottom:I
    .end local v7           #flatPos:I
    .end local v9           #grp:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;
    .end local v11           #i:I
    .end local v12           #maxPos:I
    .end local v13           #numberOfGroups:I
    .end local v16           #totalHeight:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 1674
    .local v14, numberOfNewAnimationItems:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1677
    .local v5, expGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1678
    .local v4, expGroupSize:I
    const/4 v3, 0x0

    .line 1679
    .restart local v3       #childView:Landroid/view/View;
    if-lez v4, :cond_12

    .line 1681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupFlatPos:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1684
    :cond_12
    if-eqz v3, :cond_13

    .line 1685
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    .line 1688
    .end local v3           #childView:Landroid/view/View;
    .end local v4           #expGroupSize:I
    .end local v5           #expGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;>;"
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v2

    .line 1689
    .restart local v2       #bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mheightofChildItem:I

    move/from16 v17, v0

    mul-int v17, v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v18

    mul-int v18, v18, v14

    add-int v15, v17, v18

    .line 1691
    .local v15, offset:I
    add-int/2addr v2, v15

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v17

    move/from16 v0, v17

    if-le v2, v0, :cond_14

    .line 1693
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->adjustListSize(I)Z

    .line 1695
    :cond_14
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    goto/16 :goto_5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 434
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1385
    instance-of v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1386
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1396
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1390
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    .line 1391
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1393
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1378
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1379
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 128
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-ne v0, v2, :cond_1

    .line 136
    const-string v0, "TWExpandableList"

    const-string v1, "Animation in progress,Scroll/fling blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 150
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-ne v0, v2, :cond_3

    .line 151
    const-string v0, "TWExpandableList"

    const-string v1, "Animation NOT in progress,Scroll/fling Allow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 687
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwarpViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-super {p0, v1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 694
    :goto_0
    return v1

    .line 693
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 694
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method readDataFromFile(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    .locals 10
    .parameter "fileName"

    .prologue
    .line 3356
    const/4 v4, 0x0

    .line 3357
    .local v4, rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/"

    invoke-direct {v7, v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    .local v7, userdataSrc:Ljava/io/File;
    const/4 v2, 0x0

    .line 3361
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 3363
    .local v0, buf:Ljava/io/BufferedReader;
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;

    .end local v4           #rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    invoke-direct {v4, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 3364
    .restart local v4       #rData:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 3367
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3369
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 3371
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3372
    .local v6, tmp:Ljava/lang/String;
    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3373
    .local v5, ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mFromDegrees:F

    .line 3375
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3376
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3377
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mToDegrees:F

    .line 3379
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3380
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3381
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mDepthZ:F

    .line 3383
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3384
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3385
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->duration:I

    .line 3387
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 3388
    new-instance v5, Ljava/lang/Float;

    .end local v5           #ss:Ljava/lang/Float;
    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 3389
    .restart local v5       #ss:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v8

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->axisOfRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 3395
    if-eqz v1, :cond_0

    .line 3397
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3403
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 3405
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 3413
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #ss:Ljava/lang/Float;
    .end local v6           #tmp:Ljava/lang/String;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-object v4

    .line 3406
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ss:Ljava/lang/Float;
    .restart local v6       #tmp:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 3408
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 3391
    .end local v5           #ss:Ljava/lang/Float;
    .end local v6           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 3395
    :goto_2
    if-eqz v0, :cond_2

    .line 3397
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3403
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 3405
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 3406
    :catch_2
    move-exception v8

    goto :goto_1

    .line 3395
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_3

    .line 3397
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3403
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 3405
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 3408
    :cond_4
    :goto_6
    throw v8

    .line 3398
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ss:Ljava/lang/Float;
    .restart local v6       #tmp:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #ss:Ljava/lang/Float;
    .end local v6           #tmp:Ljava/lang/String;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_5

    .line 3406
    :catch_6
    move-exception v9

    goto :goto_6

    .line 3395
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 3391
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ss:Ljava/lang/Float;
    .restart local v6       #tmp:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method scrollExpandableList(I)Z
    .locals 25
    .parameter "incrementalDeltaY"

    .prologue
    .line 4206
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    .line 4207
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 4208
    const/16 v23, 0x1

    .line 4325
    :goto_0
    return v23

    .line 4210
    :cond_0
    const/4 v6, 0x0

    .line 4211
    .local v6, childView:Landroid/view/View;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4212
    if-nez v6, :cond_1

    .line 4213
    const/16 v23, 0x1

    goto :goto_0

    .line 4214
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4216
    .local v11, firstTop:I
    const/4 v6, 0x0

    .line 4217
    add-int/lit8 v23, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4218
    if-nez v6, :cond_2

    .line 4219
    const/16 v23, 0x1

    goto :goto_0

    .line 4220
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 4221
    .local v16, lastBottom:I
    const/4 v6, 0x0

    .line 4223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 4226
    .local v17, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v19, v23, v11

    .line 4227
    .local v19, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v9, v23, v24

    .line 4228
    .local v9, end:I
    sub-int v20, v16, v9

    .line 4230
    .local v20, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v14, v23, v24

    .line 4232
    .local v14, height:I
    if-gez p1, :cond_4

    .line 4233
    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4239
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4241
    .local v10, firstPosition:I
    if-gez p1, :cond_5

    const/4 v8, 0x1

    .line 4243
    .local v8, down:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v13

    .line 4244
    .local v13, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v24

    sub-int v12, v23, v24

    .line 4246
    .local v12, footerViewsStart:I
    const/16 v21, 0x0

    .line 4247
    .local v21, start:I
    const/4 v7, 0x0

    .line 4250
    .local v7, count:I
    if-eqz v8, :cond_d

    .line 4251
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v23, p1

    .line 4252
    .local v22, top:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    if-ge v15, v5, :cond_7

    .line 4253
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4254
    if-nez v6, :cond_6

    .line 4252
    :cond_3
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 4236
    .end local v7           #count:I
    .end local v8           #down:Z
    .end local v10           #firstPosition:I
    .end local v12           #footerViewsStart:I
    .end local v13           #headerViewsCount:I
    .end local v15           #i:I
    .end local v21           #start:I
    .end local v22           #top:I
    :cond_4
    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 4241
    .restart local v10       #firstPosition:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 4256
    .restart local v7       #count:I
    .restart local v8       #down:Z
    .restart local v12       #footerViewsStart:I
    .restart local v13       #headerViewsCount:I
    .restart local v15       #i:I
    .restart local v21       #start:I
    .restart local v22       #top:I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4257
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    .line 4299
    .end local v4           #child:Landroid/view/View;
    .end local v22           #top:I
    :cond_7
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 4301
    if-lez v7, :cond_8

    .line 4303
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->detachViewsFromParent(II)V

    .line 4306
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->offsetChildrenTopAndBottom(I)V

    .line 4309
    if-eqz v8, :cond_9

    .line 4310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v7

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4314
    :cond_9
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4315
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v19

    if-lt v0, v2, :cond_a

    move/from16 v0, v20

    if-ge v0, v2, :cond_b

    .line 4317
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillGapExpandableList(Z)V

    .line 4319
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->invalidate()V

    .line 4321
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 4323
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->awakenScrollBars()Z

    .line 4325
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 4260
    .end local v2           #absIncrementalDeltaY:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v22       #top:I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 4261
    add-int v18, v10, v15

    .line 4262
    .local v18, position:I
    move/from16 v0, v18

    if-lt v0, v13, :cond_3

    move/from16 v0, v18

    if-ge v0, v12, :cond_3

    .line 4263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_4

    .line 4274
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #position:I
    .end local v22           #top:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v3, v23, p1

    .line 4275
    .local v3, bottom:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_5
    if-ltz v15, :cond_7

    .line 4276
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4277
    if-nez v6, :cond_f

    .line 4275
    :cond_e
    :goto_6
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 4279
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4280
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v3, :cond_7

    .line 4283
    move/from16 v21, v15

    .line 4284
    add-int/lit8 v7, v7, 0x1

    .line 4285
    add-int v18, v10, v15

    .line 4286
    .restart local v18       #position:I
    move/from16 v0, v18

    if-lt v0, v13, :cond_e

    move/from16 v0, v18

    if-ge v0, v12, :cond_e

    .line 4287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_6
.end method

.method public scrollTo(Landroid/view/View;IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z
    .locals 9
    .parameter "v"
    .parameter "groupPos"
    .parameter "expandingChildCount"
    .parameter "pos"

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3558
    if-nez p1, :cond_0

    .line 3579
    :goto_0
    return v4

    .line 3560
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 3561
    .local v3, vHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v0

    .line 3562
    .local v0, listHeight:I
    mul-int v1, p3, v3

    .line 3563
    .local v1, offset:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v2, v0, v6

    .line 3566
    .local v2, remainingSpace:I
    if-ge v2, v1, :cond_3

    .line 3567
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    if-nez v6, :cond_1

    .line 3568
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v6, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    .line 3569
    :cond_1
    if-le v1, v0, :cond_2

    .line 3570
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 3571
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-virtual {v6, v5, v1, p4, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0

    .line 3574
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    sub-int v7, v2, v1

    invoke-virtual {v6, v5, v7, p4, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 3579
    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 578
    if-eqz p1, :cond_0

    .line 580
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    .line 581
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setGroupIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 588
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 539
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "childDivider"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 517
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mClipChildDivider:Z

    .line 518
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childIndicator"

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1227
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1245
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    .line 1246
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    .line 1247
    return-void
.end method

.method public setCollapseAllSpeedFactor(F)V
    .locals 1
    .parameter "collapseAllSpeedFactor"

    .prologue
    .line 643
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 644
    const p1, 0x3dcccccd

    .line 646
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 647
    const/high16 p1, 0x40a0

    .line 649
    :cond_1
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseAllChildBaseSpeedFactor:F

    .line 650
    return-void
.end method

.method public setCollapseSpeedFactor(F)V
    .locals 1
    .parameter "collapseSpeedFactor"

    .prologue
    .line 620
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 621
    const p1, 0x3dcccccd

    .line 623
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 624
    const/high16 p1, 0x40a0

    .line 626
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    div-float/2addr v0, p1

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 627
    return-void
.end method

.method public setExpandAllSpeedFactor(F)V
    .locals 4
    .parameter "expandAllSpeedFactor"

    .prologue
    .line 630
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 631
    const p1, 0x3dcccccd

    .line 632
    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x4014

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 633
    const/high16 p1, 0x40a0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setspeedFactor(F)V

    .line 636
    return-void
.end method

.method public setExpandSpeedFactor(F)V
    .locals 1
    .parameter "expandSpeedFactor"

    .prologue
    .line 605
    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 606
    const p1, 0x3dcccccd

    .line 608
    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 609
    const/high16 p1, 0x40a0

    .line 611
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    .line 612
    return-void
.end method

.method public setExpandableListAnimationEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setChildItemAnimationFlag(Z)V

    .line 4721
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "groupIndicator"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1260
    if-eqz p1, :cond_1

    .line 1261
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1262
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1276
    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setGroupIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1277
    return-void

    .line 1264
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1266
    .local v0, drawables:Landroid/graphics/drawable/StateListDrawable;
    const v1, 0x10100a8

    .line 1267
    .local v1, stateExpanded:I
    const v2, 0x10100a9

    .line 1269
    .local v2, stateNormal:I
    new-array v3, v5, [I

    aput v1, v3, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1270
    new-array v3, v5, [I

    aput v2, v3, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1271
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1274
    .end local v0           #drawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #stateExpanded:I
    .end local v2           #stateNormal:I
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setGroupIndicatorRotationAngle(I)V
    .locals 2
    .parameter "angle"

    .prologue
    const/16 v1, 0xb4

    .line 420
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, -0x5a

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, -0xb4

    if-ne p1, v0, :cond_1

    .line 421
    :cond_0
    sput p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_1
    sput v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    goto :goto_0
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1296
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    .line 1297
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    .line 1298
    return-void
.end method

.method public setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    .line 924
    return-void
.end method

.method public setOnGroupClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 897
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    .line 898
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 859
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    .line 860
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 874
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    .line 875
    return-void
.end method

.method public setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 568
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 569
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    const/4 v3, 0x0

    .line 1042
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainChildPosition(II)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 1044
    .local v1, elChildPos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    if-nez v1, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return v3

    .line 1047
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1049
    .local v2, flatChildPos:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_2

    .line 1054
    if-eqz p3, :cond_0

    .line 1057
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    .line 1059
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1062
    if-nez v2, :cond_2

    .line 1063
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1067
    :cond_2
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1068
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 1070
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 1071
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 1073
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1017
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainGroupPosition(I)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    .line 1019
    .local v1, elGroupPos:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    if-eqz v1, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1021
    .local v2, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    .line 1023
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1024
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 1025
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    .line 1028
    .end local v0           #absoluteFlatPosition:I
    .end local v2           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :cond_0
    return-void
.end method

.method protected shouldCorrectTooHigh()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3497
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    .line 3515
    :pswitch_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    move v0, v1

    .line 3516
    :goto_0
    return v0

    .line 3499
    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    goto :goto_0

    .line 3505
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    if-eqz v0, :cond_0

    .line 3506
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shudCorrectHeightAfterAnimation:Z

    .line 3507
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerCorrectTooHighAnimation()V

    :cond_0
    move v0, v1

    .line 3509
    goto :goto_0

    .line 3497
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method triggerListItemFadeInOutAnimation(Landroid/view/View;III)Z
    .locals 23
    .parameter "view"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "offset"

    .prologue
    .line 3124
    if-nez p1, :cond_0

    .line 3125
    const/4 v3, 0x0

    .line 3203
    :goto_0
    return v3

    .line 3126
    :cond_0
    const/16 v20, 0x0

    .local v20, startAlpha:F
    const/16 v19, 0x0

    .line 3127
    .local v19, endAlpha:F
    const/16 v21, 0x0

    .local v21, startRot:F
    const/4 v9, 0x0

    .line 3128
    .local v9, endRot:F
    const/4 v5, 0x0

    .line 3129
    .local v5, isExpand:Z
    const/4 v15, 0x0

    .line 3130
    .local v15, alphaAnim:Landroid/view/animation/Animation;
    const/16 v16, 0x0

    .line 3131
    .local v16, animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3132
    .local v18, animationSet:Landroid/view/animation/AnimationSet;
    const/16 v17, 0x0

    .line 3134
    .local v17, animationOffset:F
    const/16 v22, 0x0

    .line 3136
    .local v22, totalAnimationTime:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v3, :cond_6

    .line 3137
    const/16 v20, 0x0

    .line 3138
    const/high16 v19, 0x3f80

    .line 3139
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_1

    .line 3140
    const/high16 v21, -0x3d38

    .line 3141
    const/4 v9, 0x0

    .line 3143
    :cond_1
    const/4 v5, 0x1

    .line 3144
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    const/high16 v4, 0x3f00

    mul-float v17, v3, v4

    .line 3145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v22, v0

    .line 3160
    :goto_1
    const/4 v2, 0x0

    .line 3162
    .local v2, rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_9

    .line 3163
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    .end local v2           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .line 3167
    .restart local v2       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    :goto_2
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    .end local v15           #alphaAnim:Landroid/view/animation/Animation;
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3168
    .restart local v15       #alphaAnim:Landroid/view/animation/Animation;
    move/from16 v0, v22

    float-to-long v3, v0

    invoke-virtual {v15, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3169
    move/from16 v0, p4

    int-to-float v3, v0

    mul-float v3, v3, v22

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    add-float v3, v3, v17

    float-to-long v3, v3

    invoke-virtual {v15, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 3171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3172
    const-wide/16 v3, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3174
    :cond_2
    invoke-virtual {v15, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3176
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_b

    .line 3177
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v10, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v11, v3, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move/from16 v8, v21

    move v14, v5

    invoke-direct/range {v6 .. v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 3179
    .end local v16           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .local v6, animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    move/from16 v0, v22

    float-to-long v3, v0

    move/from16 v0, v17

    float-to-int v7, v0

    int-to-long v7, v7

    sub-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setDuration(J)V

    .line 3180
    move/from16 v0, p4

    int-to-float v3, v0

    mul-float v3, v3, v22

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    add-float v3, v3, v17

    float-to-long v3, v3

    invoke-virtual {v6, v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setStartOffset(J)V

    .line 3182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3183
    const-wide/16 v3, 0x0

    invoke-virtual {v6, v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setDuration(J)V

    .line 3185
    :cond_3
    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3188
    :goto_3
    if-eqz v5, :cond_a

    .line 3189
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3190
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_4

    .line 3191
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3198
    :cond_4
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3199
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_5

    .line 3200
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3202
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3203
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 3146
    .end local v2           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    .end local v6           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v16       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 3147
    const/high16 v20, 0x3f80

    .line 3148
    const/16 v19, 0x0

    .line 3149
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_7

    .line 3150
    const/16 v21, 0x0

    .line 3151
    const/high16 v9, -0x3d4c

    .line 3153
    :cond_7
    const/4 v5, 0x0

    .line 3154
    const/16 v17, 0x0

    .line 3155
    sget v22, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    goto/16 :goto_1

    .line 3157
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3165
    .restart local v2       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    :cond_9
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    .end local v2           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .restart local v2       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    goto/16 :goto_2

    .line 3193
    .end local v16           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v6       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    :cond_a
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3194
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->rotateAnimationFlag:Z

    if-eqz v3, :cond_4

    .line 3195
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_4

    .end local v6           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v16       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    :cond_b
    move-object/from16 v6, v16

    .end local v16           #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v6       #animRot:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    goto :goto_3
.end method

.method protected triggerListItemTranslateAnimation(IIII)V
    .locals 45
    .parameter "firstselectedItemIndex"
    .parameter "selectedItemIndex"
    .parameter "numberOfSlotsToMove"
    .parameter "childItemHeight"

    .prologue
    .line 2833
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v19, v4, v8

    .line 2834
    .local v19, count:I
    if-gtz v19, :cond_1

    .line 3121
    :cond_0
    :goto_0
    return-void

    .line 2836
    :cond_1
    const/16 v31, 0x0

    .line 2837
    .local v31, isExpand:Z
    const/16 v35, 0x0

    .line 2838
    .local v35, numOfTranslationAnimations:I
    const/16 v23, 0x0

    .line 2839
    .local v23, durationOfTranslation:F
    const/16 v17, 0x0

    .line 2840
    .local v17, animationOffset:F
    const/16 v43, 0x0

    .line 2841
    .local v43, totalAnimationTime:F
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->lastAnimatingFooterIndex()I

    move-result v32

    .line 2843
    .local v32, lastAnimatingFooterIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_2

    .line 2844
    const/16 v31, 0x1

    .line 2850
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2851
    const/16 v16, 0x0

    .line 2852
    .local v16, animation:Landroid/view/animation/TranslateAnimation;
    const/4 v5, 0x0

    .line 2854
    .local v5, child:Landroid/view/View;
    add-int/lit8 v25, p2, 0x1

    .local v25, i:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2856
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2857
    const/16 v22, 0x0

    .line 2858
    .local v22, dividerHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v22

    .line 2860
    if-nez v5, :cond_3

    .line 2854
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 2845
    .end local v5           #child:Landroid/view/View;
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v22           #dividerHeight:I
    .end local v25           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    .line 2846
    const/16 v31, 0x0

    goto :goto_1

    .line 2862
    .restart local v5       #child:Landroid/view/View;
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    .restart local v22       #dividerHeight:I
    .restart local v25       #i:I
    :cond_3
    move/from16 v24, p4

    .line 2864
    .local v24, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getListPaddingLeft()I

    move-result v18

    .line 2866
    .local v18, childLeft:I
    add-int/lit8 v35, v35, 0x1

    .line 2867
    if-eqz v31, :cond_7

    .line 2868
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v8, v0

    mul-int v11, p3, v24

    mul-int v12, p3, v22

    add-int/2addr v11, v12

    neg-int v11, v11

    int-to-float v11, v11

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2870
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v43, v0

    .line 2881
    :goto_4
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    mul-float v4, v4, v43

    add-float v23, v4, v43

    .line 2886
    if-eqz v31, :cond_8

    .line 2887
    const v4, 0x3f666666

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2892
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2893
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2896
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2898
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 2900
    move/from16 v0, v17

    float-to-long v11, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2902
    add-int/lit8 v4, p2, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_6

    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_6

    .line 2903
    const/4 v6, 0x0

    .line 2904
    .local v6, isExpanding:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_5

    .line 2905
    const/4 v6, 0x1

    .line 2907
    :cond_5
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .line 2909
    .local v3, rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2911
    .end local v3           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    .end local v6           #isExpanding:Z
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 2874
    :cond_7
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, v18

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v8, v0

    const/4 v11, 0x0

    mul-int v12, p3, v24

    mul-int v13, p3, v22

    add-int/2addr v12, v13

    neg-int v12, v12

    int-to-float v12, v12

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2876
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2878
    sget v43, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    goto/16 :goto_4

    .line 2890
    :cond_8
    const/high16 v4, 0x3f80

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_5

    .line 2916
    .end local v5           #child:Landroid/view/View;
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v18           #childLeft:I
    .end local v22           #dividerHeight:I
    .end local v24           #h:I
    .end local v25           #i:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v8

    sub-int v25, v4, v8

    .restart local v25       #i:I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_a

    .line 2917
    const/16 v16, 0x0

    .line 2918
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v4, v4, v25

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2969
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_a
    const/16 v33, 0x0

    .line 2970
    .local v33, linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    const/16 v40, 0x0

    .line 2971
    .local v40, subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    const/16 v38, 0x0

    .line 2973
    .local v38, originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    const/16 v29, 0x0

    .line 2976
    .local v29, imgViewInsideSubLinearLayout:Landroid/view/View;
    if-eqz v31, :cond_19

    .line 2978
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    mul-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    add-float v23, v4, v8

    .line 2999
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    move/from16 v37, v0

    .line 3000
    .local v37, originalExpandGrpNumber:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v21, v4, v8

    .line 3002
    .local v21, currentExpandGroupNumber:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    move/from16 v36, v0

    .line 3003
    .local v36, originalCollaspeGrpNumber:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v20, v4, v8

    .line 3005
    .local v20, currentCollapseGroupNumber:I
    const/16 v39, 0x0

    .line 3006
    .local v39, position:I
    if-eqz v31, :cond_1a

    .line 3007
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v39

    .line 3011
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v4, v4, v39

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3012
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 3013
    .local v34, linearLayoutView:Landroid/view/View;
    if-eqz v34, :cond_b

    move-object/from16 v0, v34

    instance-of v4, v0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_b

    move-object/from16 v33, v34

    .line 3014
    check-cast v33, Landroid/widget/FrameLayout;

    .line 3018
    .end local v34           #linearLayoutView:Landroid/view/View;
    :cond_b
    if-eqz v33, :cond_c

    .line 3019
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 3020
    .local v41, subLinearLayoutView:Landroid/view/View;
    if-eqz v41, :cond_c

    move-object/from16 v0, v41

    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    move-object/from16 v40, v41

    .line 3021
    check-cast v40, Landroid/widget/LinearLayout;

    .line 3028
    .end local v41           #subLinearLayoutView:Landroid/view/View;
    :cond_c
    if-eqz v33, :cond_d

    .line 3029
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 3030
    .local v42, subLinearView:Landroid/view/View;
    if-eqz v42, :cond_d

    move-object/from16 v0, v42

    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_d

    move-object/from16 v40, v42

    .line 3031
    check-cast v40, Landroid/widget/LinearLayout;

    .line 3034
    .end local v42           #subLinearView:Landroid/view/View;
    :cond_d
    if-eqz v40, :cond_e

    .line 3036
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .line 3040
    :cond_e
    const/16 v28, 0x0

    .line 3041
    .local v28, imgView:Landroid/widget/ImageView;
    if-eqz v38, :cond_f

    .line 3042
    const/high16 v4, 0x900

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .end local v28           #imgView:Landroid/widget/ImageView;
    check-cast v28, Landroid/widget/ImageView;

    .line 3044
    .restart local v28       #imgView:Landroid/widget/ImageView;
    :cond_f
    if-eqz v28, :cond_1b

    .line 3046
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_10

    .line 3047
    const-string v4, "TWExpandableList"

    const-string v8, "setIndicatorAnimation...imageView supplied by application.."

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_10
    move-object/from16 v29, v28

    .line 3066
    :cond_11
    :goto_9
    const/4 v7, 0x0

    .line 3067
    .local v7, animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/4 v9, 0x0

    .line 3068
    .local v9, rotSt:F
    const/4 v10, 0x0

    .line 3070
    .local v10, rotEnd:F
    if-eqz v31, :cond_1e

    .line 3071
    sget v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v4, v4

    neg-float v9, v4

    .line 3072
    const/4 v10, 0x0

    .line 3079
    :goto_a
    if-eqz v29, :cond_12

    .line 3080
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v26, v0

    .line 3081
    .local v26, imageHeight:F
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v27, v0

    .line 3082
    .local v27, imageWidth:F
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;

    .end local v7           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    const/high16 v4, 0x4000

    div-float v11, v26, v4

    const/high16 v4, 0x4000

    div-float v12, v27, v4

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V

    .line 3091
    .restart local v7       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    if-eqz v31, :cond_1f

    .line 3092
    const v4, 0x3f4ccccd

    mul-float v4, v4, v23

    float-to-long v11, v4

    invoke-virtual {v7, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setDuration(J)V

    .line 3096
    :goto_b
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setFillEnabled(Z)V

    .line 3097
    if-nez v31, :cond_20

    .line 3098
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setFillAfter(Z)V

    .line 3099
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setFillBefore(Z)V

    .line 3104
    :goto_c
    move/from16 v0, v17

    float-to-long v11, v0

    invoke-virtual {v7, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setStartOffset(J)V

    .line 3106
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3108
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3109
    new-instance v30, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    .line 3110
    .local v30, indicatorListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3113
    .end local v26           #imageHeight:F
    .end local v27           #imageWidth:F
    .end local v30           #indicatorListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;
    :cond_12
    if-nez v35, :cond_0

    .line 3118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    goto/16 :goto_0

    .line 2921
    .end local v7           #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .end local v9           #rotSt:F
    .end local v10           #rotEnd:F
    .end local v20           #currentCollapseGroupNumber:I
    .end local v21           #currentExpandGroupNumber:I
    .end local v28           #imgView:Landroid/widget/ImageView;
    .end local v29           #imgViewInsideSubLinearLayout:Landroid/view/View;
    .end local v33           #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .end local v36           #originalCollaspeGrpNumber:I
    .end local v37           #originalExpandGrpNumber:I
    .end local v38           #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .end local v39           #position:I
    .end local v40           #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2922
    .restart local v5       #child:Landroid/view/View;
    const/16 v22, 0x0

    .line 2923
    .restart local v22       #dividerHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v22

    .line 2924
    mul-int v4, p3, p4

    mul-int v8, p3, v22

    add-int/2addr v4, v8

    neg-int v0, v4

    move/from16 v44, v0

    .line 2925
    .local v44, transDistance:I
    if-eqz v31, :cond_17

    .line 2926
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v0, v44

    int-to-float v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2927
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v43, v0

    .line 2937
    :goto_d
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    mul-float v4, v4, v43

    add-float v23, v4, v43

    .line 2939
    add-int v4, p1, p3

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_18

    .line 2940
    const v4, 0x3f666666

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2944
    :goto_e
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 2945
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 2946
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationFlag()Z

    move-result v4

    if-nez v4, :cond_14

    .line 2949
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2952
    :cond_14
    const-wide/16 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 2954
    move/from16 v0, v17

    float-to-long v11, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2955
    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    .line 2956
    const/4 v6, 0x0

    .line 2957
    .restart local v6       #isExpanding:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    if-nez v4, :cond_15

    .line 2958
    const/4 v6, 0x1

    .line 2960
    :cond_15
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V

    .line 2962
    .restart local v3       #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2964
    .end local v3           #rotateListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
    .end local v6           #isExpanding:Z
    :cond_16
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2916
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 2931
    :cond_17
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move/from16 v0, v44

    int-to-float v12, v0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v8, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2932
    .restart local v16       #animation:Landroid/view/animation/TranslateAnimation;
    const/16 v17, 0x0

    .line 2934
    sget v43, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    goto/16 :goto_d

    .line 2942
    :cond_18
    const/high16 v4, 0x3f80

    mul-float v4, v4, v23

    float-to-long v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_e

    .line 2983
    .end local v5           #child:Landroid/view/View;
    .end local v16           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v22           #dividerHeight:I
    .end local v44           #transDistance:I
    .restart local v29       #imgViewInsideSubLinearLayout:Landroid/view/View;
    .restart local v33       #linearLayoutForGroupItem:Landroid/widget/FrameLayout;
    .restart local v38       #originalViewLinearLayoutInsideGroupItem:Landroid/view/View;
    .restart local v40       #subLinearLayoutInsideGroupItem:Landroid/widget/LinearLayout;
    :cond_19
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v8, 0x3f00

    mul-float/2addr v4, v8

    sget v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    mul-float/2addr v4, v8

    sget v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    add-float v23, v4, v8

    goto/16 :goto_7

    .line 3009
    .restart local v20       #currentCollapseGroupNumber:I
    .restart local v21       #currentExpandGroupNumber:I
    .restart local v36       #originalCollaspeGrpNumber:I
    .restart local v37       #originalExpandGrpNumber:I
    .restart local v39       #position:I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v39

    goto/16 :goto_8

    .line 3053
    .restart local v28       #imgView:Landroid/widget/ImageView;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_1c

    .line 3054
    const-string v4, "TWExpandableList"

    const-string v8, "setIndicatorAnimation...imageView not supplied by application.."

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_1c
    if-eqz v33, :cond_1d

    .line 3056
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 3057
    .restart local v42       #subLinearView:Landroid/view/View;
    if-eqz v42, :cond_1d

    move-object/from16 v0, v42

    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1d

    move-object/from16 v40, v42

    .line 3058
    check-cast v40, Landroid/widget/LinearLayout;

    .line 3061
    .end local v42           #subLinearView:Landroid/view/View;
    :cond_1d
    if-eqz v40, :cond_11

    .line 3062
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_9

    .line 3074
    .restart local v7       #animRotTriangle:Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
    .restart local v9       #rotSt:F
    .restart local v10       #rotEnd:F
    :cond_1e
    const/4 v9, 0x0

    .line 3075
    sget v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->groupIndicatorRotateAngle:I

    int-to-float v4, v4

    neg-float v10, v4

    goto/16 :goto_a

    .line 3094
    .restart local v26       #imageHeight:F
    .restart local v27       #imageWidth:F
    :cond_1f
    const v4, 0x3f666666

    mul-float v4, v4, v23

    float-to-long v11, v4

    invoke-virtual {v7, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setDuration(J)V

    goto/16 :goto_b

    .line 3101
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setFillAfter(Z)V

    .line 3102
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->setFillBefore(Z)V

    goto/16 :goto_c
.end method

.method triggerPreDraw(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 3210
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 3211
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3212
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3213
    if-eqz p1, :cond_0

    move-object v3, p1

    .line 3215
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3217
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    .line 3212
    .end local v2           #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3221
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 3222
    if-eqz p1, :cond_2

    .line 3223
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->onPreDraw()Z

    .line 3226
    :cond_2
    return-void
.end method
