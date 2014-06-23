.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwProgressBar;
.source "TwAbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

.field private final debug:Z

.field private mDisabledAlpha:F

.field private mHoverUIEnabled:I

.field private mHoveringLevel:I

.field private mIsDisableCompensationTouchArea:Z

.field private mIsTouch:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScale:F

.field private mSeekThumbFontBoldStyle:Z

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
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->debug:Z

    .line 53
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 59
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    .line 64
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    .line 70
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 75
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 79
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 80
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    .line 82
    const/high16 v3, 0x4170

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    .line 85
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    .line 88
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    .line 89
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 119
    sget-object v3, Ltouchwiz/R$styleable;->TwSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 129
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbOffset(I)V

    .line 130
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    .line 131
    const/4 v3, 0x5

    const/high16 v4, 0x205

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 132
    const/4 v3, 0x6

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v8

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 133
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    .line 134
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    .line 138
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 142
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    .line 144
    return-void

    .line 124
    .end local v2           #thumbOffset:I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 606
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
    .line 382
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 383
    .local v3, progress:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 385
    .local v4, progressSpacing:I
    if-gtz v4, :cond_0

    .line 386
    const/4 v4, 0x0

    .line 388
    :cond_0
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    sub-int v0, v9, v4

    .line 389
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 390
    .local v7, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 391
    .local v5, thumbHeight:I
    sub-int/2addr v0, v7

    .line 394
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 396
    int-to-float v9, v0

    mul-float/2addr v9, p3

    float-to-int v9, v9

    add-int v6, v9, v4

    .line 399
    .local v6, thumbPos:I
    const/high16 v9, -0x8000

    if-ne p4, v9, :cond_1

    .line 400
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 401
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 402
    .local v8, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 409
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v9, v6, v7

    invoke-virtual {p2, v6, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 410
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 411
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 412
    return-void

    .line 404
    .end local v1           #bottomBound:I
    .end local v8           #topBound:I
    :cond_1
    move v8, p4

    .line 405
    .restart local v8       #topBound:I
    add-int v1, p4, v5

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 418
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 419
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 420
    .local v6, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 422
    .local v4, thumbHeight:I
    const/high16 v7, 0x3f80

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    .line 425
    .local v5, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 426
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 427
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 428
    .local v1, leftBound:I
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 435
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v3, rightBound:I
    :goto_0
    add-int v7, v5, v4

    invoke-virtual {p2, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 437
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 438
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 439
    return-void

    .line 430
    .end local v1           #leftBound:I
    .end local v3           #rightBound:I
    :cond_0
    move v1, p4

    .line 431
    .restart local v1       #leftBound:I
    add-int v3, p4, v6

    .restart local v3       #rightBound:I
    goto :goto_0
.end method

.method private trackHoverEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    .line 710
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    .line 712
    .local v1, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 713
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 715
    .local v7, y:I
    const/4 v3, 0x0

    .line 716
    .local v3, progress:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    .line 718
    .local v2, max:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_6

    .line 719
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    .line 721
    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    if-ltz v7, :cond_2

    if-le v7, v1, :cond_3

    .line 727
    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 728
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    goto :goto_0

    .line 732
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 733
    .local v0, available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_4

    .line 734
    const/4 v4, 0x0

    .line 759
    .local v4, scale:F
    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 760
    float-to-int v8, v3

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    goto :goto_0

    .line 735
    .end local v4           #scale:F
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_5

    .line 736
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 738
    .end local v4           #scale:F
    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 739
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 742
    .end local v0           #available:I
    .end local v4           #scale:F
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_7

    .line 744
    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 749
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 750
    .restart local v0       #available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_8

    .line 751
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 752
    .end local v4           #scale:F
    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_9

    .line 753
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_1

    .line 755
    .end local v4           #scale:F
    :cond_9
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 756
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    .line 542
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    .line 544
    .local v1, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 545
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 547
    .local v7, y:I
    const/4 v3, 0x0

    .line 548
    .local v3, progress:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    .line 550
    .local v2, max:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_6

    .line 551
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    .line 553
    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    if-ltz v7, :cond_2

    if-le v7, v1, :cond_3

    .line 559
    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 560
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    goto :goto_0

    .line 564
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 565
    .local v0, available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_4

    .line 566
    const/4 v4, 0x0

    .line 591
    .local v4, scale:F
    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 595
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 567
    .end local v4           #scale:F
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_5

    .line 568
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 570
    .end local v4           #scale:F
    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 571
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 574
    .end local v0           #available:I
    .end local v4           #scale:F
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_7

    .line 576
    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 581
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 582
    .restart local v0       #available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_8

    .line 583
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 584
    .end local v4           #scale:F
    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_9

    .line 585
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_1

    .line 587
    .end local v4           #scale:F
    :cond_9
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 588
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 275
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->drawableStateChanged()V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 278
    .local v1, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, bgDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 285
    .local v2, state:[I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 288
    .end local v2           #state:[I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 290
    .restart local v2       #state:[I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 292
    .end local v2           #state:[I
    :cond_2
    return-void

    .line 279
    .end local v0           #bgDrawble:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/high16 v3, 0x437f

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSeekThumbFontColor()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    return v0
.end method

.method public getSeekThumbFontSize()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getThumbCenterPosX()I
    .locals 3

    .prologue
    .line 338
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 340
    .local v0, thumbCenterPosX:I
    return v0
.end method

.method public getThumbCenterPosY()I
    .locals 3

    .prologue
    .line 349
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 351
    .local v0, thumbCenterPosY:I
    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v0

    .line 446
    .local v0, height:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 451
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v1

    .line 456
    .local v1, progress:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 457
    .local v7, thumbWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 458
    .local v5, thumbHeight:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, thumbText:Ljava/lang/CharSequence;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .local v2, rectText:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 462
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_2

    .line 466
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    .line 467
    .local v3, textX:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v0, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 473
    .local v4, textY:F
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    .end local v1           #progress:I
    .end local v2           #rectText:Landroid/graphics/Rect;
    .end local v3           #textX:F
    .end local v4           #textY:F
    .end local v5           #thumbHeight:I
    .end local v6           #thumbText:Ljava/lang/CharSequence;
    .end local v7           #thumbWidth:I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_1
    monitor-exit p0

    return-void

    .line 469
    .restart local v1       #progress:I
    .restart local v2       #rectText:Landroid/graphics/Rect;
    .restart local v5       #thumbHeight:I
    .restart local v6       #thumbText:Ljava/lang/CharSequence;
    .restart local v7       #thumbWidth:I
    :cond_2
    :try_start_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    .line 470
    .restart local v3       #textX:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v9, v9

    sub-float v4, v8, v9

    .restart local v4       #textY:F
    goto :goto_0

    .line 443
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

.method onHoverChanged(III)V
    .locals 0
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 706
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 665
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    if-nez v3, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    .line 674
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    if-ne v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 676
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 677
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 678
    .local v2, y:I
    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    .line 680
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackHoverEvent(Landroid/view/MotionEvent;)V

    .line 681
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    .line 696
    .end local v0           #action:I
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 669
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    goto :goto_0

    .line 683
    .restart local v0       #action:I
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_3
    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    .line 684
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackHoverEvent(Landroid/view/MotionEvent;)V

    .line 685
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    .line 688
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverPopupType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_1

    .line 692
    :cond_4
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    goto :goto_1
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 629
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v0

    .line 631
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 657
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 633
    :pswitch_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 634
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 635
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 639
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 640
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 645
    :pswitch_2
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 647
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 651
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 653
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 631
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
    .line 482
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 485
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 486
    .local v2, dw:I
    const/4 v1, 0x0

    .line 487
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 488
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 489
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 490
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 492
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 493
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 495
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 484
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 482
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

    .line 296
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 297
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 310
    :cond_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 315
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 316
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 317
    .local v4, thumbHeight:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    .line 318
    .local v1, max:I
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 321
    .local v2, scale:F
    :goto_1
    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v5

    if-nez v5, :cond_3

    .line 323
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v0, v5, 0x2

    .line 324
    .local v0, gap:I
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 330
    .end local v0           #gap:I
    :cond_0
    :goto_2
    return-void

    .line 316
    .end local v1           #max:I
    .end local v2           #scale:F
    .end local v4           #thumbHeight:I
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 318
    .restart local v1       #max:I
    .restart local v4       #thumbHeight:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 326
    .restart local v2       #scale:F
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 327
    .restart local v0       #gap:I
    invoke-direct {p0, p2, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 700
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 537
    :goto_0
    return v0

    .line 505
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 507
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 508
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingTouch()V

    .line 510
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 511
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 515
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 516
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 520
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 521
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 522
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 523
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 531
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 532
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 533
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setHoverPopupType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 765
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 768
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 769
    .local v0, contentHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 770
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 773
    .end local v0           #contentHeight:I
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setHoverPopupType(I)V

    .line 774
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 194
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 195
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    .line 213
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeekThumbFontColor(I)V
    .locals 0
    .parameter "resourceID"

    .prologue
    .line 247
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 248
    return-void
.end method

.method public setSeekThumbFontEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 266
    return-void
.end method

.method public setSeekThumbFontSize(I)V
    .locals 2
    .parameter "fontSize"

    .prologue
    .line 225
    if-gez p1, :cond_0

    .line 226
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 166
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 183
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 185
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

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
