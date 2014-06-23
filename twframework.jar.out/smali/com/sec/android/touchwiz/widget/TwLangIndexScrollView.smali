.class public Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "TwLangIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;,
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;,
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;,
        Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;
    }
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field private static final DOWN_TIME_EVENT:I = 0x1

.field private static final DOWN_TIME_VALUE:J = 0xc8L

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwLangIndexScrollView"

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

.field private mAnimEnd:Z

.field private mAnimationStartIndex:F

.field private mArrListScroll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockSelectingDot:Z

.field private mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

.field private mCurrShownIndexChar:Ljava/lang/String;

.field private mCurrentLangEndPosy:I

.field private mCurrentLangStartPosy:I

.field private mDepthLimit:I

.field private mDotNum:I

.field mDownTimehandler:Landroid/os/Handler;

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

.field private mIndexHandleString:Ljava/lang/String;

.field private mIndexInterval:I

.field private mIndexScrollViewTheme:I

.field private mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

.field private mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

.field private final mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

.field private mIsFavoriteContactMode:Z

.field private mIsScroll:Z

.field private mLastY:F

.field private mLockMove:Z

.field private mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

.field private mPrevLangPos:I

.field private mRegisteredDataSetObserver:Z

.field private mScrollBarOn:Z

.field private mSecondHandleGap:I

.field private mSecondHandlePadding:I

.field private mSecondHandleWidth:I

.field private mSimpleIndexScroll:Z

.field private mSimpleModeForContact:Z

.field private mSimpleModeForContact_HK:Z

.field private mStartMotionX:F

.field private mTextWidth:I

.field mTopPadding:I

.field mTotalCharCount:I

.field private mVisibleItem:I

.field private reCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 276
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 88
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTopPadding:I

    .line 92
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z

    .line 96
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 118
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 130
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 142
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 186
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 201
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 205
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 209
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    .line 213
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 221
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 225
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 229
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    .line 234
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    .line 235
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 236
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mVisibleItem:I

    .line 237
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 241
    const-wide/16 v1, 0x320

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 243
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact:Z

    .line 246
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    .line 247
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexHandleString:Ljava/lang/String;

    .line 251
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I

    .line 253
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 258
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 259
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 262
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z

    .line 263
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 268
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I

    .line 270
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I

    .line 969
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    .line 1022
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevLangPos:I

    .line 1024
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    .local v0, rsrc:Landroid/content/res/Resources;
    const v1, 0x2060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    .line 279
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "indexInterval"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 88
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTopPadding:I

    .line 92
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 118
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 130
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 142
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 186
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 201
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 205
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 209
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    .line 213
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 225
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 229
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    .line 234
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    .line 235
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 236
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mVisibleItem:I

    .line 237
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 241
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 243
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact:Z

    .line 246
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    .line 247
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexHandleString:Ljava/lang/String;

    .line 251
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I

    .line 253
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 258
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 259
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 262
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z

    .line 263
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 268
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I

    .line 270
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I

    .line 969
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    .line 1022
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevLangPos:I

    .line 1024
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    .line 290
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    .line 291
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 300
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 88
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTopPadding:I

    .line 92
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z

    .line 96
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 118
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 130
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 142
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 186
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 201
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 205
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 209
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    .line 213
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 221
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 225
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 229
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    .line 234
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    .line 235
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 236
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mVisibleItem:I

    .line 237
    const-wide/16 v3, 0x1f4

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 241
    const-wide/16 v3, 0x320

    iput-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 243
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact:Z

    .line 246
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    .line 247
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexHandleString:Ljava/lang/String;

    .line 251
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I

    .line 253
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 258
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 259
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 262
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z

    .line 263
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 268
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I

    .line 270
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I

    .line 969
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    .line 1022
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevLangPos:I

    .line 1024
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    .line 301
    sget-object v3, Ltouchwiz/R$styleable;->TwIndexView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 303
    .local v1, buttonPosition:I
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 305
    .local v2, rsrc:Landroid/content/res/Resources;
    const/4 v3, 0x6

    const v4, 0x2060016

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    .line 306
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;)V

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 316
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->debug:Z

    .line 88
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTopPadding:I

    .line 92
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z

    .line 96
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 118
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 130
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 142
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 186
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 201
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    .line 205
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 209
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    .line 213
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 221
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 225
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 229
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    .line 234
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    .line 235
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 236
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mVisibleItem:I

    .line 237
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_ANIMATION_DURATION:J

    .line 241
    const-wide/16 v1, 0x320

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FADE_OUT_ANIMATION_DELAY:J

    .line 243
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact:Z

    .line 246
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    .line 247
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexHandleString:Ljava/lang/String;

    .line 251
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I

    .line 253
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 258
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 259
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    .line 262
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z

    .line 263
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 268
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I

    .line 270
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I

    .line 969
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    .line 1022
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevLangPos:I

    .line 1024
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 318
    .local v0, rsrc:Landroid/content/res/Resources;
    const v1, 0x2060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    .line 319
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->fadeScrollBar()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandlePadding:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimationStartIndex:F

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I

    return p1
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLastY:F

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColor:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorDimmed:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleDividerColor:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorPressed:I

    return v0
