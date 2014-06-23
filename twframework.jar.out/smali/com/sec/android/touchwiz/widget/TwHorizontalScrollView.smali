.class public Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "TwHorizontalScrollView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwHorizontalScrollView"


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private isHoveringUIEnabled:Z

.field private mActivePointerId:I

.field mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field private final mBounceEnabled:Z

.field mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_BOUNCE:Z

    .line 86
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_SCROLL:Z

    .line 88
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 225
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    .line 98
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 115
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 129
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 146
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 162
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 178
    const/16 v2, 0x32

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    .line 183
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I

    .line 184
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I

    .line 185
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 186
    const/16 v2, 0x12c

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollTimeInterval:I

    .line 187
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 188
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 193
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 198
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    .line 203
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 208
    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 213
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 218
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isHoveringUIEnabled:Z

    .line 2124
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I

    .line 230
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initScrollView()V

    .line 232
    sget-object v2, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setFillViewport(Z)V

    .line 238
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isHoveringUIEnabled:Z

    .line 249
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 242
    const-string v2, "TwHorizontalScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 374
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 376
    .end local v1           #childWidth:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2094
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 2095
    :cond_0
    const/4 p1, 0x0

    .line 2100
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 2097
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 2098
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1535
    if-eqz p1, :cond_0

    .line 1536
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1537
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1539
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1271
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1272
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1281
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1283
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1284
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1285
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1286
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1287
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1289
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1295
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 1297
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1299
    move-object v1, v5

    .line 1300
    move v3, v7

    .line 1284
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1295
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1302
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 1306
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1307
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1313
    move-object v1, v5

    goto :goto_2

    .line 1302
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1316
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 1321
    move-object v1, v5

    .line 1322
    const/4 v3, 0x1

    goto :goto_2

    .line 1323
    :cond_7
    if-eqz v6, :cond_0

    .line 1328
    move-object v1, v5

    goto :goto_2

    .line 1335
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1243
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 1244
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1246
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1251
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1209
    const/4 v1, 0x0

    .line 1210
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1211
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1212
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1215
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 510
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 511
    .local v1, scrollX:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 516
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 521
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setFocusable(Z)V

    .line 292
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setDescendantFocusability(I)V

    .line 293
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setWillNotDraw(Z)V

    .line 294
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 295
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTouchSlop:I

    .line 296
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMinimumVelocity:I

    .line 297
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMaximumVelocity:I

    .line 298
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverscrollDistance:I

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverflingDistance:I

    .line 301
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 302
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setOrientation(I)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 304
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 306
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 529
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 531
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1514
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1948
    if-ne p1, p2, :cond_1

    .line 1953
    :cond_0
    :goto_0
    return v1

    .line 1952
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1953
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1523
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1525
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1084
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1085
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1086
    .local v1, pointerId:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1090
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1091
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 1092
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 1093
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1094
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1097
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1090
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 538
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1424
    const/4 v4, 0x1

    .line 1426
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1427
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1428
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1429
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1431
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1432
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1433
    move-object v5, p0

    .line 1436
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1437
    const/4 v4, 0x0

    .line 1443
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    .line 1444
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1446
    :cond_1
    return v4

    .line 1429
    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1439
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1440
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1439
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1751
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1754
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1756
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1758
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1759
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 1761
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1772
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1773
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1774
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1775
    if-eqz p2, :cond_2

    .line 1776
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 1781
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1773
    goto :goto_0

    .line 1778
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 347
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 365
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1458
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1459
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1460
    const/4 v0, 0x0

    .line 1462
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1464
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1466
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1467
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1468
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1469
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1470
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    .line 1471
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1494
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1502
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1503
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->requestFocus()Z

    .line 1504
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1506
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1474
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1476
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1477
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1488
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1491
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .line 1478
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1480
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1482
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1484
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1485
    sub-int v6, v1, v5

    goto :goto_1

    .line 1491
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 1611
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 1621
    .local v0, extent:I
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 3

    .prologue
    .line 1627
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1629
    .local v0, offset:I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v1, :cond_0

    .line 1640
    :cond_0
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1592
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1593
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1594
    .local v0, contentWidth:I
    if-nez v1, :cond_0

    .line 1607
    .end local v0           #contentWidth:I
    :goto_0
    return v0

    .line 1598
    .restart local v0       #contentWidth:I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1599
    .local v3, scrollRange:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1600
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1601
    .local v2, overscrollRight:I
    if-gez v4, :cond_2

    .line 1602
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1607
    goto :goto_0

    .line 1603
    :cond_2
    if-le v4, v2, :cond_1

    .line 1604
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1673
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1694
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1695
    .local v3, oldX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    .line 1696
    .local v4, oldY:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v12

    .line 1697
    .local v12, x:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v13

    .line 1699
    .local v13, y:I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1700
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1701
    .local v5, range:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getOverScrollMode()I

    move-result v11

    .line 1702
    .local v11, overscrollMode:I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v5, :cond_4

    .line 1705
    .local v10, canOverscroll:Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1706
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1708
    if-eqz v10, :cond_2

    .line 1709
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1710
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 1738
    .end local v5           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->awakenScrollBars()Z

    .line 1741
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->postInvalidate()V

    .line 1743
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_3
    return-void

    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #range:I
    .restart local v11       #overscrollMode:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    move v10, v6

    .line 1702
    goto :goto_0

    .line 1711
    .restart local v10       #canOverscroll:Z
    :cond_5
    if-le v12, v5, :cond_2

    if-gt v3, v5, :cond_2

    .line 1712
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1793
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1850
    :cond_0
    :goto_0
    return v5

    .line 1796
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1797
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1798
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1800
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1803
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1804
    add-int/2addr v3, v1

    .line 1808
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1809
    sub-int/2addr v4, v1

    .line 1812
    :cond_3
    const/4 v5, 0x0

    .line 1814
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1819
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1821
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1828
    :goto_1
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1829
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1830
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1832
    goto :goto_0

    .line 1824
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1832
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1838
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1840
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1848
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1843
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 685
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v4, v9

    .line 686
    .local v4, isHoveringOn:Z
    :goto_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering_list_scroll"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_4

    move v3, v9

    .line 688
    .local v3, isHoverListScrollOn:Z
    :goto_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    if-nez v11, :cond_0

    .line 689
    new-instance v11, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$1;)V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    .line 691
    :cond_0
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isHoveringUIEnabled:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    if-eqz v11, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_5

    .line 692
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 838
    :cond_2
    :goto_2
    return v9

    .end local v3           #isHoverListScrollOn:Z
    .end local v4           #isHoveringOn:Z
    :cond_3
    move v4, v10

    .line 685
    goto :goto_0

    .restart local v4       #isHoveringOn:Z
    :cond_4
    move v3, v10

    .line 686
    goto :goto_1

    .line 695
    .restart local v3       #isHoverListScrollOn:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 696
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v8, v11

    .line 697
    .local v8, y:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 698
    .local v0, childCount:I
    const/4 v1, 0x0

    .line 699
    .local v1, contentRightSide:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 701
    .local v6, range:I
    if-eqz v0, :cond_6

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 705
    :cond_6
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    if-le v7, v11, :cond_7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    sub-int v11, v1, v11

    if-lt v7, v11, :cond_8

    :cond_7
    if-lez v6, :cond_8

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v13, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-ne v11, v13, :cond_c

    .line 708
    :cond_8
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 709
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 711
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_0
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_9
    :goto_3
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eq v11, v9, :cond_a

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    if-eqz v9, :cond_b

    .line 718
    :cond_a
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 720
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_1
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 726
    :cond_b
    :goto_4
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 727
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 728
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 730
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_2

    .line 712
    :catch_0
    move-exception v2

    .line 713
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "TwHorizontalScrollView"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 721
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 722
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 733
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_c
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v11, :cond_d

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 736
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 773
    :pswitch_1
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_f

    .line 774
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 775
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 776
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 738
    :pswitch_2
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 740
    if-ltz v7, :cond_e

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    if-gt v7, v10, :cond_e

    .line 742
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 745
    const/16 v10, 0x11

    const/4 v11, -0x1

    :try_start_2
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 749
    :goto_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 750
    .local v5, msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 751
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 752
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 746
    .end local v5           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 747
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 754
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_e
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v1, v10

    if-lt v7, v10, :cond_2

    if-gt v7, v1, :cond_2

    .line 756
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 759
    const/16 v10, 0xd

    const/4 v11, -0x1

    :try_start_3
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 763
    :goto_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 764
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 765
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 766
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 760
    .end local v5           #msg:Landroid/os/Message;
    :catch_3
    move-exception v2

    .line 761
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 779
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_f
    if-ltz v7, :cond_11

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    if-gt v7, v10, :cond_11

    .line 781
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 784
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_10

    .line 786
    const/16 v10, 0x11

    const/4 v11, -0x1

    :try_start_4
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 792
    :cond_10
    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 793
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 794
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 795
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 787
    .end local v5           #msg:Landroid/os/Message;
    :catch_4
    move-exception v2

    .line 788
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 797
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_11
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v1, v10

    if-lt v7, v10, :cond_2

    if-gt v7, v1, :cond_2

    .line 799
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 802
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_12

    .line 804
    const/16 v10, 0xd

    const/4 v11, -0x1

    :try_start_5
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 810
    :cond_12
    :goto_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 811
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 812
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I

    .line 813
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 805
    .end local v5           #msg:Landroid/os/Message;
    :catch_5
    move-exception v2

    .line 806
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 819
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_3
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 820
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 824
    :cond_13
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_6
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 829
    :goto_9
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 830
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I

    .line 831
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 832
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverAreaEnter:Z

    .line 833
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 825
    :catch_6
    move-exception v2

    .line 826
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwHorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 2033
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2049
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v4, :cond_3

    .line 2050
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 2051
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2052
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2053
    .local v1, restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2055
    .local v0, height:I
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2062
    neg-int v4, v0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2064
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2065
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2066
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 2068
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2070
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2071
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2072
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    .line 2073
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2075
    .restart local v0       #height:I
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2082
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2084
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, v0, v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2085
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2086
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 2088
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2091
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollX:I
    .end local v3           #width:I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 467
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 469
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 473
    const/4 v0, 0x0

    .line 474
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 476
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 505
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 482
    :cond_2
    const/4 v1, 0x0

    .line 483
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 505
    goto :goto_0

    .line 486
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 487
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 489
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 491
    goto :goto_1

    .line 493
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 494
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 496
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 498
    goto :goto_1

    .line 500
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 484
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .parameter "velocityX"

    .prologue
    .line 1964
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1965
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 1966
    .local v16, width:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 1968
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 1971
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 1973
    .local v13, movingRight:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 1974
    .local v12, currentFocused:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1977
    .local v14, newFocused:Landroid/view/View;
    if-nez v14, :cond_0

    .line 1978
    move-object/from16 v14, p0

    .line 1981
    :cond_0
    if-eq v14, v12, :cond_1

    .line 1982
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1985
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 1987
    .end local v12           #currentFocused:Landroid/view/View;
    .end local v13           #movingRight:Z
    .end local v14           #newFocused:Landroid/view/View;
    .end local v15           #right:I
    .end local v16           #width:I
    :cond_2
    return-void

    .line 1971
    .restart local v15       #right:I
    .restart local v16       #width:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1982
    .restart local v12       #currentFocused:Landroid/view/View;
    .restart local v13       #movingRight:Z
    .restart local v14       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1390
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1391
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1393
    .local v3, width:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1394
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1396
    if-eqz v1, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1398
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1399
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1400
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1401
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1405
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 1390
    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 258
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 259
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 262
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 286
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mRight:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 268
    const/4 v3, 0x0

    .line 278
    :goto_0
    return v3

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 272
    .local v0, length:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 273
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 274
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 275
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 278
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1650
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1653
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1655
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1656
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1661
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1663
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1665
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1668
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1669
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1104
    :pswitch_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1107
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 1111
    .local v1, hscroll:F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 1113
    .local v0, delta:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 1114
    .local v4, range:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1115
    .local v3, oldScrollX:I
    add-int v2, v3, v0

    .line 1116
    .local v2, newScrollX:I
    if-gez v2, :cond_3

    .line 1117
    const/4 v2, 0x0

    .line 1121
    :cond_1
    :goto_2
    if-eq v2, v3, :cond_0

    .line 1122
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1123
    const/4 v5, 0x1

    goto :goto_0

    .line 1109
    .end local v0           #delta:I
    .end local v1           #hscroll:F
    .end local v2           #newScrollX:I
    .end local v3           #oldScrollX:I
    .end local v4           #range:I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 1118
    .restart local v0       #delta:I
    .restart local v2       #newScrollX:I
    .restart local v3       #oldScrollX:I
    .restart local v4       #range:I
    :cond_3
    if-le v2, v4, :cond_1

    .line 1119
    move v2, v4

    goto :goto_2

    .line 1102
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlowRecedeAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2110
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 2113
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2117
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1200
    const-class v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1201
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1202
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1203
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1204
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1205
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1206
    return-void

    .line 1201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1184
    const-class v1, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 1186
    .local v0, scrollRange:I
    if-lez v0, :cond_1

    .line 1187
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    .line 1189
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 1192
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1195
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 561
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 565
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 656
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 577
    :pswitch_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 578
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 584
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 588
    .local v10, pointerIndex:I
    if-ltz v10, :cond_0

    .line 591
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 592
    .local v11, x:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v12, v1

    .line 593
    .local v12, xDiff:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    .line 594
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 595
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 596
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 597
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 598
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    .line 599
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 605
    .end local v8           #activePointerId:I
    .end local v10           #pointerIndex:I
    .end local v11           #x:F
    .end local v12           #xDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 606
    .restart local v11       #x:F
    float-to-int v1, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 607
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 608
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 616
    :cond_3
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 617
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 619
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initOrResetVelocityTracker()V

    .line 620
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 627
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 634
    .end local v11           #x:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 635
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 636
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto :goto_1

    .line 641
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 642
    .local v9, index:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 643
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 647
    .end local v9           #index:I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 648
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    goto/16 :goto_1

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1913
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1916
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1919
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1922
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollTo(II)V

    .line 1923
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 424
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 426
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 431
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 436
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 438
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 441
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 443
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 444
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 445
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 447
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 1136
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1137
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1138
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    .line 1139
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidateParentIfNeeded()V

    .line 1140
    if-eqz p3, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    .line 1146
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->awakenScrollBars()Z

    .line 1147
    return-void

    .line 1144
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1876
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1877
    const/16 p1, 0x42

    .line 1882
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1886
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1894
    :cond_1
    :goto_2
    return v1

    .line 1878
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1879
    const/16 p1, 0x11

    goto :goto_0

    .line 1882
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1890
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1894
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1927
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1929
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1930
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1933
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mRight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1935
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1936
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1937
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1938
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1939
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "ev"

    .prologue
    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 858
    .local v16, action:I
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1080
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 860
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 861
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    .line 862
    const/4 v3, 0x0

    goto :goto_1

    .line 860
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 869
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 874
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 875
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    goto :goto_0

    .line 893
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 895
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 896
    .local v17, activePointerIndex:I
    if-gez v17, :cond_4

    .line 897
    const/4 v3, 0x1

    goto :goto_1

    .line 995
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    .line 996
    .local v25, x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v3, v25

    float-to-int v4, v3

    .line 997
    .local v4, deltaX:I
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move/from16 v20, v0

    .line 1000
    .local v20, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    move/from16 v21, v0

    .line 1001
    .local v21, oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 1002
    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getOverScrollMode()I

    move-result v22

    .line 1003
    .local v22, overscrollMode:I
    if-eqz v22, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_9

    if-lez v8, :cond_9

    :cond_5
    const/16 v18, 0x1

    .line 1006
    .local v18, canOverscroll:Z
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1011
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1013
    if-eqz v18, :cond_0

    .line 1014
    add-int v23, v20, v4

    .line 1015
    .local v23, pulledToX:I
    if-gez v23, :cond_a

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1026
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1028
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto/16 :goto_0

    .line 1003
    .end local v18           #canOverscroll:Z
    .end local v23           #pulledToX:I
    :cond_9
    const/16 v18, 0x0

    goto :goto_3

    .line 1020
    .restart local v18       #canOverscroll:Z
    .restart local v23       #pulledToX:I
    :cond_a
    move/from16 v0, v23

    if-le v0, v8, :cond_7

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_4

    .line 1035
    .end local v4           #deltaX:I
    .end local v8           #range:I
    .end local v17           #activePointerIndex:I
    .end local v18           #canOverscroll:Z
    .end local v20           #oldX:I
    .end local v21           #oldY:I
    .end local v22           #overscrollMode:I
    .end local v23           #pulledToX:I
    .end local v25           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 1038
    .local v24, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1039
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 1041
    .local v19, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 1042
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_c

    .line 1043
    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fling(I)V

    .line 1051
    :cond_b
    :goto_5
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 1052
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_0

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1045
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto :goto_5

    .line 1062
    .end local v19           #initialVelocity:I
    .end local v24           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1063
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 1066
    :cond_d
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 1067
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 1068
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_0

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1077
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1353
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1354
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1356
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 1357
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1358
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1359
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1360
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1361
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1362
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1371
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1373
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 1353
    goto :goto_0

    .line 1366
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1367
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 1368
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1151
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1178
    :goto_0
    return v2

    .line 1154
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1178
    goto :goto_0

    .line 1156
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1157
    goto :goto_0

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1160
    .local v1, viewportWidth:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1161
    .local v0, targetScrollX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_2

    .line 1162
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1165
    goto :goto_0

    .line 1167
    .end local v0           #targetScrollX:I
    .end local v1           #viewportWidth:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 1168
    goto :goto_0

    .line 1170
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1171
    .restart local v1       #viewportWidth:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1172
    .restart local v0       #targetScrollX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_4

    .line 1173
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1176
    goto :goto_0

    .line 1154
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1855
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1856
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1862
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1863
    return-void

    .line 1860
    :cond_0
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1900
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1902
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 542
    if-eqz p1, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 545
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 546
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1908
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1909
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1998
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1999
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 2000
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 2001
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2002
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2005
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 319
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 400
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->requestLayout()V

    .line 403
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .parameter "hoverdelay"

    .prologue
    .line 678
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 679
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .parameter "hoverspeed"

    .prologue
    .line 671
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 672
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 2009
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2010
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 2011
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2012
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2013
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2014
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2015
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2018
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setEnableBounce(Z)V

    .line 2025
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2026
    return-void

    .line 2020
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2021
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2023
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 420
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1551
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1572
    :goto_0
    return-void

    .line 1555
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1556
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1557
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1558
    .local v5, width:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1559
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1560
    .local v2, maxX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1561
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1563
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    .line 1564
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 1571
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1566
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1567
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1569
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1581
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    .line 1582
    return-void
.end method
