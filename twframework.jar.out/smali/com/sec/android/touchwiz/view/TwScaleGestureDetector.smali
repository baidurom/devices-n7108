.class public Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;
.super Ljava/lang/Object;
.source "TwScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;,
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "TwScaleGestureDetector"


# instance fields
.field private AREA_THRESHOLD:F

.field private FACTOR_THRESHOLD_MIN:F

.field private final mContext:Landroid/content/Context;

.field private mEdgeBaseY:F

.field private mEdgeCurX:F

.field private mEdgeCurY:F

.field private mEdgeCurrEvent:Landroid/view/MotionEvent;

.field private mEdgeCurrFingerDiffX:F

.field private mEdgeCurrFingerDiffY:F

.field private mEdgeCurrLen:F

.field private mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEdgePixels:F

.field private mEdgePrevEvent:Landroid/view/MotionEvent;

.field private mEdgePrevFingerDiffX:F

.field private mEdgePrevFingerDiffY:F

.field private mEdgePrevLen:F

.field private mEdgePrevX:F

.field private mEdgePrevY:F

.field private mEdgeTimeDelta:J

.field private final mEdgeWM:Landroid/view/WindowManager;

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mIsEdgeDelay:Z

.field private mIsEdgeZoom:Z

.field private final mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

.field private mScaleFactor:F

.field private mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

.field private mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

.field private mUpdatePrevious:Z

.field private mValidPackage:Z

