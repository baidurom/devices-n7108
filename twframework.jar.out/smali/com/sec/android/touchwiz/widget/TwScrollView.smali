.class public Lcom/sec/android/touchwiz/widget/TwScrollView;
.super Landroid/widget/FrameLayout;
.source "TwScrollView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "TwScrollView"


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private isHoveringUIEnabled:Z

.field private mActivePointerId:I

.field mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field private final mBounceEnabled:Z

.field mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoverTopAreaHeight:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

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

    .line 78
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_BOUNCE:Z

    .line 80
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_SCROLL:Z

    .line 82
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 236
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 109
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 116
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 123
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 140
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 156
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 163
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 165
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 181
    const/16 v2, 0x1e

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    .line 183
    const/16 v2, 0x32

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    .line 189
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    .line 191
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    .line 193
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 195
    const/16 v2, 0x12c

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I

    .line 197
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 199
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 204
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    .line 209
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    .line 214
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 219
    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    .line 224
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    .line 229
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    .line 2174
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    .line 241
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initScrollView()V

    .line 243
    sget-object v2, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 246
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFillViewport(Z)V

    .line 249
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 253
    const-string v2, "TwScrollView"

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

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 384
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 387
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 389
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2134
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 2142
    :cond_0
    const/4 p1, 0x0

    .line 2151
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 2144
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 2149
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1545
    if-eqz p1, :cond_0

    .line 1546
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1547
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 2017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 2019
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 2021
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 2023
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2027
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2030
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1284
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1285
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1294
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1296
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1297
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1298
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1299
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1300
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1302
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1308
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1310
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1312
    move-object v1, v5

    .line 1313
    move v3, v8

    .line 1297
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1308
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1315
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1319
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1320
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1326
    move-object v1, v5

    goto :goto_2

    .line 1315
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1329
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1334
    move-object v1, v5

    .line 1335
    const/4 v3, 0x1

    goto :goto_2

    .line 1336
    :cond_7
    if-eqz v7, :cond_0

    .line 1341
    move-object v1, v5

    goto :goto_2

    .line 1348
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 1256
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 1257
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 1259
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 1264
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1223
    const/4 v1, 0x0

    .line 1224
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1225
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1226
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1229
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

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 524
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 525
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 529
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 534
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFocusable(Z)V

    .line 306
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 307
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setWillNotDraw(Z)V

    .line 308
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 309
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    .line 310
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    .line 313
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    .line 315
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 316
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 317
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 319
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 542
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 544
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1524
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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

    .line 1983
    if-ne p1, p2, :cond_1

    .line 1988
    :cond_0
    :goto_0
    return v1

    .line 1987
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1988
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1533
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1535
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

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
    .line 1103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1104
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1105
    .local v1, pointerId:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1109
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1110
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 1111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 1112
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1113
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1116
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 551
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1435
    const/4 v3, 0x1

    .line 1437
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    .line 1438
    .local v4, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    .line 1439
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1440
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1442
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1443
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1444
    move-object v5, p0

    .line 1447
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1448
    const/4 v3, 0x0

    .line 1454
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    .line 1455
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1457
    :cond_1
    return v3

    .line 1440
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1450
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1451
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1450
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1771
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1774
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1776
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1778
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1779
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 1781
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1792
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1793
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1794
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1795
    if-eqz p2, :cond_2

    .line 1796
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 1801
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1793
    goto :goto_0

    .line 1798
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 351
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 360
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 378
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1469
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1470
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1471
    const/4 v0, 0x0

    .line 1473
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1475
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1477
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1478
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1479
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1480
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1481
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    .line 1482
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1504
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1511
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1512
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 1513
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestFocus()Z

    .line 1514
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 1516
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1485
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1487
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    .line 1498
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1501
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1489
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1490
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1491
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1492
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1493
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1494
    sub-int v6, v1, v5

    goto :goto_1

    .line 1501
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1687
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1708
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    .line 1709
    .local v3, oldX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1710
    .local v4, oldY:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v12

    .line 1711
    .local v12, x:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v13

    .line 1713
    .local v13, y:I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1714
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    .line 1715
    .local v6, range:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v11

    .line 1716
    .local v11, overscrollMode:I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v6, :cond_4

    .line 1719
    .local v10, canOverscroll:Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1720
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    .line 1722
    if-eqz v10, :cond_2

    .line 1723
    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    .line 1724
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 1753
    .end local v6           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    .line 1756
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidate()V

    .line 1763
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_3
    :goto_2
    return-void

    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v6       #range:I
    .restart local v11       #overscrollMode:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    move v10, v5

    .line 1716
    goto :goto_0

    .line 1725
    .restart local v10       #canOverscroll:Z
    :cond_5
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 1726
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1758
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v6           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 1759
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1813
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1870
    :cond_0
    :goto_0
    return v6

    .line 1816
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    .line 1817
    .local v3, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    .line 1818
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1820
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1823
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1824
    add-int/2addr v5, v2

    .line 1829
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1830
    sub-int/2addr v4, v2

    .line 1833
    :cond_3
    const/4 v6, 0x0

    .line 1835
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1840
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1842
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1849
    :goto_1
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1850
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1851
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1853
    goto :goto_0

    .line 1845
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1853
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1858
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1860
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1868
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1863
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1625
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 1635
    .local v0, extent:I
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 1641
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1643
    .local v0, offset:I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v1, :cond_0

    .line 1654
    :cond_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1606
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    .line 1607
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1608
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    .line 1621
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .line 1612
    .restart local v0       #contentHeight:I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1613
    .local v3, scrollRange:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1614
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1615
    .local v2, overscrollBottom:I
    if-gez v4, :cond_2

    .line 1616
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1621
    goto :goto_0

    .line 1617
    :cond_2
    if-le v4, v2, :cond_1

    .line 1618
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 698
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v4, v9

    .line 699
    .local v4, isHoveringOn:Z
    :goto_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering_list_scroll"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_4

    move v3, v9

    .line 701
    .local v3, isHoverListScrollOn:Z
    :goto_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    if-nez v11, :cond_0

    .line 702
    new-instance v11, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwScrollView;Lcom/sec/android/touchwiz/widget/TwScrollView$1;)V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    .line 704
    :cond_0
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    if-eqz v11, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_5

    .line 705
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 851
    :cond_2
    :goto_2
    return v9

    .end local v3           #isHoverListScrollOn:Z
    .end local v4           #isHoveringOn:Z
    :cond_3
    move v4, v10

    .line 698
    goto :goto_0

    .restart local v4       #isHoveringOn:Z
    :cond_4
    move v3, v10

    .line 699
    goto :goto_1

    .line 708
    .restart local v3       #isHoverListScrollOn:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 709
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v8, v11

    .line 710
    .local v8, y:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    .line 711
    .local v0, childCount:I
    const/4 v1, 0x0

    .line 712
    .local v1, contentBottom:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    .line 714
    .local v6, range:I
    if-eqz v0, :cond_6

    .line 715
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 718
    :cond_6
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-le v8, v11, :cond_7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v11, v1, v11

    if-lt v8, v11, :cond_8

    :cond_7
    if-lez v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getRight()I

    move-result v11

    if-gt v7, v11, :cond_8

    if-lez v6, :cond_8

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v13, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-ne v11, v13, :cond_c

    .line 721
    :cond_8
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 722
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 724
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_0
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_9
    :goto_3
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    if-eq v11, v9, :cond_a

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    if-eqz v9, :cond_b

    .line 731
    :cond_a
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    .line 733
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_1
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 739
    :cond_b
    :goto_4
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 740
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 741
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 743
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_2

    .line 725
    :catch_0
    move-exception v2

    .line 726
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "TwScrollView"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 734
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 735
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 746
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_c
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    if-nez v11, :cond_d

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 749
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 786
    :pswitch_1
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_f

    .line 787
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 788
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 789
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 751
    :pswitch_2
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 753
    if-ltz v8, :cond_e

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-gt v8, v10, :cond_e

    .line 755
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 758
    const/16 v10, 0xb

    const/4 v11, -0x1

    :try_start_2
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 762
    :goto_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 763
    .local v5, msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 764
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 765
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 759
    .end local v5           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 760
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 767
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_e
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v1, v10

    if-lt v8, v10, :cond_2

    if-gt v8, v1, :cond_2

    .line 769
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 772
    const/16 v10, 0xf

    const/4 v11, -0x1

    :try_start_3
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 776
    :goto_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 777
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 778
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 779
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 773
    .end local v5           #msg:Landroid/os/Message;
    :catch_3
    move-exception v2

    .line 774
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 792
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_f
    if-ltz v8, :cond_11

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-gt v8, v10, :cond_11

    .line 794
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 797
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_10

    .line 799
    const/16 v10, 0xb

    const/4 v11, -0x1

    :try_start_4
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 805
    :cond_10
    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 806
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 807
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 808
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 800
    .end local v5           #msg:Landroid/os/Message;
    :catch_4
    move-exception v2

    .line 801
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 810
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_11
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v10, v1, v10

    if-lt v8, v10, :cond_2

    if-gt v8, v1, :cond_2

    .line 812
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 815
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_12

    .line 817
    const/16 v10, 0xf

    const/4 v11, -0x1

    :try_start_5
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 823
    :cond_12
    :goto_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 824
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 825
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    .line 826
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 818
    .end local v5           #msg:Landroid/os/Message;
    :catch_5
    move-exception v2

    .line 819
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "TwScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 832
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_3
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 833
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 837
    :cond_13
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_6
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 842
    :goto_9
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    .line 843
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    .line 844
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    .line 845
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    .line 846
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 838
    :catch_6
    move-exception v2

    .line 839
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "TwScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 749
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
    .line 469
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .locals 7
    .parameter "canvas"

    .prologue
    .line 2073
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2089
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v4, :cond_3

    .line 2090
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 2091
    .local v2, scrollY:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2092
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2093
    .local v1, restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 2100
    .local v3, width:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2102
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2103
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 2106
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2108
    .end local v1           #restoreCount:I
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2110
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 2111
    .restart local v3       #width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    .line 2120
    .local v0, height:I
    neg-int v4, v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2123
    const/high16 v4, 0x4334

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2124
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, v3, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 2125
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2126
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 2128
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2131
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollY:I
    .end local v3           #width:I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 481
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 483
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 486
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 488
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 490
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 519
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 496
    :cond_2
    const/4 v1, 0x0

    .line 497
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 498
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 519
    goto :goto_0

    .line 500
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 501
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 503
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 505
    goto :goto_1

    .line 507
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 508
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 510
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 512
    goto :goto_1

    .line 514
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1999
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2000
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 2001
    .local v12, height:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2003
    .local v11, bottom:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 2006
    if-lez p1, :cond_2

    const/4 v13, 0x1

    .line 2008
    .local v13, movingDown:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2009
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 2014
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #movingDown:Z
    :cond_1
    return-void

    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_2
    move v13, v3

    .line 2006
    goto :goto_0
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1402
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1403
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    .line 1405
    .local v2, height:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1406
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1408
    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    .line 1410
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1411
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1412
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1413
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1417
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1402
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 283
    const/4 v3, 0x0

    .line 293
    :goto_0
    return v3

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 287
    .local v1, length:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 288
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 289
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 290
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 293
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 301
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBottom:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 277
    :goto_0
    return v1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 273
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 274
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 277
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1659
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1664
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1667
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1669
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1670
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
    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1677
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1679
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1682
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1683
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1933
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1935
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1937
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1940
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1941
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1943
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1144
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1123
    :pswitch_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1124
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1125
    .local v4, vscroll:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1127
    .local v0, delta:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v3

    .line 1128
    .local v3, range:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1129
    .local v2, oldScrollY:I
    sub-int v1, v2, v0

    .line 1130
    .local v1, newScrollY:I
    if-gez v1, :cond_2

    .line 1131
    const/4 v1, 0x0

    .line 1135
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1136
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1137
    const/4 v5, 0x1

    goto :goto_0

    .line 1132
    :cond_2
    if-le v1, v3, :cond_1

    .line 1133
    move v1, v3

    goto :goto_1

    .line 1121
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

    .line 2158
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 2160
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2161
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2164
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1212
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1213
    const-class v1, Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1214
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1215
    .local v0, scrollable:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1216
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1217
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1218
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1219
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1220
    return-void

    .line 1214
    .end local v0           #scrollable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1194
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1195
    const-class v1, Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1196
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    .line 1198
    .local v0, scrollRange:I
    if-lez v0, :cond_1

    .line 1199
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1200
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 1201
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1203
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1204
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1208
    .end local v0           #scrollRange:I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 574
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 666
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 590
    :pswitch_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 591
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 597
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 601
    .local v9, pointerIndex:I
    if-ltz v9, :cond_0

    .line 604
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 605
    .local v10, y:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v11, v1

    .line 606
    .local v11, yDiff:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    if-le v11, v1, :cond_2

    .line 607
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 608
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 609
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 610
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 612
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 619
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 620
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    float-to-int v2, v10

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 621
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 622
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 630
    :cond_3
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 631
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 633
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initOrResetVelocityTracker()V

    .line 634
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 640
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 641
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 642
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 650
    .end local v10           #y:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 651
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 652
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 653
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto/16 :goto_1

    .line 658
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
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
    .line 1947
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 1950
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1953
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1956
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollTo(II)V

    .line 1957
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 439
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 444
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 449
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMeasuredHeight()I

    move-result v3

    .line 451
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 454
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 456
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 457
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 458
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 461
    .local v1, childHeightMeasureSpec:I
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

    .line 1150
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1151
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    .line 1152
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1153
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidateParentIfNeeded()V

    .line 1154
    if-eqz p4, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    .line 1160
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    .line 1161
    return-void

    .line 1158
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

    .line 1896
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1897
    const/16 p1, 0x82

    .line 1902
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1906
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1914
    :cond_1
    :goto_2
    return v1

    .line 1898
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1899
    const/16 p1, 0x21

    goto :goto_0

    .line 1902
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1910
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1914
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1961
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1963
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1964
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1970
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1971
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1972
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1973
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1974
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 861
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 866
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 868
    const/4 v3, 0x1

    .line 1099
    :goto_0
    return v3

    .line 871
    :cond_1
    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1099
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 873
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 874
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 875
    const/4 v3, 0x0

    goto :goto_0

    .line 873
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 882
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_5

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 886
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 891
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 892
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto :goto_1

    .line 910
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 912
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 914
    .local v18, activePointerIndex:I
    if-gez v18, :cond_6

    .line 915
    const/4 v3, 0x1

    goto :goto_0

    .line 1017
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 1018
    .local v27, y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v3, v3, v27

    float-to-int v5, v3

    .line 1019
    .local v5, deltaY:I
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move/from16 v22, v0

    .line 1022
    .local v22, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move/from16 v23, v0

    .line 1023
    .local v23, oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v9

    .line 1024
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v24

    .line 1025
    .local v24, overscrollMode:I
    if-eqz v24, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_b

    if-lez v9, :cond_b

    :cond_7
    const/16 v19, 0x1

    .line 1028
    .local v19, canOverscroll:Z
    :goto_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1033
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    .line 1035
    if-eqz v19, :cond_2

    .line 1036
    add-int v25, v23, v5

    .line 1037
    .local v25, pulledToY:I
    if-gez v25, :cond_c

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1048
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1050
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto/16 :goto_1

    .line 1025
    .end local v19           #canOverscroll:Z
    .end local v25           #pulledToY:I
    :cond_b
    const/16 v19, 0x0

    goto :goto_3

    .line 1042
    .restart local v19       #canOverscroll:Z
    .restart local v25       #pulledToY:I
    :cond_c
    move/from16 v0, v25

    if-le v0, v9, :cond_9

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_4

    .line 1057
    .end local v5           #deltaY:I
    .end local v9           #range:I
    .end local v18           #activePointerIndex:I
    .end local v19           #canOverscroll:Z
    .end local v22           #oldX:I
    .end local v23           #oldY:I
    .end local v24           #overscrollMode:I
    .end local v25           #pulledToY:I
    .end local v27           #y:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    .line 1061
    .local v26, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1062
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    .line 1064
    .local v21, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_d

    .line 1065
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_e

    .line 1066
    move/from16 v0, v21

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fling(I)V

    .line 1074
    :cond_d
    :goto_5
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 1075
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_1

    .line 1068
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto :goto_5

    .line 1079
    .end local v21           #initialVelocity:I
    .end local v26           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1080
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1083
    :cond_f
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 1084
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_1

    .line 1088
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 1089
    .local v20, index:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 1090
    .restart local v27       #y:F
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 1091
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 1095
    .end local v20           #index:I
    .end local v27           #y:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1096
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    goto/16 :goto_1

    .line 871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1365
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1366
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    .line 1368
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 1369
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1370
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    .line 1371
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1372
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1373
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1374
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1383
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1385
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1365
    goto :goto_0

    .line 1378
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1379
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1380
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1165
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1189
    :goto_0
    return v2

    .line 1168
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1169
    goto :goto_0

    .line 1171
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1189
    goto :goto_0

    .line 1173
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1174
    .local v1, viewportHeight:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1175
    .local v0, targetScrollY:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq v0, v4, :cond_2

    .line 1176
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1179
    goto :goto_0

    .line 1181
    .end local v0           #targetScrollY:I
    .end local v1           #viewportHeight:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1182
    .restart local v1       #viewportHeight:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1183
    .restart local v0       #targetScrollY:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq v0, v4, :cond_3

    .line 1184
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1187
    goto :goto_0

    .line 1171
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
    .line 1875
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1876
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1882
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1883
    return-void

    .line 1880
    :cond_0
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1920
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

    .line 1922
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 555
    if-eqz p1, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 558
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 559
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 1928
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1929
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2041
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2042
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p1

    .line 2043
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p2

    .line 2044
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2045
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2048
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 342
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 413
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    .line 414
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestLayout()V

    .line 416
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .parameter "hoverdelay"

    .prologue
    .line 691
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    .line 692
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 673
    if-eqz p1, :cond_0

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .parameter "hoverspeed"

    .prologue
    .line 684
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    .line 685
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 2052
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2053
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 2054
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2055
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2056
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2057
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2058
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 2061
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    .line 2068
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2069
    return-void

    .line 2063
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2064
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 2066
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 433
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1586
    :goto_0
    return-void

    .line 1565
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1566
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1567
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1568
    .local v3, height:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1569
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1570
    .local v4, maxY:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1571
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1573
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    .line 1574
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1585
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    goto :goto_0

    .line 1576
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1577
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1578
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1579
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1580
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1583
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1595
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1596
    return-void
.end method
