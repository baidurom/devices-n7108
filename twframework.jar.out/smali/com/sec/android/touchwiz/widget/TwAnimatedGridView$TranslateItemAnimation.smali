.class public Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
.source "TwAnimatedGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateItemAnimation"
.end annotation


# static fields
.field static final TRANSLATE_SPEED:F = 0.6f


# instance fields
.field mDelay:I

.field mDestOffsetX:I

.field mDestOffsetY:I

.field mDuration:I

.field private mFinish:Z

.field mOffsetXAnimation:I

.field mOffsetYAnimation:I

.field mPaint:Landroid/graphics/Paint;

.field mPrevCalcTime:J

.field mProgress:F

.field mStartTime:J

.field mXSpeedFactor:F

.field mYSpeedFactor:F


# direct methods
.method public constructor <init>(Z)V
    .locals 4
    .parameter "retainOnFinish"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;-><init>(IZ)V

    .line 222
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    .line 223
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    .line 224
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    .line 225
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    .line 226
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    .line 227
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    .line 228
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 229
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mProgress:F

    .line 233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mStartTime:J

    .line 234
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDuration:I

    .line 242
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    .line 243
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mFinish:Z

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mStartTime:J

    .line 245
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 12
    .parameter "curTime"

    .prologue
    const v11, 0x3f19999a

    const/4 v10, 0x0

    .line 313
    iget-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    const-wide/high16 v8, -0x8000

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move-wide v2, p1

    .line 315
    .local v2, prev:J
    :goto_0
    sub-long v4, p1, v2

    .line 316
    .local v4, running:J
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 317
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-long v6, v6

    sub-long/2addr v6, v4

    long-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    .line 318
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    .line 353
    :goto_1
    return-void

    .line 313
    .end local v2           #prev:J
    .end local v4           #running:J
    :cond_0
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    goto :goto_0

    .line 321
    .restart local v2       #prev:J
    .restart local v4       #running:J
    :cond_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 322
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    .line 325
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 326
    long-to-float v6, v4

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mXSpeedFactor:F

    mul-float v0, v6, v7

    .line 327
    .local v0, deltaX:F
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v0

    if-lez v6, :cond_4

    .line 329
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    if-lez v6, :cond_3

    .line 330
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    .line 339
    :goto_2
    long-to-float v6, v4

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mYSpeedFactor:F

    mul-float v1, v6, v7

    .line 340
    .local v1, deltaY:F
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_6

    .line 341
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    if-lez v6, :cond_5

    .line 342
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    .line 352
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    :cond_2
    :goto_3
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    goto :goto_1

    .line 332
    .restart local v0       #deltaX:F
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    goto :goto_2

    .line 336
    :cond_4
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    goto :goto_2

    .line 344
    .restart local v1       #deltaY:F
    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    goto :goto_3

    .line 347
    :cond_6
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    goto :goto_3
.end method

.method public createDrawingCache(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 407
    return-void
.end method

.method public delay(I)V
    .locals 1
    .parameter "timeInMillisec"

    .prologue
    .line 276
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    .line 277
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 400
    return-void
.end method

.method public getDestOffsetX()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    return v0
.end method

.method public getDestOffsetY()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDuration:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mProgress:F

    return v0
.end method

.method public getProgressWithoutDelay()F
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mProgress:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 4
    .parameter "outTransform"

    .prologue
    .line 359
    sget v1, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p1, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 360
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 361
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 363
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 364
    return-void
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 298
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    if-nez v1, :cond_1

    .line 299
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mFinish:Z

    if-eqz v1, :cond_0

    .line 306
    :goto_0
    return v0

    .line 302
    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mFinish:Z

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 420
    if-eqz p1, :cond_0

    .line 421
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    .line 423
    :cond_0
    return-void
.end method

.method public setXSpeedFactor(F)V
    .locals 0
    .parameter "xFactor"

    .prologue
    .line 283
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 284
    return-void
.end method

.method public setYSpeedFactor(F)V
    .locals 0
    .parameter "yFactor"

    .prologue
    .line 290
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 291
    return-void
.end method

.method public start(JI)V
    .locals 0
    .parameter "startTime"
    .parameter "duration"

    .prologue
    .line 385
    return-void
.end method

.method public translate(IIII)V
    .locals 2
    .parameter "startOffsetX"
    .parameter "deltaX"
    .parameter "startOffsetY"
    .parameter "deltaY"

    .prologue
    .line 265
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    add-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    .line 266
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    .line 267
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    add-int v1, p3, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    .line 268
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    sub-int/2addr v0, p4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    .line 269
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    .line 270
    return-void
.end method