.field private mValidPackgeList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mUpdatePrevious:Z

    .line 147
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mValidPackage:Z

    .line 149
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.browser"

    aput-object v2, v1, v3

    const-string v2, "com.android.email"

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mValidPackgeList:[Ljava/lang/String;

    .line 177
    const v1, 0x45bb8000

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    .line 178
    const v1, 0x3dcccccd

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    .line 180
    new-instance v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;-><init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    .line 181
    new-instance v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;-><init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    .line 211
    iput-object p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    .line 214
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->isValidPackage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mValidPackage:Z

    .line 217
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeWM:Landroid/view/WindowManager;

    .line 218
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 221
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 222
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    .line 224
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, bInitialized:Z
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v5, :cond_0

    .line 423
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    .line 425
    :cond_0
    new-instance v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;-><init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 428
    .local v1, count:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    .line 430
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 432
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->x:F

    .line 433
    .local v3, x:F
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->y:F

    .line 434
    .local v4, y:F
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    .line 436
    if-eqz v0, :cond_5

    .line 437
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_1

    .line 438
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    .line 440
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    .line 441
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    .line 443
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_3

    .line 444
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    .line 446
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_4

    .line 447
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    .line 459
    :cond_4
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    .line 460
    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    .line 451
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    .line 452
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    .line 453
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    .line 454
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginX:F

    .line 455
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginY:F

    .line 456
    const/4 v0, 0x1

    goto :goto_1

    .line 463
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_6
    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    .line 464
    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    .line 466
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v6, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    .line 467
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v6, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    .line 469
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    .line 471
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v6, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v8, v8, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 474
    return-void
.end method

.method private getCurrentSignX()F
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginX:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 478
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getCurrentSignY()F
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginY:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 483
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getPreviousSignX()F
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginX:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 488
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getPreviousSignY()F
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginY:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, -0x4080

    .line 493
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private isValidPackage()Z
    .locals 5

    .prologue
    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mValidPackgeList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 513
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    const/4 v4, 0x1

    .line 521
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :goto_1
    return v4

    .line 512
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #pkg:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 521
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const v12, 0x3f333333

    const/4 v11, 0x0

    const v10, 0x40228f5c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 269
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-nez v8, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v6

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 274
    .local v0, action:I
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-nez v8, :cond_9

    .line 275
    if-nez v0, :cond_3

    .line 277
    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeWM:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 279
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeDelay:Z

    if-nez v8, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 283
    .local v2, locX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 286
    .local v3, locY:F
    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v10

    mul-float v1, v8, v12

    .line 287
    .local v1, frontX:F
    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 289
    .local v4, tailX:F
    cmpg-float v8, v2, v1

    if-ltz v8, :cond_2

    cmpl-float v8, v2, v4

    if-lez v8, :cond_0

    .line 291
    :cond_2
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeDelay:Z

    .line 292
    iput v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeBaseY:F

    goto :goto_0

    .line 296
    .end local v1           #frontX:F
    .end local v2           #locX:F
    .end local v3           #locY:F
    .end local v4           #tailX:F
    :cond_3
    if-eq v0, v7, :cond_4

    const/4 v8, 0x3

    if-ne v0, v8, :cond_5

    .line 298
    :cond_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    .line 299
    iput v11, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    .line 300
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeDelay:Z

    goto :goto_0

    .line 302
    :cond_5
    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeDelay:Z

    if-ne v8, v7, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 306
    .restart local v2       #locX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 309
    .restart local v3       #locY:F
    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v10

    mul-float v1, v8, v12

    .line 310
    .restart local v1       #frontX:F
    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 312
    .restart local v4       #tailX:F
    cmpg-float v8, v1, v2

    if-gez v8, :cond_6

    cmpg-float v8, v2, v4

    if-gez v8, :cond_6

    .line 314
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeDelay:Z

    goto :goto_0

    .line 316
    :cond_6
    iget v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeBaseY:F

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v9, v10

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 318
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeDelay:Z

    .line 319
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    .line 320
    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    .line 321
    iput v11, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    .line 322
    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    .line 323
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v8, :cond_8

    .line 325
    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 326
    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    .line 327
    invoke-direct {p0, p1, v7}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z

    move v6, v7

    .line 328
    goto/16 :goto_0

    .line 332
    :cond_8
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    goto/16 :goto_0

    .line 339
    .end local v1           #frontX:F
    .end local v2           #locX:F
    .end local v3           #locY:F
    .end local v4           #tailX:F
    :cond_9
    packed-switch v0, :pswitch_data_0

    :cond_a
    :goto_1
    move v6, v7

    .line 364
    goto/16 :goto_0

    .line 342
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    .line 343
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_1

    .line 347
    :pswitch_1
    invoke-direct {p0, p1, v6}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 349
    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    move-result v5

    .line 350
    .local v5, updatePrevious:Z
    if-eqz v5, :cond_a

    .line 351
    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 352
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 357
    .end local v5           #updatePrevious:Z
    :cond_b
    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    .line 358
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "isBegin"

    .prologue
    const v8, 0x40228f5c

    const v7, 0x3f333333

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 369
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 372
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    .line 374
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevX:F

    .line 375
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevY:F

    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurX:F

    .line 377
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurY:F

    .line 378
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeTimeDelta:J

    .line 380
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurX:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurX:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v8

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 383
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    .line 386
    :cond_1
    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    .line 387
    if-eqz p2, :cond_3

    .line 389
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    .line 390
    iput v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    .line 391
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurY:F

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeBaseY:F

    .line 392
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePixels:F

    .line 393
    iput v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrLen:F

    iput v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevLen:F

    .line 394
    iput v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 395
    iput v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrFingerDiffY:F

    .line 396
    iput v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 397
    iput v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevFingerDiffY:F

    .line 414
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeBaseY:F

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevLen:F

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 402
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeBaseY:F

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrLen:F

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 404
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 406
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevY:F

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePixels:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    goto :goto_1

    .line 408
    :cond_4
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 410
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePixels:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    div-float v0, v5, v0

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    goto :goto_1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 499
    iput-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 503
    iput-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    .line 505
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    .line 506
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    .line 507
    return-void
.end method


# virtual methods
.method public getAreaThreshold()F
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 2

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 577
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrLen:F

    .line 583
    :goto_0
    return v0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    goto :goto_0
.end method

.method public getCurrentSpanX()F
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 594
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 596
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSignX()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getCurrentSpanY()F
    .locals 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 607
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrFingerDiffY:F

    .line 609
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSignY()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mValidPackage:Z

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 686
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-wide v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    goto :goto_0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 620
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevLen:F

    .line 625
    :goto_0
    return v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    goto :goto_0
.end method

.method public getPreviousSpanX()F
    .locals 2

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 636
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 638
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getPreviousSignX()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getPreviousSpanY()F
    .locals 2

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 649
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgePrevFingerDiffY:F

    .line 651
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getPreviousSignY()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 672
    iget-wide v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mEdgeTimeDelta:J

    .line 674
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-wide v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-wide v2, v2, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mIsEdgeZoom:Z

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 232
    .local v0, action:I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_3

    .line 233
    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    .line 264
    :cond_1
    :goto_0
    return v3

    .line 236
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 238
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    .line 239
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    .line 240
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    .line 241
    const-string v1, "TwScaleGestureDetector"

    const-string v2, "TouchWiz::TwScaleGestureDetector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 246
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 249
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    .line 250
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v2, v2, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    .line 254
    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    iget v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v2, v2, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    div-float/2addr v1, v2

    const v2, 0x3f2b851f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mUpdatePrevious:Z

    goto :goto_0

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    .line 260
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_0
.end method

.method public setAreaThreshold(F)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 690
    iput p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    .line 691
    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mValidPackage:Z

    .line 703
    return-void
.end method
