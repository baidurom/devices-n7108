.class public Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "TwIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;
    }
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwIndexScrollView"

.field public static mCallDrawIndexTextAtOnDraw:Z

.field private static mHandleDividerColor:I

.field private static mHandleSecondDepthTextColor:I

.field private static mHandleSecondDepthTextColorDimmed:I

.field private static mHandleSecondDepthTextColorPressed:I

.field private static mHandleTextColor:I

.field private static mHandleTextColorDimmed:I

.field private static mHandleTextColorPressed:I


# instance fields
.field private final FADE_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_DELAY:J

.field private final debug:Z

.field private mArrListScroll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockSelectingDot:Z

.field private mDepthLimit:I

.field private mDotNum:I

.field private mFadeOutRun:Ljava/lang/Runnable;

.field private mFirstHandlePadding:I

.field private mFirstHandleRect:Landroid/graphics/Rect;

.field private mFirstHandleTopMargin:I

.field private mFirstHandleWidth:I

.field private mFirstHandleWidthClock:I

.field private mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandlePosition:I

.field private mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleShadowTextColor:I

.field private mHandleTextPainter:Landroid/graphics/Paint;

.field private mHandleTextSize:I

.field private mIndexCharacters:[Ljava/lang/String;

.field private mIndexInterval:I

.field private mIndexScrollViewTheme:I

.field private mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

.field private mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

.field private final mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

.field private mIsFavoriteContactMode:Z

.field private mIsScroll:Z

.field private mLastY:F

.field private mLockMove:Z

.field private mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

.field private mRegisteredDataSetObserver:Z

.field private mScrollBarOn:Z

.field private mSecondHandleGap:I

.field private mSecondHandlePadding:I

.field private mSecondHandleWidth:I

.field private mSimpleIndexScroll:Z

.field private mSimpleModeForContact:Z

.field private mStartMotionX:F

.field private mTextWidth:I

.field mTopPadding:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 242
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 75
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 79
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 83
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 105
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 117
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 129
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 173
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    .line 188
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 192
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 196
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 200
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 208
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 212
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 216
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 221
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 222
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 223
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 224
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 228
    const-wide/16 v1, 0x320

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 230
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 233
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 235
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    .local v0, rsrc:Landroid/content/res/Resources;
    const v1, 0x2060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 245
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "indexInterval"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 75
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 79
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 83
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 105
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 117
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 129
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 173
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    .line 188
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 192
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 200
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 208
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 212
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 216
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 221
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 222
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 224
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 228
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 230
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 233
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 235
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 254
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 255
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 263
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 75
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 79
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 83
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 105
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 117
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 129
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 173
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    .line 188
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 192
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 196
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 200
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 208
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 212
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 216
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 221
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 222
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 223
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 224
    const-wide/16 v3, 0x1f4

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 228
    const-wide/16 v3, 0x320

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 230
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 233
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 235
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 264
    sget-object v3, Ltouchwiz/R$styleable;->TwIndexView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 266
    .local v1, buttonPosition:I
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 268
    .local v2, rsrc:Landroid/content/res/Resources;
    const/4 v3, 0x6

    const v4, 0x2060016

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 269
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 278
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    .line 75
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 79
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    .line 83
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 105
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 117
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 129
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 173
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    .line 188
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    .line 192
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 196
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 200
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 208
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 212
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 216
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 221
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 222
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 223
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 224
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 228
    const-wide/16 v1, 0x320

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 230
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 233
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    .line 235
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 280
    .local v0, rsrc:Landroid/content/res/Resources;
    const v1, 0x2060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    .line 281
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V

    .line 282
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->fadeScrollBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleDividerColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    return v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->isRtlLanguage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandlePadding:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    return v0
.end method

.method private awakenScrollBar()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 937
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 938
    return-void
.end method

.method private decreaseScrollDepth()V
    .locals 3

    .prologue
    .line 525
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 526
    .local v0, arrSize:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 529
    :cond_0
    return-void
.end method

.method private drawIndexText(Ljava/lang/String;)V
    .locals 2
    .parameter "indexPath"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setIndexPath(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->invalidate()V

    goto :goto_0
.end method

.method private fadeScrollBar()V
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 942
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 943
    return-void
.end method

.method private getHandleRect(I)Landroid/graphics/Rect;
    .locals 14
    .parameter "level"

    .prologue
    const/4 v13, 0x1

    .line 673
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 674
    .local v7, rsrc:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 675
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHeight()I

    move-result v9

    .line 676
    .local v9, viewHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getWidth()I

    move-result v10

    .line 677
    .local v10, viewWidth:I
    if-nez v9, :cond_0

    .line 678
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 680
    :cond_0
    if-nez v10, :cond_1

    .line 681
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 684
    :cond_1
    if-nez p1, :cond_6

    .line 685
    const/4 v8, 0x0

    .line 686
    .local v8, top:I
    const/4 v2, 0x0

    .line 688
    .local v2, firstHandleHeight:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    if-nez v11, :cond_2

    .line 689
    const/4 v5, 0x0

    .line 726
    .end local v2           #firstHandleHeight:I
    .end local v8           #top:I
    :goto_0
    return-object v5

    .line 691
    .restart local v2       #firstHandleHeight:I
    .restart local v8       #top:I
    :cond_2
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    array-length v12, v12

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v2, v11, v12

    .line 692
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    if-eqz v11, :cond_3

    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    if-nez v11, :cond_3

    .line 693
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidthClock:I

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    .line 695
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleTopMargin:I

    .line 697
    add-int v0, v8, v2

    .line 698
    .local v0, bottom:I
    const/4 v4, 0x0

    .line 699
    .local v4, left:I
    const/4 v6, 0x0

    .line 700
    .local v6, right:I
    if-eqz v9, :cond_4

    if-le v0, v9, :cond_4

    .line 701
    move v0, v9

    .line 703
    :cond_4
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v11, v13, :cond_5

    .line 704
    move v6, v10

    .line 705
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    sub-int v4, v6, v11

    .line 710
    :goto_1
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v4, v8, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 711
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 707
    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    .line 708
    const/4 v4, 0x0

    goto :goto_1

    .line 713
    .end local v0           #bottom:I
    .end local v2           #firstHandleHeight:I
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v8           #top:I
    :cond_6
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int v3, v11, v12

    .line 714
    .local v3, intervalX:I
    const/4 v4, 0x0

    .line 715
    .restart local v4       #left:I
    const/4 v6, 0x0

    .line 716
    .restart local v6       #right:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v11, v13, :cond_7

    .line 717
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, p1, -0x1

    mul-int/2addr v12, v3

    sub-int v6, v11, v12

    .line 718
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    sub-int v4, v6, v11

    .line 725
    :goto_2
    new-instance v5, Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v4, v11, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 726
    .local v5, rect:Landroid/graphics/Rect;
    goto :goto_0

    .line 720
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_7
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    add-int/2addr v11, v12

    add-int/lit8 v12, p1, -0x1

    mul-int/2addr v12, v3

    add-int v4, v11, v12

    .line 721
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int v6, v4, v11

    goto :goto_2
.end method

.method private getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .locals 3

    .prologue
    .line 534
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    .local v0, size:I
    if-lez v0, :cond_0

    .line 536
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    .line 538
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private increaseScrollDepth(Ljava/lang/String;I)Z
    .locals 16
    .parameter "indexPath"
    .parameter "posY"

    .prologue
    .line 463
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 465
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 466
    .local v9, ch:C
    invoke-static {v9}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v15

    .line 467
    .local v15, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v2, v15}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v2, v15}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v2, v15}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    :cond_0
    const/4 v2, 0x0

    .line 518
    .end local v9           #ch:C
    .end local v15           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v2

    .line 463
    .restart local v9       #ch:C
    .restart local v15       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 473
    .end local v9           #ch:C
    .end local v15           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    .line 475
    .local v11, scroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v12

    .line 476
    .local v12, selectedIndex:I
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getmIndexSkipLevel()I

    move-result v13

    .line 483
    .local v13, skipLevel:I
    rem-int v2, v12, v13

    if-ne v2, v13, :cond_3

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSubscrollIndexInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v12, v2, :cond_3

    .line 484
    const/4 v2, 0x0

    goto :goto_1

    .line 487
    .end local v11           #scroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .end local v12           #selectedIndex:I
    .end local v13           #skipLevel:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 488
    .local v8, oldSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    if-ge v8, v2, :cond_9

    .line 490
    :cond_4
    const/4 v4, 0x0

    .line 491
    .local v4, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 495
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .restart local v4       #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    array-length v2, v2

    if-ge v10, v2, :cond_6

    .line 497
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v14}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 498
    .local v14, tempIndexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 499
    iput v10, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    aget-object v2, v2, v10

    iput-object v2, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 501
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 504
    .end local v14           #tempIndexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-nez v8, :cond_7

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 506
    :cond_6
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 509
    .local v7, bound:Landroid/graphics/Rect;
    if-nez v7, :cond_8

    .line 510
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 504
    .end local v7           #bound:Landroid/graphics/Rect;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    .line 513
    .restart local v7       #bound:Landroid/graphics/Rect;
    :cond_8
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;Ljava/util/ArrayList;FILandroid/graphics/Rect;I)V

    .line 514
    .local v1, newSubscroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 518
    .end local v1           #newSubscroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .end local v4           #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v7           #bound:Landroid/graphics/Rect;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x20500c8

    const v6, 0x2050001

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 285
    .local v0, rsrc:Landroid/content/res/Resources;
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setFocusable(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->bringToFront()V

    .line 287
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHapticFeedbackEnabled(Z)V

    .line 288
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSoundEffectsEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    .line 291
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 298
    const v1, 0x206000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    .line 299
    const v1, 0x2060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidthClock:I

    .line 300
    const v1, 0x206000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    .line 301
    const v1, 0x2060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    .line 302
    const v1, 0x2060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I

    .line 303
    const v1, 0x2060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I

    .line 304
    const v1, 0x2060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandlePadding:I

    .line 305
    const v1, 0x206000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleTopMargin:I

    .line 306
    const v1, 0x206000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextSize:I

    .line 308
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    if-nez v1, :cond_2

    .line 309
    const v1, 0x20500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    .line 310
    const v1, 0x20500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    .line 311
    const v1, 0x20500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    .line 312
    const v1, 0x20500c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 313
    const v1, 0x20500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 314
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleShadowTextColor:I

    .line 315
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleDividerColor:I

    .line 317
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v1, v4, :cond_1

    .line 318
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 319
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 320
    const v1, 0x202022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    :goto_1
    const v1, 0x2020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x2020220

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 351
    :goto_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 352
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 354
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    .line 363
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 368
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 322
    :cond_1
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 323
    const v1, 0x2020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    const v1, 0x2020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 329
    :cond_2
    const v1, 0x20500cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    .line 330
    const v1, 0x20500cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    .line 331
    const v1, 0x20500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    .line 332
    const v1, 0x20500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 333
    const v1, 0x20500d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 334
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleShadowTextColor:I

    .line 335
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleDividerColor:I

    .line 337
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v1, v4, :cond_3

    .line 338
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 339
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    :goto_3
    const v1, 0x2020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 347
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x2020221

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 342
    :cond_3
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 343
    const v1, 0x2020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 344
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method private isRtlLanguage()Z
    .locals 2

    .prologue
    .line 2058
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2064
    .local v0, curLanguage:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "he"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2065
    :cond_0
    const/4 v1, 0x1

    .line 2067
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyIndexChange()V
    .locals 4

    .prologue
    .line 892
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->hasIndexerDataValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 895
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v0

    .line 896
    .local v0, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    if-eqz v0, :cond_1

    .line 897
    const/4 v1, 0x0

    .line 898
    .local v1, position:I
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 899
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 900
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    neg-int v1, v2

    .line 907
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;->onIndexSelected(I)V

    .line 910
    .end local v0           #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .end local v1           #position:I
    :cond_1
    return-void

    .line 902
    .restart local v0       #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    .restart local v1       #position:I
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v2

    iget v1, v2, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    goto :goto_0
.end method

.method private resetHandleRectSize()V
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 667
    return-void
.end method

.method private resetScrollDepth(Z)V
    .locals 4
    .parameter "resetIndex"

    .prologue
    const/4 v3, 0x1

    .line 440
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 441
    .local v0, arrSize:I
    if-nez p1, :cond_0

    if-ge v0, v3, :cond_2

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 444
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 445
    .local v1, rect:Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 446
    const-string v2, ""

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->increaseScrollDepth(Ljava/lang/String;I)Z

    .line 454
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 450
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->sizeDepthScroll()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 451
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->decreaseScrollDepth()V

    goto :goto_0
.end method

.method private sizeDepthScroll()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/16 v8, 0xff

    .line 913
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 915
    const/4 v7, 0x0

    .local v7, depth:I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 917
    if-nez v7, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 918
    .local v2, d:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_1

    move v6, v8

    .line 920
    .local v6, alpha:I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget v4, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    sget v5, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->drawScroll(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;III)V

    .line 915
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 917
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #alpha:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    move v6, v8

    .line 918
    goto :goto_2

    .line 928
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-nez v0, :cond_3

    .line 929
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 930
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x320

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 932
    :cond_3
    return-void
.end method

.method public getFirstHandleWidth()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandleWidth:I

    return v0
.end method

.method public getHandlePosition()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1946
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1956
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1962
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    if-nez v0, :cond_0

    .line 1963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    .line 1965
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 400
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 404
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2017
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2024
    .local v0, superState:Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v1, :cond_0

    .line 2025
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 2026
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 2027
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 2029
    :cond_0
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 951
    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    if-eq v0, p2, :cond_0

    .line 952
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mVisibleItem:I

    .line 956
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->awakenScrollBar()V

    .line 959
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 962
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 849
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 850
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v1, :cond_0

    .line 851
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 852
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->sizeDepthScroll()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->decreaseScrollDepth()V

    goto :goto_0

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v0

    .local v0, lastScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->onSizeChanged(I)V

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 861
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 733
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 734
    .local v9, y:F
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F

    .line 735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 736
    .local v8, x:F
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v4

    .line 737
    .local v4, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    packed-switch v0, :pswitch_data_0

    .line 844
    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 744
    :pswitch_0
    if-eqz v4, :cond_2

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 747
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 748
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 749
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mStartMotionX:F

    .line 751
    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getNearestIndex(F)Z
    invoke-static {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->access$400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;F)Z

    .line 752
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 754
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z

    if-eqz v10, :cond_1

    .line 756
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    .line 758
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->awakenScrollBar()V

    goto :goto_0

    .line 760
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 764
    :pswitch_1
    if-eqz v4, :cond_0

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v10, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->sizeDepthScroll()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .line 773
    .local v1, curDepth:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mStartMotionX:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 774
    .local v2, distanceX:F
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v1

    const/high16 v12, 0x3f80

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f00

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float v6, v10, v11

    .line 775
    .local v6, thresholdXNextLevel:F
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleWidth:I

    add-int/2addr v10, v11

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandleGap:I

    sub-int/2addr v10, v11

    int-to-float v7, v10

    .line 777
    .local v7, thresholdXPreviousLevel:F
    cmpl-float v10, v2, v6

    if-ltz v10, :cond_4

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_4

    .line 779
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    if-nez v10, :cond_0

    .line 785
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v3

    .line 788
    .local v3, indexPath:Ljava/lang/String;
    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->access$500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;)F

    move-result v5

    .line 790
    .local v5, scrollStartY:F
    float-to-int v10, v5

    invoke-direct {p0, v3, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->increaseScrollDepth(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 791
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 792
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v4

    .line 793
    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 794
    const/4 v10, 0x1

    sput-boolean v10, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    goto/16 :goto_0

    .line 800
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    goto/16 :goto_0

    .line 807
    .end local v3           #indexPath:Ljava/lang/String;
    .end local v5           #scrollStartY:F
    :cond_4
    cmpg-float v10, v2, v7

    if-gez v10, :cond_6

    .line 808
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 809
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->decreaseScrollDepth()V

    .line 810
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v4

    .line 811
    if-eqz v4, :cond_5

    .line 812
    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 813
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 815
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    goto/16 :goto_0

    .line 821
    :cond_6
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLockMove:Z

    .line 823
    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 824
    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 825
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 826
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    goto/16 :goto_0

    .line 835
    .end local v1           #curDepth:I
    .end local v2           #distanceX:F
    .end local v6           #thresholdXNextLevel:F
    .end local v7           #thresholdXPreviousLevel:F
    :pswitch_2
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    if-eqz v10, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange()V

    .line 837
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z

    .line 838
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 839
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    goto/16 :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHandlePosition(I)V
    .locals 3
    .parameter "buttonPosition"

    .prologue
    const/4 v2, 0x1

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 560
    .local v0, rsrc:Landroid/content/res/Resources;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    .line 561
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    if-nez v1, :cond_1

    .line 562
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v1, v2, :cond_0

    .line 563
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 564
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 565
    const v1, 0x202022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 582
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetHandleRectSize()V

    .line 583
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 585
    return-void

    .line 567
    :cond_0
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 568
    const v1, 0x2020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 569
    const v1, 0x2020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 572
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v1, v2, :cond_2

    .line 573
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 574
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 575
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 577
    :cond_2
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 578
    const v1, 0x2020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 579
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 4
    .parameter "theme"

    .prologue
    const v2, 0x2050001

    const/4 v3, 0x1

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 594
    .local v0, rsrc:Landroid/content/res/Resources;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    .line 596
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    if-nez v1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 599
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    if-nez v1, :cond_2

    .line 600
    const v1, 0x20500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    .line 601
    const v1, 0x20500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    .line 602
    const v1, 0x20500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    .line 603
    const v1, 0x20500c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 604
    const v1, 0x20500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 605
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleShadowTextColor:I

    .line 606
    const v1, 0x20500c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleDividerColor:I

    .line 608
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x20500c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$202(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I

    .line 609
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x20500c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$302(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I

    .line 611
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v1, v3, :cond_1

    .line 612
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 613
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 614
    const v1, 0x202022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 620
    :goto_1
    const v1, 0x2020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 621
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x2020220

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 616
    :cond_1
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 617
    const v1, 0x2020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 618
    const v1, 0x2020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 623
    :cond_2
    const v1, 0x20500cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColor:I

    .line 624
    const v1, 0x20500cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorPressed:I

    .line 625
    const v1, 0x20500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextColorDimmed:I

    .line 626
    const v1, 0x20500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 627
    const v1, 0x20500d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 628
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleShadowTextColor:I

    .line 629
    const v1, 0x20500d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleDividerColor:I

    .line 631
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x20500ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$202(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I

    .line 632
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x20500cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$302(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I

    .line 634
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    if-ne v1, v3, :cond_3

    .line 635
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 636
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 637
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 643
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;

    const v2, 0x2020221

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 644
    const v1, 0x2020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 639
    :cond_3
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 640
    const v1, 0x2020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 641
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V
    .locals 3
    .parameter "indexer"

    .prologue
    const/4 v2, 0x1

    .line 376
    if-nez p1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    if-eqz v0, :cond_1

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TwIndexView.setIndexer(indexer) :  you are not allowed to set the indexer if you already use indexScroll view under Simple scroll mode !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 386
    :cond_2
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 389
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 392
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 393
    return-void
.end method

.method public setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V
    .locals 0
    .parameter "iOnIndexSelectedListener"

    .prologue
    .line 968
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    .line 969
    return-void
.end method

.method public setSimpleIndexHandleChar([Ljava/lang/String;)V
    .locals 2
    .parameter "handleChar"

    .prologue
    const/4 v1, 0x1

    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexHandleChar(handleChar) "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_1

    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TwIndexView.setSimpleIndexHandleChar(String [] handleChar) :  you must not set the indexer to use simple index handle mode !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleIndexScroll:Z

    .line 421
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 423
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V

    .line 424
    return-void
.end method

.method public setSimpleIndexHandleCharForContact([Ljava/lang/String;)V
    .locals 1
    .parameter "handleChar"

    .prologue
    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSimpleModeForContact:Z

    .line 433
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public setSubscrollLimit(I)V
    .locals 1
    .parameter "depthLimit"

    .prologue
    .line 545
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 546
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDepthLimit:I

    .line 548
    :cond_0
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .parameter "mTopPadding"

    .prologue
    .line 1952
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    .line 1953
    return-void
.end method

.method public setmIsFavoriteContactMode(Z)V
    .locals 0
    .parameter "mIsFavoriteContactMode"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    .line 86
    return-void
.end method
