.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;
.super Landroid/view/animation/Animation;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SweepAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field transX:F


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1313
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->transX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 1331
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1333
    .local v0, matrix:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->transX:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1335
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 1321
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1323
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->setDuration(J)V

    .line 1324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->setFillAfter(Z)V

    .line 1325
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1327
    return-void
.end method

.method public setTranslate(F)V
    .locals 0
    .parameter "tx"

    .prologue
    .line 1316
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;->transX:F

    .line 1317
    return-void
.end method
