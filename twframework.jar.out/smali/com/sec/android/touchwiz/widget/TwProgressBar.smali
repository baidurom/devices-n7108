.class public Lcom/sec/android/touchwiz/widget/TwProgressBar;
.super Landroid/view/View;
.source "TwProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwProgressBar$1;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final CORNERS:[F = null

.field private static final HIGH_ALPHA:I = 0x32000000

.field protected static final HORIZONTAL:I = 0x0

.field private static final LOW_ALPHA:I = -0x1000000

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MED_ALPHA:I = -0x6a000000

.field private static final UNDEFINED_COLOR:I = 0x0

.field protected static final VERTICAL:I = 0x1


# instance fields
.field private final DEFAULT_MAX:I

.field private final DEFAULT_MAX_HEIGHT:I

.field private final DEFAULT_MAX_WIDTH:I

.field private final DEFAULT_MIN_HEIGHT:I

.field private final DEFAULT_MIN_WIDTH:I

.field private final DEFAULT_PROGRESS:I

.field private final INVALID_PROGRESS_HEIGHT:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorThickness:I

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mProgress:I

.field private mProgressBarMode:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

.field private mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSecondaryProgress:I

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 230
    const v0, 0x2010005

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    const/16 v8, 0x30

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_HEIGHT:I

    .line 141
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_HEIGHT:I

    .line 143
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_WIDTH:I

    .line 144
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_WIDTH:I

    .line 146
    const/16 v4, 0x64

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX:I

    .line 148
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_PROGRESS:I

    .line 167
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 206
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->INVALID_PROGRESS_HEIGHT:I

    .line 212
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    .line 237
    sget-object v4, Ltouchwiz/R$styleable;->TwProgressBar:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    .line 242
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    .line 244
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    .line 246
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    .line 250
    const/4 v4, 0x4

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 251
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 253
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    .line 256
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 259
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 262
    .local v1, backColor:I
    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setBackgroundColor(I)V

    .line 270
    .end local v1           #backColor:I
    :cond_0
    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 273
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 275
    .local v2, progressColor:I
    if-eqz v2, :cond_4

    .line 276
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressColor(I)V

    .line 283
    .end local v2           #progressColor:I
    :cond_1
    :goto_1
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 286
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 288
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 291
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 294
    .local v3, secondaryColor:I
    if-eqz v3, :cond_5

    .line 295
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgressColor(I)V

    .line 302
    .end local v3           #secondaryColor:I
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    return-void

    .line 265
    .restart local v1       #backColor:I
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 278
    .end local v1           #backColor:I
    .restart local v2       #progressColor:I
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 297
    .end local v2           #progressColor:I
    .restart local v3       #secondaryColor:I
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isHorizontal"

    .prologue
    const/4 v1, 0x1

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    if-ne p2, v1, :cond_0

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwProgressBar;Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;)Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 766
    .local v4, scale:F
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 767
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 768
    const/4 v3, 0x0

    .line 770
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 771
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 774
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 775
    .local v2, level:I
    if-eqz v3, :cond_3

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 780
    .end local v2           #level:I
    :goto_2
    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 781
    invoke-virtual {p0, v4, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_1
    monitor-exit p0

    return-void

    .line 765
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v3, v1

    .line 775
    goto :goto_1

    .line 777
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 765
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "color"
    .parameter "strokeColor"

    .prologue
    const/4 v6, 0x1

    .line 410
    const v5, 0xffffff

    and-int/2addr p1, v5

    .line 411
    const/high16 v5, 0x3200

    or-int v4, p1, v5

    .line 412
    .local v4, startColor:I
    const/high16 v5, -0x6a00

    or-int v3, p1, v5

    .line 413
    .local v3, middleColor:I
    const/high16 v5, -0x100

    or-int v2, p1, v5

    .line 414
    .local v2, endColor:I
    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    aput v3, v0, v6

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 415
    .local v0, colors:[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 417
    .local v1, d:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 418
    sget-object v5, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 419
    return-object v1
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 746
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 747
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :goto_0
    monitor-exit p0

    return-void

    .line 750
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 752
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .line 754
    .local v0, r:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .line 755
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 760
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 746
    .end local v0           #r:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 758
    :cond_1
    :try_start_2
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorThickness()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressBarMode()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 501
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 502
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 511
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    .line 512
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 552
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 553
    .local v7, mContainer:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 555
    .local v8, mOutRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 556
    .local v9, max:I
    if-lez v9, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v9

    move/from16 v23, v0

    div-float v16, v22, v23

    .line 557
    .local v16, scale:F
    :goto_0
    if-lez v9, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v9

    move/from16 v23, v0

    div-float v17, v22, v23

    .line 558
    .local v17, scale2:F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v11

    .line 559
    .local v11, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v12

    .line 560
    .local v12, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v13

    .line 561
    .local v13, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v10

    .line 562
    .local v10, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getHeight()I

    move-result v6

    .line 564
    .local v6, height:I
    const/16 v19, 0x0

    .line 565
    .local v19, tempHeight:I
    const/16 v20, 0x0

    .line 567
    .local v20, tempWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 568
    .local v4, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 569
    .local v14, progress:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 571
    .local v18, secondary:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getWidth()I

    move-result v22

    sub-int v22, v22, v11

    sub-int v21, v22, v12

    .line 572
    .local v21, w:I
    sub-int v22, v6, v13

    sub-int v5, v22, v10

    .line 574
    .local v5, h:I
    const/4 v15, 0x0

    .line 584
    .local v15, progressSpacing:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v19, v0

    .line 591
    :goto_2
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 592
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 593
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 594
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v5

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 601
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    div-int/lit8 v15, v22, 0x2

    .line 603
    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 604
    sub-int v21, v21, v15

    .line 609
    :goto_3
    const/16 v22, 0x10

    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v7, v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 610
    const/16 v22, 0x0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v24, v21, v15

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 611
    const/16 v22, 0x0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v24, v24, v15

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v17

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v23, v23, v15

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 632
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 633
    int-to-float v0, v11

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 634
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 635
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 636
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    .line 556
    .end local v4           #background:Landroid/graphics/drawable/Drawable;
    .end local v5           #h:I
    .end local v6           #height:I
    .end local v10           #paddingBottom:I
    .end local v11           #paddingLeft:I
    .end local v12           #paddingRight:I
    .end local v13           #paddingTop:I
    .end local v14           #progress:Landroid/graphics/drawable/Drawable;
    .end local v15           #progressSpacing:I
    .end local v16           #scale:F
    .end local v17           #scale2:F
    .end local v18           #secondary:Landroid/graphics/drawable/Drawable;
    .end local v19           #tempHeight:I
    .end local v20           #tempWidth:I
    .end local v21           #w:I
    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 557
    .restart local v16       #scale:F
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 589
    .restart local v4       #background:Landroid/graphics/drawable/Drawable;
    .restart local v5       #h:I
    .restart local v6       #height:I
    .restart local v10       #paddingBottom:I
    .restart local v11       #paddingLeft:I
    .restart local v12       #paddingRight:I
    .restart local v13       #paddingTop:I
    .restart local v14       #progress:Landroid/graphics/drawable/Drawable;
    .restart local v15       #progressSpacing:I
    .restart local v17       #scale2:F
    .restart local v18       #secondary:Landroid/graphics/drawable/Drawable;
    .restart local v19       #tempHeight:I
    .restart local v20       #tempWidth:I
    .restart local v21       #w:I
    :cond_2
    move/from16 v19, v5

    goto/16 :goto_2

    .line 606
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 615
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v20, v0

    .line 621
    :goto_5
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 622
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 623
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 624
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v5

    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 626
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1, v5, v7, v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 627
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 628
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    sub-float v23, v23, v16

    int-to-float v0, v5

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v14, v0, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 629
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    sub-float v23, v23, v17

    int-to-float v0, v5

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 550
    .end local v4           #background:Landroid/graphics/drawable/Drawable;
    .end local v5           #h:I
    .end local v6           #height:I
    .end local v7           #mContainer:Landroid/graphics/Rect;
    .end local v8           #mOutRect:Landroid/graphics/Rect;
    .end local v9           #max:I
    .end local v10           #paddingBottom:I
    .end local v11           #paddingLeft:I
    .end local v12           #paddingRight:I
    .end local v13           #paddingTop:I
    .end local v14           #progress:Landroid/graphics/drawable/Drawable;
    .end local v15           #progressSpacing:I
    .end local v16           #scale:F
    .end local v17           #scale2:F
    .end local v18           #secondary:Landroid/graphics/drawable/Drawable;
    .end local v19           #tempHeight:I
    .end local v20           #tempWidth:I
    .end local v21           #w:I
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 619
    .restart local v4       #background:Landroid/graphics/drawable/Drawable;
    .restart local v5       #h:I
    .restart local v6       #height:I
    .restart local v7       #mContainer:Landroid/graphics/Rect;
    .restart local v8       #mOutRect:Landroid/graphics/Rect;
    .restart local v9       #max:I
    .restart local v10       #paddingBottom:I
    .restart local v11       #paddingLeft:I
    .restart local v12       #paddingRight:I
    .restart local v13       #paddingTop:I
    .restart local v14       #progress:Landroid/graphics/drawable/Drawable;
    .restart local v15       #progressSpacing:I
    .restart local v16       #scale:F
    .restart local v17       #scale2:F
    .restart local v18       #secondary:Landroid/graphics/drawable/Drawable;
    .restart local v19       #tempHeight:I
    .restart local v20       #tempWidth:I
    .restart local v21       #w:I
    :cond_5
    move/from16 v20, v21

    goto/16 :goto_5
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 646
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 647
    .local v2, dw:I
    const/4 v1, 0x0

    .line 648
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 649
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 650
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 654
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 656
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 644
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 546
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 716
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    .line 718
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 720
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_0

    .line 721
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    .line 723
    :cond_0
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    if-lez v1, :cond_1

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_1

    .line 724
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 725
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 710
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 711
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 345
    const v0, -0x8b8b8c

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    return-void
.end method

.method public setBackgroundDrawable(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 314
    return-void
.end method

.method public setIndicatorThickness(I)V
    .locals 0
    .parameter "thickness"

    .prologue
    .line 364
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 365
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 429
    if-gez p1, :cond_0

    .line 430
    const/4 p1, 0x0

    .line 432
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 433
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->postInvalidate()V

    .line 436
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 437
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 440
    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(IZ)V

    .line 450
    return-void
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 730
    monitor-enter p0

    if-gez p1, :cond_0

    .line 731
    const/4 p1, 0x0

    .line 734
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 735
    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 738
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 739
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 740
    const v0, 0x102000d

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->refreshProgress(IIZ)V

    .line 742
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    monitor-exit p0

    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 356
    return-void
.end method

.method public setProgressDrawable(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .parameter "secondaryProgress"

    .prologue
    .line 480
    if-gez p1, :cond_0

    .line 481
    const/4 p1, 0x0

    .line 484
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 485
    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 488
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    .line 489
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V

    .line 492
    :cond_2
    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    return-void
.end method

.method public setSecondaryProgressDrawable(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    return-void
.end method
