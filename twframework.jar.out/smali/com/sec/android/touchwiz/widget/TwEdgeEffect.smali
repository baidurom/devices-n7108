.class public Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
.super Ljava/lang/Object;
.source "TwEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 1.0f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 1.0f

.field public static MAX_EDGE_SCALE_Y:F = 0.0f

.field private static final MAX_GLOW_HEIGHT:F = 6.0f

.field public static MAX_GLOW_SCALE_Y:F = 0.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x10

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field public static final STATE_ABSORB:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PULL:I = 0x1

.field public static final STATE_PULL_DECAY:I = 0x4

.field public static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private isTouchWiz:Z

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    const/high16 v0, 0x3f80

    sput v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_EDGE_SCALE_Y:F

    .line 252
    const/high16 v0, 0x40c0

    sput v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_GLOW_SCALE_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MIN_WIDTH:I

    .line 125
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 254
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1080573

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 138
    const v1, 0x1080574

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4396

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    .line 141
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 142
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 440
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 441
    .local v3, time:J
    iget-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 443
    .local v2, t:F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 445
    .local v1, interp:F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    .line 446
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 447
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 448
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 450
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 451
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 453
    :pswitch_0
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 454
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 455
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 457
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 458
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 459
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 460
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 463
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 464
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 465
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 466
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 469
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 470
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 471
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 473
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 474
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 475
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 476
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 479
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 480
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 481
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 482
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 487
    :pswitch_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 490
    .local v0, factor:F
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 493
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_0

    .line 487
    .end local v0           #factor:F
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 496
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private update2()V
    .locals 5

    .prologue
    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 422
    .local v1, time:J
    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 423
    .local v0, t:F
    const v3, 0x3f7fbe77

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 424
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 426
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;->onGlowRecedeAnimationStart()V

    .line 431
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_0

    .line 429
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "GlowRecedeAnimationTrigger need to be implemented"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12
    .parameter "canvas"

    .prologue
    .line 378
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-eqz v8, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->update2()V

    .line 384
    :goto_0
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 385
    .local v1, edgeHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 386
    .local v3, edgeWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 387
    .local v5, glowHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 389
    .local v7, glowWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 391
    int-to-float v8, v5

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x40c0

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    .line 394
    .local v4, glowBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_1

    .line 396
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 397
    .local v6, glowLeft:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 403
    .end local v6           #glowLeft:I
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 405
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 407
    int-to-float v8, v1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 408
    .local v0, edgeBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_2

    .line 410
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 411
    .local v2, edgeLeft:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    .end local v2           #edgeLeft:I
    :goto_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 418
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    return v8

    .line 381
    .end local v0           #edgeBottom:I
    .end local v1           #edgeHeight:I
    .end local v3           #edgeWidth:I
    .end local v4           #glowBottom:I
    .end local v5           #glowHeight:I
    .end local v7           #glowWidth:I
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->update()V

    goto/16 :goto_0

    .line 400
    .restart local v1       #edgeHeight:I
    .restart local v3       #edgeWidth:I
    .restart local v4       #glowBottom:I
    .restart local v5       #glowHeight:I
    .restart local v7       #glowWidth:I
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 414
    .restart local v0       #edgeBottom:I
    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 418
    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 175
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    return v0
.end method

.method public isFinished()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-eqz v2, :cond_2

    .line 164
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 323
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 324
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 326
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 327
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 331
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 332
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 335
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 336
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 340
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 342
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 352
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    .line 356
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 358
    return-void
.end method

.method public onAbsorb2()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 362
    return-void
.end method

.method public onPull(F)V
    .locals 9
    .parameter "deltaDistance"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 188
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 189
    .local v2, now:J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 236
    :goto_0
    return-void

    .line 192
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    .line 193
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 195
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-eqz v4, :cond_4

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->updatePullState()V

    .line 204
    :goto_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 205
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 207
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    .line 208
    const/high16 v4, 0x40e0

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 211
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 215
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 216
    .local v1, glowChange:F
    cmpl-float v4, p1, v8

    if-lez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    .line 217
    neg-float v1, v1

    .line 219
    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    .line 220
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 224
    :cond_3
    const/high16 v4, 0x40c0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    const/high16 v6, 0x4180

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 230
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 232
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 233
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 234
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 235
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0

    .line 198
    .end local v0           #distance:F
    .end local v1           #glowChange:F
    :cond_4
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 200
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 201
    const/high16 v4, 0x4327

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    goto/16 :goto_1
.end method

.method public onPull2(F)V
    .locals 2
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3f80

    .line 266
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 267
    const/high16 p1, 0x3f80

    .line 269
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 271
    const/high16 v0, 0x40c0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 273
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 274
    sget v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_EDGE_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 275
    sget v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_GLOW_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 276
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 293
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 298
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 299
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 300
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 301
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 303
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 304
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 305
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 306
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    .line 308
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 309
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public onRelease2()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 280
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 282
    return-void
.end method

.method public setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowRecedeAnimationTrigger:Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;

    .line 503
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 151
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    .line 152
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mHeight:I

    .line 153
    return-void
.end method

.method public setTouchWiz(Z)V
    .locals 0
    .parameter "touchwiz"

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    .line 258
    return-void
.end method

.method public updatePullState()V
    .locals 4

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    .local v0, now:J
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 245
    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 246
    const/high16 v2, 0x4327

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    goto :goto_0
.end method