.end method

.method static synthetic access$3600()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTextWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetScrollDepth(Z)V

    return-void
.end method

.method static synthetic access$4202(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;FI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->checkLangChange(FI)Z

    move-result v0

    return v0
.end method

.method private awakenScrollBar()V
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 1230
    return-void
.end method

.method private checkLangChange(FI)Z
    .locals 9
    .parameter "y"
    .parameter "aIndex"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 991
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v3

    .line 992
    .local v3, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    if-nez v3, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v5

    .line 994
    :cond_1
    iget-boolean v8, v3, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDrawingPhase:Z

    if-nez v8, :cond_0

    .line 996
    if-eqz p2, :cond_0

    .line 998
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v8, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v1

    .line 999
    .local v1, lLang:I
    :goto_1
    if-eq v1, v7, :cond_0

    .line 1002
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->sizeDepthScroll()I

    move-result v7

    if-gt v7, v6, :cond_0

    .line 1004
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v7

    if-eq v7, v1, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimEnd:Z

    if-ne v7, v6, :cond_0

    .line 1006
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v4

    .line 1007
    .local v4, mOldLang:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, lNewIndex:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    const-string v8, ""

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1009
    .local v0, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-virtual {v3, v0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->resetLangIndexInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1011
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0, v5, v4, v1, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V

    .line 1012
    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->UpdateSkipLevel()V
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->access$900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)V

    .line 1013
    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 1014
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 1015
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    move v5, v6

    .line 1016
    goto :goto_0

    .end local v0           #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v1           #lLang:I
    .end local v2           #lNewIndex:Ljava/lang/String;
    .end local v4           #mOldLang:I
    :cond_2
    move v1, v7

    .line 998
    goto :goto_1
.end method

.method private decreaseScrollDepth()V
    .locals 3

    .prologue
    .line 594
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 595
    .local v0, arrSize:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 598
    :cond_0
    return-void
.end method

.method private drawIndexText(Ljava/lang/String;)V
    .locals 2
    .parameter "indexPath"

    .prologue
    .line 1153
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->setIndexPath(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->setVisibility(I)V

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->invalidate()V

    goto :goto_0
.end method

.method private fadeScrollBar()V
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    .line 1234
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 1235
    return-void
.end method

.method private getHandleRect(I)Landroid/graphics/Rect;
    .locals 14
    .parameter "level"

    .prologue
    const/4 v13, 0x1

    .line 742
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 743
    .local v7, rsrc:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 744
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v9

    .line 745
    .local v9, viewHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getWidth()I

    move-result v10

    .line 746
    .local v10, viewWidth:I
    if-nez v9, :cond_0

    .line 747
    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 749
    :cond_0
    if-nez v10, :cond_1

    .line 750
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 753
    :cond_1
    if-nez p1, :cond_6

    .line 754
    const/4 v8, 0x0

    .line 755
    .local v8, top:I
    const/4 v2, 0x0

    .line 757
    .local v2, firstHandleHeight:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    if-nez v11, :cond_2

    .line 758
    const/4 v5, 0x0

    .line 797
    .end local v2           #firstHandleHeight:I
    .end local v8           #top:I
    :goto_0
    return-object v5

    .line 760
    .restart local v2       #firstHandleHeight:I
    .restart local v8       #top:I
    :cond_2
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    array-length v12, v12

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v2, v11, v12

    .line 761
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    if-eqz v11, :cond_3

    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact:Z

    if-nez v11, :cond_3

    .line 762
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleWidthClock:I

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleWidth:I

    .line 768
    :cond_3
    add-int v0, v8, v2

    .line 769
    .local v0, bottom:I
    const/4 v4, 0x0

    .line 770
    .local v4, left:I
    const/4 v6, 0x0

    .line 771
    .local v6, right:I
    if-eqz v9, :cond_4

    if-le v0, v9, :cond_4

    .line 772
    move v0, v9

    .line 774
    :cond_4
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v11, v13, :cond_5

    .line 775
    move v6, v10

    .line 776
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleWidth:I

    sub-int v4, v6, v11

    .line 781
    :goto_1
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v4, v8, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 782
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 778
    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleWidth:I

    .line 779
    const/4 v4, 0x0

    goto :goto_1

    .line 784
    .end local v0           #bottom:I
    .end local v2           #firstHandleHeight:I
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v8           #top:I
    :cond_6
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleGap:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleWidth:I

    add-int v3, v11, v12

    .line 785
    .local v3, intervalX:I
    const/4 v4, 0x0

    .line 786
    .restart local v4       #left:I
    const/4 v6, 0x0

    .line 787
    .restart local v6       #right:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v11, v13, :cond_7

    .line 788
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleGap:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, p1, -0x1

    mul-int/2addr v12, v3

    sub-int v6, v11, v12

    .line 789
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleWidth:I

    sub-int v4, v6, v11

    .line 796
    :goto_2
    new-instance v5, Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v4, v11, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 797
    .local v5, rect:Landroid/graphics/Rect;
    goto :goto_0

    .line 791
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_7
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleGap:I

    add-int/2addr v11, v12

    add-int/lit8 v12, p1, -0x1

    mul-int/2addr v12, v3

    add-int v4, v11, v12

    .line 792
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleWidth:I

    add-int v6, v4, v11

    goto :goto_2
.end method

.method private getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .locals 3

    .prologue
    .line 603
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    .local v0, size:I
    if-lez v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    .line 607
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSingleLangHeight()I
    .locals 2

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    return v0
.end method

.method private increaseScrollDepth(Ljava/lang/String;I)Z
    .locals 17
    .parameter "indexPath"
    .parameter "posY"

    .prologue
    .line 518
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 520
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 521
    .local v9, ch:C
    invoke-static {v9}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v16

    .line 522
    .local v16, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    :cond_0
    const/4 v2, 0x0

    .line 586
    .end local v9           #ch:C
    .end local v16           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v2

    .line 518
    .restart local v9       #ch:C
    .restart local v16       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 531
    .end local v9           #ch:C
    .end local v16           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    .line 533
    .local v12, scroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v13

    .line 534
    .local v13, selectedIndex:I
    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getmIndexSkipLevel()I

    move-result v14

    .line 541
    .local v14, skipLevel:I
    rem-int v2, v13, v14

    if-ne v2, v14, :cond_3

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSubscrollIndexInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v13, v2, :cond_3

    .line 542
    const/4 v2, 0x0

    goto :goto_1

    .line 545
    .end local v12           #scroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .end local v13           #selectedIndex:I
    .end local v14           #skipLevel:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 546
    .local v8, oldSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDepthLimit:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDepthLimit:I

    if-ge v8, v2, :cond_b

    .line 548
    :cond_4
    const/4 v4, 0x0

    .line 549
    .local v4, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 553
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .restart local v4       #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    array-length v2, v2

    if-ge v10, v2, :cond_6

    .line 555
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 556
    .local v15, tempIndexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 557
    iput v10, v15, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    aget-object v2, v2, v10

    iput-object v2, v15, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 559
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 564
    .end local v15           #tempIndexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_5
    if-nez v8, :cond_8

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-nez v8, :cond_7

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 574
    :cond_6
    :goto_4
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_b

    .line 576
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 577
    .local v7, bound:Landroid/graphics/Rect;
    if-nez v7, :cond_a

    .line 578
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 565
    .end local v7           #bound:Landroid/graphics/Rect;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    .line 568
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v11

    .line 569
    .local v11, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 570
    if-eqz v11, :cond_6

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-nez v8, :cond_9

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2, v8, v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_4

    :cond_9
    const/4 v2, 0x1

    goto :goto_5

    .line 581
    .end local v11           #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .restart local v7       #bound:Landroid/graphics/Rect;
    :cond_a
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/String;Ljava/util/ArrayList;FILandroid/graphics/Rect;I)V

    .line 582
    .local v1, newSubscroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 586
    .end local v1           #newSubscroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .end local v4           #indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v7           #bound:Landroid/graphics/Rect;
    :cond_b
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

    .line 323
    iput-object p0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 325
    .local v0, rsrc:Landroid/content/res/Resources;
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setFocusable(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->bringToFront()V

    .line 327
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHapticFeedbackEnabled(Z)V

    .line 328
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSoundEffectsEnabled(Z)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    .line 331
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 338
    const v1, 0x206000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleWidth:I

    .line 339
    const v1, 0x2060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleWidthClock:I

    .line 340
    const v1, 0x206000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleWidth:I

    .line 341
    const v1, 0x2060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleGap:I

    .line 342
    const v1, 0x2060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTextWidth:I

    .line 343
    const v1, 0x2060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I

    .line 344
    const v1, 0x2060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandlePadding:I

    .line 345
    const v1, 0x206000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleTopMargin:I

    .line 346
    const v1, 0x206000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextSize:I

    .line 348
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    if-nez v1, :cond_2

    .line 349
    const v1, 0x20500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColor:I

    .line 350
    const v1, 0x20500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorPressed:I

    .line 351
    const v1, 0x20500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorDimmed:I

    .line 352
    const v1, 0x20500c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 353
    const v1, 0x20500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 354
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleShadowTextColor:I

    .line 355
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleDividerColor:I

    .line 357
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v1, v4, :cond_1

    .line 358
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 359
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 360
    const v1, 0x202022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    :goto_1
    const v1, 0x2020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x2020220

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 391
    :goto_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    .line 392
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget v2, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 394
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 396
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    .line 403
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    .line 408
    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 362
    :cond_1
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 363
    const v1, 0x2020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    const v1, 0x2020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 369
    :cond_2
    const v1, 0x20500cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColor:I

    .line 370
    const v1, 0x20500cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorPressed:I

    .line 371
    const v1, 0x20500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorDimmed:I

    .line 372
    const v1, 0x20500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 373
    const v1, 0x20500d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 374
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleShadowTextColor:I

    .line 375
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleDividerColor:I

    .line 377
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v1, v4, :cond_3

    .line 378
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 379
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 380
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    :goto_3
    const v1, 0x2020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 387
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x2020221

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 382
    :cond_3
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 383
    const v1, 0x2020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method private isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 9
    .parameter "text"

    .prologue
    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2873
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2874
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2875
    .local v3, len:I
    const/4 v2, 0x0

    .line 2876
    .local v2, i:I
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2877
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 2878
    .local v1, directionality:B
    :cond_0
    :goto_0
    if-eq v1, v8, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-ne v1, v6, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    .line 2879
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2881
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-eq v8, v6, :cond_0

    const/16 v6, 0xc

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v7

    if-eq v6, v7, :cond_0

    .line 2882
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    goto :goto_0

    .line 2885
    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0x10

    if-eq v1, v6, :cond_3

    const/16 v6, 0x11

    if-ne v1, v6, :cond_4

    :cond_3
    move v4, v5

    .line 2890
    .end local v0           #c:I
    .end local v1           #directionality:B
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_4
    return v4
.end method

.method private notifyIndexChange()V
    .locals 7

    .prologue
    .line 1166
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->hasIndexerDataValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1169
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v2

    .line 1170
    .local v2, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    if-eqz v2, :cond_2

    .line 1171
    const/4 v3, 0x0

    .line 1172
    .local v3, position:I
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1174
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1175
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    neg-int v3, v4

    .line 1183
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    if-eqz v4, :cond_1

    .line 1184
    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexStringAt(I)Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, indexHandleString:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setIndexHandleString(Ljava/lang/String;)V

    .line 1186
    const-string v4, "TwLangIndexScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " notifyIndexChange current postion of index String of handle is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexHandleString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    .end local v1           #indexHandleString:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    invoke-interface {v4, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;->onIndexSelected(I)V

    .line 1195
    .end local v2           #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .end local v3           #position:I
    :cond_2
    :goto_1
    return-void

    .line 1177
    .restart local v2       #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .restart local v3       #position:I
    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v4

    iget v3, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    .end local v2           #lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    .end local v3           #position:I
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private resetHandleRectSize()V
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleRect:Landroid/graphics/Rect;

    .line 736
    return-void
.end method

.method private resetScrollDepth(Z)V
    .locals 4
    .parameter "resetIndex"

    .prologue
    const/4 v3, 0x1

    .line 495
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 496
    .local v0, arrSize:I
    if-nez p1, :cond_0

    if-ge v0, v3, :cond_2

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 499
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 500
    .local v1, rect:Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 501
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    const-string v2, ""

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->increaseScrollDepth(Ljava/lang/String;I)Z

    .line 510
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 506
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->sizeDepthScroll()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->decreaseScrollDepth()V

    goto :goto_0
.end method

.method private setIndexHandleString(Ljava/lang/String;)V
    .locals 0
    .parameter "indexHandleString"

    .prologue
    .line 2863
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexHandleString:Ljava/lang/String;

    .line 2864
    return-void
.end method

.method private sizeDepthScroll()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private startAnimation(Ljava/lang/Object;IIF)V
    .locals 9
    .parameter "ob"
    .parameter "currentLang"
    .parameter "newLang"
    .parameter "y"

    .prologue
    .line 2819
    const-string v3, "y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimationStartIndex:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2820
    .local v2, mAnimUp:Landroid/animation/ObjectAnimator;
    const-string v3, "y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, p2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimationStartIndex:F

    mul-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2821
    .local v1, mAnimDown:Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2822
    .local v0, animSet:Landroid/animation/AnimatorSet;
    if-ge p2, p3, :cond_0

    .line 2823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentLang"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--newLang--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "animUp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2830
    :goto_0
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2831
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2858
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2859
    return-void

    .line 2827
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentLang"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--newLang--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "y--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "animDown"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/16 v9, 0xff

    .line 1198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1199
    const/4 v7, 0x0

    .local v7, depth:I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1201
    if-nez v7, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1202
    .local v2, d:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_2

    move v6, v9

    .line 1205
    .local v6, alpha:I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    .line 1206
    .local v8, lDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    if-nez v8, :cond_3

    .line 1224
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #alpha:I
    .end local v8           #lDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    :cond_0
    :goto_3
    return-void

    .line 1201
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    move v6, v9

    .line 1202
    goto :goto_2

    .line 1208
    .restart local v6       #alpha:I
    .restart local v8       #lDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    :cond_3
    iget-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDrawingPhase:Z

    if-nez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;

    sget v4, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColor:I

    sget v5, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorPressed:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->drawScroll(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;III)V

    .line 1199
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1220
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #alpha:I
    .end local v8           #lDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    if-nez v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1222
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFadeOutRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x320

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method public getFirstHandleWidth()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandleWidth:I

    return v0
.end method

.method public getHandlePosition()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method public getIndexHandleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexHandleString:Ljava/lang/String;

    return-object v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 2705
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTopPadding:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 2715
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2721
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    if-nez v0, :cond_0

    .line 2722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    .line 2724
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 440
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 444
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2776
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2783
    .local v0, superState:Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    if-eqz v1, :cond_0

    .line 2784
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 2785
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetScrollDepth(Z)V

    .line 2786
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 2788
    :cond_0
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1239
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1242
    sub-int v1, p4, p3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mVisibleItem:I

    if-eq v1, p2, :cond_0

    .line 1243
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mVisibleItem:I

    .line 1249
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    if-nez v1, :cond_0

    .line 1253
    :try_start_0
    invoke-virtual {p0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setLangPosition(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1263
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1119
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    if-eqz v1, :cond_0

    .line 1120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 1121
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->sizeDepthScroll()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1122
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->decreaseScrollDepth()V

    goto :goto_0

    .line 1126
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v0

    .local v0, lastScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    if-eqz v0, :cond_1

    .line 1127
    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->onSizeChanged(I)V

    .line 1129
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 1130
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "ev"

    .prologue
    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 804
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 806
    .local v16, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 807
    .local v15, x:F
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v11

    .line 809
    .local v11, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    if-eqz v11, :cond_0

    iget-boolean v0, v11, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDrawingPhase:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 811
    const/16 v17, 0x1

    .line 963
    :goto_0
    return v17

    .line 813
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 962
    :cond_1
    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLastY:F

    .line 963
    const/16 v17, 0x1

    goto :goto_0

    .line 820
    :pswitch_0
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getRect()Landroid/graphics/Rect;

    move-result-object v17

    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 823
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 824
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 825
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mStartMotionX:F

    .line 827
    move/from16 v0, v16

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getNearestIndex(F)Z
    invoke-static {v11, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->access$400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;F)Z

    .line 828
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 832
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange()V

    .line 835
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v19

    sub-long v7, v17, v19

    .line 837
    .local v7, lDownTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 839
    .local v9, lMsg:Landroid/os/Message;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->what:I

    .line 840
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->awakenScrollBar()V

    goto/16 :goto_1

    .line 845
    .end local v7           #lDownTime:J
    .end local v9           #lMsg:Landroid/os/Message;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 850
    :pswitch_1
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->sizeDepthScroll()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    .line 859
    .local v4, curDepth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mStartMotionX:F

    move/from16 v17, v0

    sub-float v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 860
    .local v5, distanceX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleGap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v4

    move/from16 v18, v0

    const/high16 v19, 0x3f80

    add-float v18, v18, v19

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v13, v17, v18

    .line 861
    .local v13, thresholdXNextLevel:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleGap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int v17, v17, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandleGap:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v14, v0

    .line 863
    .local v14, thresholdXPreviousLevel:F
    cmpl-float v17, v5, v13

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDepthLimit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    .line 865
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->sizeDepthScroll()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 873
    :cond_4
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v6

    .line 876
    .local v6, indexPath:Ljava/lang/String;
    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mPositionChildScroll:F
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->access$600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)F

    move-result v12

    .line 878
    .local v12, scrollStartY:F
    float-to-int v0, v12

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->increaseScrollDepth(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 879
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 880
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v11

    .line 881
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 882
    const/16 v17, 0x1

    sput-boolean v17, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto/16 :goto_1

    .line 887
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    goto/16 :goto_1

    .line 894
    .end local v6           #indexPath:Ljava/lang/String;
    .end local v12           #scrollStartY:F
    :cond_6
    cmpg-float v17, v5, v14

    if-gez v17, :cond_9

    .line 895
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 896
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->sizeDepthScroll()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 898
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->decreaseScrollDepth()V

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v11

    .line 900
    if-eqz v11, :cond_8

    .line 901
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 902
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 904
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange()V

    goto/16 :goto_1

    .line 910
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLockMove:Z

    .line 914
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateIndex(F)Z

    move-result v10

    .line 915
    .local v10, lUpdate:Z
    if-eqz v10, :cond_1

    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v19

    sub-long v7, v17, v19

    .line 919
    .restart local v7       #lDownTime:J
    const-string v17, "TwLangIndexScrollView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onTouchEvevnt sending DownTime Up--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " down --"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->sizeDepthScroll()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 925
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLastY:F

    move/from16 v17, v0

    sub-float v17, v17, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->access$700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 942
    :goto_2
    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->drawIndexText(Ljava/lang/String;)V

    .line 943
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange()V

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto/16 :goto_1

    .line 934
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 936
    .restart local v9       #lMsg:Landroid/os/Message;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Landroid/os/Message;->what:I

    .line 937
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 952
    .end local v4           #curDepth:I
    .end local v5           #distanceX:F
    .end local v7           #lDownTime:J
    .end local v9           #lMsg:Landroid/os/Message;
    .end local v10           #lUpdate:Z
    .end local v13           #thresholdXNextLevel:F
    .end local v14           #thresholdXPreviousLevel:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDownTimehandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 953
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->notifyIndexChange()V

    .line 955
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z

    .line 956
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetScrollDepth(Z)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->setVisibility(I)V

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto/16 :goto_1

    .line 813
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

    .line 628
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 629
    .local v0, rsrc:Landroid/content/res/Resources;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    .line 630
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    if-nez v1, :cond_1

    .line 631
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v1, v2, :cond_0

    .line 632
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 633
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 634
    const v1, 0x202022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 651
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetHandleRectSize()V

    .line 652
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetScrollDepth(Z)V

    .line 653
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 654
    return-void

    .line 636
    :cond_0
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 637
    const v1, 0x2020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 638
    const v1, 0x2020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 641
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v1, v2, :cond_2

    .line 642
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 643
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 644
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 646
    :cond_2
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 647
    const v1, 0x2020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 648
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 4
    .parameter "theme"

    .prologue
    const v2, 0x2050001

    const/4 v3, 0x1

    .line 662
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 663
    .local v0, rsrc:Landroid/content/res/Resources;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    .line 665
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    if-nez v1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 668
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I

    if-nez v1, :cond_2

    .line 669
    const v1, 0x20500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColor:I

    .line 670
    const v1, 0x20500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorPressed:I

    .line 671
    const v1, 0x20500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorDimmed:I

    .line 672
    const v1, 0x20500c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 673
    const v1, 0x20500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 674
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleShadowTextColor:I

    .line 675
    const v1, 0x20500c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleDividerColor:I

    .line 677
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x20500c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$202(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;I)I

    .line 678
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x20500c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$302(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;I)I

    .line 680
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v1, v3, :cond_1

    .line 681
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 682
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 683
    const v1, 0x202022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 689
    :goto_1
    const v1, 0x2020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 690
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x2020220

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 685
    :cond_1
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 686
    const v1, 0x2020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 687
    const v1, 0x2020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 692
    :cond_2
    const v1, 0x20500cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColor:I

    .line 693
    const v1, 0x20500cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorPressed:I

    .line 694
    const v1, 0x20500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextColorDimmed:I

    .line 695
    const v1, 0x20500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColor:I

    .line 696
    const v1, 0x20500d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondDepthTextColorPressed:I

    .line 697
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleShadowTextColor:I

    .line 698
    const v1, 0x20500d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleDividerColor:I

    .line 700
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x20500ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$202(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;I)I

    .line 701
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x20500cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$302(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;I)I

    .line 703
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I

    if-ne v1, v3, :cond_3

    .line 704
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 705
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 706
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 712
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexTextView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;

    const v2, 0x2020221

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->access$002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 713
    const v1, 0x2020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleSecondBgDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 708
    :cond_3
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 709
    const v1, 0x2020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 710
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V
    .locals 3
    .parameter "indexer"

    .prologue
    const/4 v2, 0x1

    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    if-eqz v0, :cond_1

    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TwIndexView.setIndexer(indexer) :  you are not allowed to set the indexer if you already use indexScroll view under Simple scroll mode !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 426
    :cond_2
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    .line 427
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 429
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mRegisteredDataSetObserver:Z

    .line 432
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetScrollDepth(Z)V

    .line 433
    return-void
.end method

.method public setLangPosition(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)V
    .locals 11
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v10, 0x0

    .line 1034
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBounceView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 1035
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevLangPos:I

    if-ne v7, p2, :cond_1

    .line 1037
    const-string v7, "TwLangIndexScrollView"

    const-string v8, "getting same position muliple positon"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mPrevLangPos:I

    .line 1042
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v6

    .line 1044
    .local v6, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v7, :cond_0

    .line 1046
    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->access$1000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1047
    .local v2, lIndexInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    if-eqz v2, :cond_0

    .line 1049
    const/4 v1, -0x1

    .line 1050
    .local v1, lIndex:I
    const/4 v4, -0x1

    .line 1053
    .local v4, lPrepos:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget v5, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 1054
    .local v5, lPrevLangPos:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v7

    if-ge p2, v7, :cond_2

    if-le p2, v5, :cond_2

    .line 1056
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 1057
    const-string v7, "TwLangIndexScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setLangPosition position macthed index--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_2
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 1063
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 1064
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    .line 1065
    .local v3, lInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    iget v7, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    if-ne p2, v7, :cond_4

    .line 1067
    move v1, v0

    .line 1094
    .end local v0           #i:I
    .end local v3           #lInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_3
    :goto_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLastY:F

    invoke-direct {p0, v7, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->checkLangChange(FI)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto :goto_0

    .line 1071
    .restart local v0       #i:I
    .restart local v3       #lInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_4
    iget v7, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mLastPosition:I

    if-ne p2, v7, :cond_5

    .line 1073
    move v1, v0

    .line 1074
    goto :goto_2

    .line 1077
    :cond_5
    if-le p2, v4, :cond_6

    iget v7, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    if-ge p2, v7, :cond_6

    .line 1079
    add-int/lit8 v1, v0, -0x1

    .line 1080
    goto :goto_2

    .line 1082
    :cond_6
    iget v7, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    if-le p2, v7, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_7

    .line 1085
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 1086
    goto :goto_2

    .line 1089
    :cond_7
    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1098
    .end local v0           #i:I
    .end local v3           #lInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_8
    const/4 v7, 0x1

    if-lt v1, v7, :cond_9

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    if-eq v8, v7, :cond_9

    .line 1101
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    .line 1102
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto/16 :goto_0

    .line 1104
    :cond_9
    if-nez v1, :cond_0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    if-eq v8, v7, :cond_0

    .line 1107
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrShownIndexChar:Ljava/lang/String;

    .line 1108
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    goto/16 :goto_0
.end method

.method public setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V
    .locals 0
    .parameter "iOnIndexSelectedListener"

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;

    .line 1270
    return-void
.end method

.method public setSimpleIndexHandleChar([Ljava/lang/String;)V
    .locals 2
    .parameter "handleChar"

    .prologue
    const/4 v1, 0x1

    .line 453
    if-nez p1, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexHandleChar(handleChar) "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_1

    .line 457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TwIndexView.setSimpleIndexHandleChar(String [] handleChar) :  you must not set the indexer to use simple index handle mode !!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleIndexScroll:Z

    .line 461
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexCharacters:[Ljava/lang/String;

    .line 463
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetScrollDepth(Z)V

    .line 464
    return-void
.end method

.method public setSimpleIndexHandleCharForContact([Ljava/lang/String;)V
    .locals 1
    .parameter "handleChar"

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact:Z

    .line 473
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public setSimpleIndexHandleCharForContact_HK([Ljava/lang/String;)V
    .locals 1
    .parameter "handleChar"

    .prologue
    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact:Z

    .line 486
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z

    .line 487
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public setSubscrollLimit(I)V
    .locals 1
    .parameter "depthLimit"

    .prologue
    .line 614
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 615
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDepthLimit:I

    .line 617
    :cond_0
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .parameter "mTopPadding"

    .prologue
    .line 2711
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTopPadding:I

    .line 2712
    return-void
.end method

.method public setmIsFavoriteContactMode(Z)V
    .locals 0
    .parameter "mIsFavoriteContactMode"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsFavoriteContactMode:Z

    .line 99
    return-void
.end method
