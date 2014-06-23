.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;
.super Lcom/sec/android/touchwiz/widget/TwProgressBar;
.source "TwAbsTouchScroll.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

.field private mDisabledAlpha:F

.field private mIsTouch:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScale:F

.field private mScrollLenth:I

.field private mScrollLenthPercent:F

.field private mSeekThumbFontColor:I

.field private mSeekThumbFontEnable:Z

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSeekThumbFontSize:F

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosY:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScrollLenth:I

    .line 40
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScrollLenthPercent:F

    .line 41
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScale:F

    .line 48
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mIsUserSeekable:Z

    .line 54
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    .line 59
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mIsTouch:Z

    .line 63
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontEnable:Z

    .line 65
    const/high16 v2, 0x4170

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScale:F

    .line 96
    sget-object v2, Ltouchwiz/R$styleable;->TwSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getThumbOffset()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 107
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mDisabledAlpha:F

    .line 108
    const/4 v2, 0x5

    const/high16 v3, 0x205

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontColor:I

    .line 109
    const/4 v2, 0x6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontSize:F

    .line 110
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontEnable:Z

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    .line 114
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 592
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 11
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 364
    .local v3, progress:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 366
    .local v4, progressSpacing:I
    if-gtz v4, :cond_0

    .line 367
    const/4 v4, 0x0

    .line 369
    :cond_0
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingLeft:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingRight:I

    sub-int/2addr v9, v10

    sub-int v0, v9, v4

    .line 370
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 371
    .local v7, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 372
    .local v5, thumbHeight:I
    sub-int/2addr v0, v7

    .line 375
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbOffset:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 377
    int-to-float v9, v0

    mul-float/2addr v9, p3

    float-to-int v9, v9

    add-int v6, v9, v4

    .line 380
    .local v6, thumbPos:I
    const/high16 v9, -0x8000

    if-ne p4, v9, :cond_1

    .line 381
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 382
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 383
    .local v8, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 390
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v9, v6, v7

    invoke-virtual {p2, v6, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosX:I

    .line 392
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosY:I

    .line 393
    return-void

    .line 385
    .end local v1           #bottomBound:I
    .end local v8           #topBound:I
    :cond_1
    move v8, p4

    .line 386
    .restart local v8       #topBound:I
    add-int v1, p4, v5

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    const/16 v4, 0x40

    .line 399
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "h : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scale : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingTop:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 403
    .local v0, available:I
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "available : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 405
    .local v6, thumbWidth:I
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumbWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScrollLenthPercent:F

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScrollLenth:I

    .line 407
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScrollLenth:I

    if-le v7, v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScrollLenth:I

    .line 408
    .local v4, thumbHeight:I
    :cond_0
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumbHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sub-int/2addr v0, v6

    .line 411
    const/high16 v7, 0x3f80

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    .line 412
    .local v5, thumbPos:I
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumbPos : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_1

    .line 416
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 417
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 418
    .local v1, leftBound:I
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 423
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v3, rightBound:I
    :goto_0
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rightBound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v7, "TouchScroll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "leftBound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    add-int v7, v5, v4

    invoke-virtual {p2, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 429
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosX:I

    .line 430
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosY:I

    .line 431
    return-void

    .line 420
    .end local v1           #leftBound:I
    .end local v3           #rightBound:I
    :cond_1
    move v1, p4

    .line 421
    .restart local v1       #leftBound:I
    add-int v3, p4, v6

    .restart local v3       #rightBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getWidth()I

    move-result v5

    .line 548
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getHeight()I

    move-result v1

    .line 550
    .local v1, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 551
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 553
    .local v7, y:I
    const/4 v3, 0x0

    .line 554
    .local v3, progress:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v2

    .line 556
    .local v2, max:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_2

    .line 557
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 558
    .local v0, available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingLeft:I

    if-ge v6, v8, :cond_0

    .line 559
    const/4 v4, 0x0

    .line 577
    .local v4, scale:F
    :goto_0
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 579
    const-string v8, "ABS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "progress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setProgress(IZ)V

    .line 582
    return-void

    .line 560
    .end local v4           #scale:F
    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_1

    .line 561
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_0

    .line 563
    .end local v4           #scale:F
    :cond_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 564
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mTouchProgressOffset:F

    goto :goto_0

    .line 567
    .end local v0           #available:I
    .end local v4           #scale:F
    :cond_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 568
    .restart local v0       #available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingTop:I

    if-ge v7, v8, :cond_3

    .line 569
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_0

    .line 570
    .end local v4           #scale:F
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_4

    .line 571
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_0

    .line 573
    .end local v4           #scale:F
    :cond_4
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 574
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mTouchProgressOffset:F

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 263
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->drawableStateChanged()V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 266
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getDrawableState()[I

    move-result-object v1

    .line 272
    .local v1, state:[I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 274
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 267
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    return v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v0

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgress()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSeekThumbFontColor()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontColor:I

    return v0
.end method

.method public getSeekThumbFontSize()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getThumbCenterPosX()I
    .locals 3

    .prologue
    .line 320
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 322
    .local v0, thumbCenterPosX:I
    return v0
.end method

.method public getThumbCenterPosY()I
    .locals 3

    .prologue
    .line 331
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 333
    .local v0, thumbCenterPosY:I
    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbOffset:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 437
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getHeight()I

    move-result v0

    .line 438
    .local v0, height:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 439
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 442
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingLeft:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbOffset:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 443
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mIsTouch:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontEnable:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgress()I

    move-result v1

    .line 448
    .local v1, progress:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 449
    .local v7, thumbWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 450
    .local v5, thumbHeight:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, thumbText:Ljava/lang/CharSequence;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 453
    .local v2, rectText:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 454
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontColor:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_3

    .line 458
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosX:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v3, v8

    .line 459
    .local v3, textX:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v0, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v4, v8

    .line 465
    .local v4, textY:F
    :goto_0
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_0

    .line 466
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScale:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    sub-float/2addr v3, v8

    .line 469
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 471
    .end local v1           #progress:I
    .end local v2           #rectText:Landroid/graphics/Rect;
    .end local v3           #textX:F
    .end local v4           #textY:F
    .end local v5           #thumbHeight:I
    .end local v6           #thumbText:Ljava/lang/CharSequence;
    .end local v7           #thumbWidth:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_2
    monitor-exit p0

    return-void

    .line 461
    .restart local v1       #progress:I
    .restart local v2       #rectText:Landroid/graphics/Rect;
    .restart local v5       #thumbHeight:I
    .restart local v6       #thumbText:Ljava/lang/CharSequence;
    .restart local v7       #thumbWidth:I
    :cond_3
    :try_start_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosX:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v3, v8

    .line 462
    .restart local v3       #textX:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbPosY:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v8, v9

    int-to-float v4, v8

    .restart local v4       #textY:F
    goto :goto_0

    .line 435
    .end local v0           #height:I
    .end local v1           #progress:I
    .end local v2           #rectText:Landroid/graphics/Rect;
    .end local v3           #textX:F
    .end local v4           #textY:F
    .end local v5           #thumbHeight:I
    .end local v6           #thumbText:Ljava/lang/CharSequence;
    .end local v7           #thumbWidth:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 615
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgress()I

    move-result v0

    .line 617
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 643
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 619
    :pswitch_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 620
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setProgress(IZ)V

    .line 621
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onKeyChange()V

    goto :goto_0

    .line 625
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 626
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setProgress(IZ)V

    .line 627
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onKeyChange()V

    goto :goto_0

    .line 631
    :pswitch_2
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setProgress(IZ)V

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onKeyChange()V

    goto :goto_0

    .line 637
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setProgress(IZ)V

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onKeyChange()V

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 479
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 480
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 481
    .local v2, dw:I
    const/4 v1, 0x0

    .line 482
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 483
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 484
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 485
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 487
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingLeft:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 488
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingTop:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 490
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 479
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 477
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    const/high16 v2, -0x8000

    .line 278
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 279
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->invalidate()V

    .line 292
    :cond_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 297
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 298
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 299
    .local v4, thumbHeight:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v1

    .line 300
    .local v1, max:I
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgress()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 303
    .local v2, scale:F
    :goto_1
    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getProgressBarMode()I

    move-result v5

    if-nez v5, :cond_3

    .line 305
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingTop:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v0, v5, 0x2

    .line 306
    .local v0, gap:I
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 312
    .end local v0           #gap:I
    :cond_0
    :goto_2
    return-void

    .line 298
    .end local v1           #max:I
    .end local v2           #scale:F
    .end local v4           #thumbHeight:I
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 300
    .restart local v1       #max:I
    .restart local v4       #thumbHeight:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 308
    .restart local v2       #scale:F
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingLeft:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mPaddingRight:I

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 309
    .restart local v0       #gap:I
    invoke-direct {p0, p2, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 605
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 496
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 543
    :goto_0
    return v0

    .line 511
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 513
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setPressed(Z)V

    .line 514
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mIsTouch:Z

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onStartTrackingTouch()V

    .line 516
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->invalidate()V

    goto :goto_0

    .line 521
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 522
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->attemptClaimDrag()V

    goto :goto_0

    .line 526
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onStopTrackingTouch()V

    .line 528
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setPressed(Z)V

    .line 529
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mIsTouch:Z

    .line 533
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->invalidate()V

    goto :goto_0

    .line 537
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onStopTrackingTouch()V

    .line 538
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setPressed(Z)V

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->invalidate()V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 170
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    .line 171
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    .line 189
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->getMax()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 254
    return-void
.end method

.method public setScrollLenthPercent(F)V
    .locals 0
    .parameter "lenth"

    .prologue
    .line 141
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScrollLenthPercent:F

    .line 142
    return-void
.end method

.method public setSeekThumbFontColor(I)V
    .locals 0
    .parameter "resourceID"

    .prologue
    .line 223
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontColor:I

    .line 224
    return-void
.end method

.method public setSeekThumbFontEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontEnable:Z

    .line 242
    return-void
.end method

.method public setSeekThumbFontSize(I)V
    .locals 2
    .parameter "fontSize"

    .prologue
    .line 201
    if-gez p1, :cond_0

    .line 202
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontSize:F

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mSeekThumbFontSize:F

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbOffset:I

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->invalidate()V

    .line 137
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 159
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumbOffset:I

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->invalidate()V

    .line 161
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
