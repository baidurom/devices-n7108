.class public Lcom/sec/android/touchwiz/widget/TwDndGridView;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.source "TwDndGridView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;
    }
.end annotation


# static fields
.field private static final BITMAP_ALPHA:I = 0xb3

.field private static final DND_AUTO_SCROLL_BOTTOM:I = 0x2

.field private static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0xa

.field private static final DND_AUTO_SCROLL_NONE:I = 0x0

.field private static final DND_AUTO_SCROLL_TOP:I = 0x1

.field private static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field private static final DND_TOUCH_STATUS_NON:I = 0x0

.field private static final DND_TOUCH_STATUS_START:I = 0x1


# instance fields
.field private final mDensity:F

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

.field private mDndMode:Z

.field private mDndTouchMode:I

.field private mDndTouchOffsetX:I

.field private mDndTouchOffsetY:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePadding:Landroid/graphics/Rect;

.field private mDragGrabHandlePosGravity:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mGridViewHeight:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mMovedViewPos:I

.field private mPrevDndTouchY:I

.field private mPrevPos:I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 133
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, -0x8000

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    .line 139
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndMode:Z

    .line 141
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    .line 143
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    .line 144
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 146
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    .line 147
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    .line 148
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevDndTouchY:I

    .line 149
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    .line 150
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    .line 154
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 158
    const/16 v0, 0xb3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapAlpha:I

    .line 160
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    .line 162
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePosGravity:I

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 166
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    .line 167
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    .line 169
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 171
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setSelector(I)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwDndGridView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->findMovedItemIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwDndGridView;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Lcom/sec/android/touchwiz/widget/TwDndController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwDndGridView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkBlankArea(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkAutoDragBound(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    return v0
.end method

.method private autoScroll()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 917
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 919
    :cond_0
    const/4 v1, 0x0

    .line 928
    .local v1, delta:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevDndTouchY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    if-ge v5, v6, :cond_6

    .line 933
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 934
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 935
    .local v3, temp:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 936
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    .line 939
    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    if-le v5, v0, :cond_2

    .line 940
    const/high16 v5, -0x3ee0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 955
    .end local v0           #bottom:I
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 956
    const/4 v2, 0x0

    .line 970
    .local v2, savedEnableBounce:Z
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->trackMotionScroll(II)Z

    .line 974
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v5, v8, :cond_3

    .line 975
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    .line 980
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->pointToPosition(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 982
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->findMovedItemIndex(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    .line 987
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v5, v6, :cond_5

    .line 989
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v5, v8, :cond_8

    .line 990
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V

    .line 991
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    .line 993
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 994
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    .line 1012
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    .line 1016
    .end local v1           #delta:I
    .end local v2           #savedEnableBounce:Z
    .end local v3           #temp:Landroid/view/View;
    :cond_5
    return-void

    .line 945
    .restart local v1       #delta:I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getPaddingTop()I

    move-result v6

    add-int v4, v5, v6

    .line 946
    .local v4, top:I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 947
    .restart local v3       #temp:Landroid/view/View;
    if-eqz v3, :cond_7

    .line 948
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 951
    :cond_7
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    if-ge v5, v4, :cond_2

    .line 952
    const/high16 v5, 0x4120

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    goto/16 :goto_0

    .line 998
    .end local v4           #top:I
    .restart local v2       #savedEnableBounce:Z
    :cond_8
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-ne v5, v8, :cond_4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkBlankArea(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 1005
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V

    .line 1006
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    .line 1008
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1009
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    goto :goto_1
.end method

.method private checkAutoDragBound(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 666
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v0, v1

    .line 668
    .local v0, scrollBound:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 669
    const/4 v1, 0x1

    .line 673
    :goto_0
    return v1

    .line 670
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    if-ge p1, v1, :cond_1

    .line 671
    const/4 v1, 0x2

    goto :goto_0

    .line 673
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkBlankArea(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 610
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 611
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildCount()I

    move-result v1

    .line 614
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 615
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 616
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 617
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 622
    .end local v0           #child:Landroid/view/View;
    :cond_0
    if-eqz v2, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-ge v4, p1, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v4, p2, :cond_2

    .line 623
    const/4 v4, 0x1

    .line 625
    :goto_1
    return v4

    .line 614
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 625
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkStartDnd(III)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 275
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method private drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "childRect"
    .parameter "isDraggedItem"

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 861
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 862
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 864
    :cond_0
    return-void

    .line 861
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private findMovedItemIndex(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildCount()I

    move-result v0

    .line 634
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 635
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 636
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 637
    .local v3, v:Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 639
    const/4 v4, 0x0

    .line 640
    .local v4, xPosAdjust:I
    const/4 v5, 0x0

    .line 641
    .local v5, yPosAdjust:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v2

    .line 642
    .local v2, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    instance-of v6, v2, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    if-eqz v6, :cond_0

    move-object v6, v2

    .line 643
    check-cast v6, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetX()I

    move-result v4

    .line 644
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    .end local v2           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v5

    .line 647
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v1, v6, :cond_2

    .line 635
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    sub-int v7, p1, v4

    sub-int v8, p2, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v1

    .line 656
    .end local v1           #i:I
    .end local v3           #v:Landroid/view/View;
    .end local v4           #xPosAdjust:I
    .end local v5           #yPosAdjust:I
    :goto_1
    return v6

    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private findMovingArrage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 682
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 683
    .local v2, v1:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 684
    .local v3, v2:Landroid/view/View;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 715
    .end local v2           #v1:Landroid/view/View;
    .end local v3           #v2:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 688
    .restart local v2       #v1:Landroid/view/View;
    .restart local v3       #v2:Landroid/view/View;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 689
    .local v0, r1:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 690
    .local v1, r2:Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 691
    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 693
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    .line 699
    .end local v0           #r1:Landroid/graphics/Rect;
    .end local v1           #r2:Landroid/graphics/Rect;
    .end local v2           #v1:Landroid/view/View;
    .end local v3           #v2:Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getNumColumns()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 700
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 701
    .restart local v2       #v1:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getNumColumns()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 702
    .restart local v3       #v2:Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 706
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 707
    .restart local v0       #r1:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 708
    .restart local v1       #r2:Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 709
    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 711
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    goto :goto_0

    .line 696
    .end local v0           #r1:Landroid/graphics/Rect;
    .end local v1           #r2:Landroid/graphics/Rect;
    .end local v2           #v1:Landroid/view/View;
    .end local v3           #v2:Landroid/view/View;
    :cond_2
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    goto :goto_1

    .line 713
    :cond_3
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    goto :goto_0
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "childRect"
    .parameter "outGrabHandleRect"

    .prologue
    .line 844
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 846
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 847
    .local v0, drawableHeight:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 848
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 849
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 850
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 852
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 854
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :cond_0
    return-void
.end method

.method private recalculateOffset(III)V
    .locals 22
    .parameter "prevDestPosition"
    .parameter "newDestPosition"
    .parameter "adjustDestPosition"

    .prologue
    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v18, p1, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 725
    .local v12, prevPos:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v18, p2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 727
    .local v6, destPos:Landroid/view/View;
    if-eqz v12, :cond_0

    if-nez v6, :cond_1

    .line 841
    :cond_0
    return-void

    .line 732
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_6

    .line 733
    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v13, p1, v18

    .line 734
    .local v13, startIndex:I
    :goto_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v7, p3, v18

    .line 736
    .local v7, endIndex:I
    :goto_1
    move v9, v13

    .local v9, i:I
    :goto_2
    if-gt v9, v7, :cond_0

    .line 737
    const/4 v15, 0x0

    .line 738
    .local v15, t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v4

    .line 740
    .local v4, a:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    const/16 v16, 0x0

    .line 741
    .local v16, xPosAdjust:I
    const/16 v17, 0x0

    .line 743
    .local v17, yPosAdjust:I
    instance-of v0, v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object v15, v4

    .line 744
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move-object/from16 v18, v4

    .line 745
    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetX()I

    move-result v16

    .line 746
    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    .end local v4           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v17

    .line 751
    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    .line 752
    if-eqz v17, :cond_5

    .line 753
    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    .line 754
    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    .line 759
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    .line 736
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 733
    .end local v7           #endIndex:I
    .end local v9           #i:I
    .end local v13           #startIndex:I
    .end local v15           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    .end local v16           #xPosAdjust:I
    .end local v17           #yPosAdjust:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v13, p3, v18

    goto :goto_0

    .line 734
    .restart local v13       #startIndex:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v7, p1, v18

    goto :goto_1

    .line 748
    .restart local v4       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    .restart local v7       #endIndex:I
    .restart local v9       #i:I
    .restart local v15       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    .restart local v16       #xPosAdjust:I
    .restart local v17       #yPosAdjust:I
    :cond_4
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    .end local v15           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    .restart local v15       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    goto :goto_3

    .line 756
    .end local v4           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    :cond_5
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    .line 757
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    goto :goto_4

    .line 764
    .end local v7           #endIndex:I
    .end local v9           #i:I
    .end local v13           #startIndex:I
    .end local v15           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    .end local v16           #xPosAdjust:I
    .end local v17           #yPosAdjust:I
    :cond_6
    const/4 v5, 0x0

    .line 765
    .local v5, adjustPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getNumColumns()I

    move-result v10

    .line 767
    .local v10, numColumes:I
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_a

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v14, p2, v18

    .line 769
    .local v14, startPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v8, p1, v18

    .line 770
    .local v8, endPos:I
    move/from16 v11, p2

    .line 772
    .local v11, pos:I
    move v9, v14

    .restart local v9       #i:I
    :goto_5
    if-le v9, v8, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    if-ne v9, v0, :cond_7

    .line 774
    add-int/lit8 v8, v8, -0x1

    .line 772
    :goto_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 778
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v5, v11, v18

    .line 780
    const/4 v15, 0x0

    .line 781
    .restart local v15       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v4

    .line 783
    .restart local v4       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    instance-of v0, v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object v15, v4

    .line 784
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    .line 789
    :goto_7
    rem-int v18, v5, v10

    if-nez v18, :cond_9

    .line 791
    const/16 v18, 0x0

    add-int/lit8 v19, v10, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    .line 792
    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    .line 793
    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    .line 800
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    .line 801
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 786
    :cond_8
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    .end local v15           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    .restart local v15       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    goto :goto_7

    .line 796
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    .line 797
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    .line 798
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    goto :goto_8

    .line 805
    .end local v4           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    .end local v8           #endPos:I
    .end local v9           #i:I
    .end local v11           #pos:I
    .end local v14           #startPos:I
    .end local v15           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v14, p2, v18

    .line 806
    .restart local v14       #startPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v8, p1, v18

    .line 807
    .restart local v8       #endPos:I
    move/from16 v11, p2

    .line 809
    .restart local v11       #pos:I
    move v9, v14

    .restart local v9       #i:I
    :goto_9
    if-ge v9, v8, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    if-ne v9, v0, :cond_b

    .line 811
    add-int/lit8 v8, v8, 0x1

    .line 809
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 815
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v5, v11, v18

    .line 817
    const/4 v15, 0x0

    .line 818
    .restart local v15       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v4

    .line 820
    .restart local v4       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    instance-of v0, v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object v15, v4

    .line 821
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    .line 826
    :goto_b
    rem-int v18, v5, v10

    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 828
    const/16 v18, 0x0

    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    .line 829
    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    .line 830
    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    .line 837
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    .line 838
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 823
    :cond_c
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    .end local v15           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    .restart local v15       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
    goto :goto_b

    .line 833
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    .line 834
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    .line 835
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    goto :goto_c
.end method


# virtual methods
.method protected checkDndGrabHandle(III)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 283
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 284
    const/4 v2, 0x1

    .line 300
    :goto_0
    return v2

    .line 287
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 289
    .local v0, childRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 293
    if-eqz v0, :cond_1

    .line 295
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 298
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_0

    .line 300
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 895
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 900
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int v0, v2, v3

    .line 901
    .local v0, draggedItemX:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    .line 903
    .local v1, draggedItemY:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 905
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 906
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 907
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 908
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 910
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 913
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 869
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 871
    .local v1, pos:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    .line 872
    const/4 v2, 0x0

    .line 876
    .end local v0           #index:I
    .end local v1           #pos:I
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0
.end method

.method public getDndListener()Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    return-object v0
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 390
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 354
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 378
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 366
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndMode:Z

    return v0
.end method

.method protected onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 4
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 885
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 886
    .local v1, pos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 888
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 891
    .end local v0           #index:I
    .end local v1           #pos:I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 397
    .local v0, action:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    .line 401
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, -0x8000

    .line 407
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->pointToPosition(II)I

    move-result v0

    .line 408
    .local v0, itemPosition:I
    if-ne v0, v6, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    .line 412
    :cond_1
    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    invoke-direct {p0, v3, v4, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkStartDnd(III)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 415
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->findMovingArrage()V

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    .line 419
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 423
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    .line 424
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    .line 425
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 427
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 429
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    const/high16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 432
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 437
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 438
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragViewAlpha(I)V

    .line 440
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 442
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 443
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    .line 444
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    .line 447
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    .line 449
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    move v1, v2

    .line 451
    goto/16 :goto_0

    .line 455
    :cond_4
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    .line 456
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    .line 457
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    .line 458
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 459
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 460
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 461
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 463
    :cond_5
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    .line 465
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    .line 466
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDndListener()Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 478
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;->OnDragAndDropStart()V

    :cond_6
    move v1, v2

    .line 481
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v8, -0x8000

    const/4 v7, -0x1

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    if-nez v4, :cond_2

    .line 488
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 603
    :cond_1
    :goto_0
    return v3

    .line 491
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 493
    .local v0, action:I
    if-ne v0, v6, :cond_8

    .line 494
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevDndTouchY:I

    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, isUpdatedLayout:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    .line 501
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v4, v7, :cond_3

    .line 502
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    .line 507
    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->pointToPosition(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 510
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->findMovedItemIndex(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    .line 515
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v4, v5, :cond_4

    .line 516
    const/4 v1, 0x1

    .line 519
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v4, v7, :cond_7

    .line 520
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V

    .line 521
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    .line 523
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 524
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    .line 546
    :cond_4
    :goto_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevDndTouchY:I

    if-eq v4, v5, :cond_5

    .line 549
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->autoScroll()V

    .line 552
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 553
    const/4 v1, 0x1

    .line 556
    :cond_6
    if-eqz v1, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    goto/16 :goto_0

    .line 528
    :cond_7
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-ne v4, v7, :cond_4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkBlankArea(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 534
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V

    .line 535
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    .line 537
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 538
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    goto :goto_1

    .line 560
    .end local v1           #isUpdatedLayout:Z
    :cond_8
    if-eq v0, v5, :cond_9

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 561
    :cond_9
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    if-eq v4, v5, :cond_a

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    if-ne v4, v6, :cond_d

    .line 563
    :cond_a
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-ne v4, v7, :cond_b

    .line 565
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 568
    :cond_b
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    if-eq v4, v5, :cond_c

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v4, v7, :cond_c

    .line 569
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v2

    .line 570
    .local v2, result:Z
    if-eqz v2, :cond_c

    .line 571
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 574
    .end local v2           #result:Z
    :cond_c
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->removeAll()V

    .line 577
    :cond_d
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    .line 578
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    .line 579
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    .line 581
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    .line 582
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    .line 584
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    .line 585
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    .line 587
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    .line 588
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    .line 590
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_e

    .line 591
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 595
    :cond_e
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    if-eqz v4, :cond_f

    .line 596
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    invoke-interface {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;->OnDragAndDropStop()V

    .line 601
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    goto/16 :goto_0
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    goto :goto_0
.end method

.method public setDndMode(Z)V
    .locals 2
    .parameter "dndMode"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndMode:Z

    .line 192
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    .line 196
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->removeAll()V

    goto :goto_0
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 340
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 341
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 342
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 344
    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 327
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePosGravity:I

    .line 328
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapAlpha:I

    .line 236
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method
