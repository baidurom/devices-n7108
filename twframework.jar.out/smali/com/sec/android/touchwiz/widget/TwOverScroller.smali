.class public Lcom/sec/android/touchwiz/widget/TwOverScroller;
.super Ljava/lang/Object;
.source "TwOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final VELOCITY_ADJUSTMENT:F

.field private final mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"
    .parameter "flywheel"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->VELOCITY_ADJUSTMENT:F

    .line 73
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mFlywheel:Z

    .line 75
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    .line 76
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    .line 78
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->initFromContext(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    .line 522
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    .line 523
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    const/4 v6, 0x0

    .line 348
    :goto_0
    return v6

    .line 304
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 348
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 309
    .local v4, time:J
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 311
    .local v1, elapsedTime:J
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    .line 312
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 313
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 315
    .local v3, q:F
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 316
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwScroller;->viscousFluid(F)F

    move-result v3

    .line 321
    :goto_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->updateScroll(F)V

    .line 322
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 318
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 324
    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    goto :goto_1

    .line 329
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 330
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 331
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 332
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    .line 337
    :cond_4
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 340
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .parameter "extend"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 257
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 411
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 412
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v6

    .line 446
    .local v6, oldVelocityX:F
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v7

    .line 447
    .local v7, oldVelocityY:F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 449
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 450
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 454
    .end local v6           #oldVelocityX:F
    .end local v7           #oldVelocityY:F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    .line 455
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 457
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #setter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$002(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;Z)Z

    move-result v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$002(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;Z)Z

    .line 148
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 175
    .local v0, squaredNorm:F
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 176
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public getCurrVelocity(Z)F
    .locals 1
    .parameter "isYVelocity"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v0

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$100(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$100(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$700(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$700(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 542
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 543
    .local v0, dx:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 544
    .local v1, dy:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 474
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 491
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .parameter "newX"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 275
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .parameter "newY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 293
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFriction(F)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFriction(F)V

    .line 126
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v2, 0x1

    .line 401
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    .line 404
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 405
    .local v0, spingbackX:Z
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 406
    .local v1, spingbackY:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 366
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 367
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    .line 384
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startScroll(III)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startScroll(III)V

    .line 386
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 533
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 534
    .local v2, time:J
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 535
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
