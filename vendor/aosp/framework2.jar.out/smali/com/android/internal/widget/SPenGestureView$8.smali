.class Lcom/android/internal/widget/SPenGestureView$8;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$702(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1490
    :try_start_0
    const-string v13, "SPenGesture"

    const-string v14, "mSPenGestureCropDispatchThread run!!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1493
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1494
    .local v1, boundsOfPath:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1495
    .local v2, boundsOfSecondPath:Landroid/graphics/RectF;
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 1497
    .local v7, cropImgSaveHandler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3000(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1507
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 1508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3000(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 1512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1513
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1514
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1515
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1528
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, 0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, -0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, 0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, -0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sub-int/2addr v14, v15

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3802(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sub-int/2addr v14, v15

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3902(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1536
    const-wide/16 v13, 0x64

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-nez v13, :cond_6

    .line 1539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1542
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1543
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4602(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4702(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4802(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1547
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v14, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4902(Lcom/android/internal/widget/SPenGestureView;F)F

    .line 1548
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v14, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5002(Lcom/android/internal/widget/SPenGestureView;F)F

    .line 1549
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3002(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3602(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1551
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1552
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$802(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1553
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 1554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 1555
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5200(Lcom/android/internal/widget/SPenGestureView;)Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    .line 1556
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 1557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$702(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1673
    .end local v1           #boundsOfPath:Landroid/graphics/RectF;
    .end local v2           #boundsOfSecondPath:Landroid/graphics/RectF;
    .end local v7           #cropImgSaveHandler:Landroid/os/Handler;
    :goto_1
    return-void

    .line 1518
    .restart local v1       #boundsOfPath:Landroid/graphics/RectF;
    .restart local v2       #boundsOfSecondPath:Landroid/graphics/RectF;
    .restart local v7       #cropImgSaveHandler:Landroid/os/Handler;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1520
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3502(Lcom/android/internal/widget/SPenGestureView;I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1668
    .end local v1           #boundsOfPath:Landroid/graphics/RectF;
    .end local v2           #boundsOfSecondPath:Landroid/graphics/RectF;
    .end local v7           #cropImgSaveHandler:Landroid/os/Handler;
    :catch_0
    move-exception v9

    .line 1669
    .local v9, e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$7800(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1670
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1671
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    goto :goto_1

    .line 1559
    .end local v9           #e:Ljava/lang/InterruptedException;
    .restart local v1       #boundsOfPath:Landroid/graphics/RectF;
    .restart local v2       #boundsOfSecondPath:Landroid/graphics/RectF;
    .restart local v7       #cropImgSaveHandler:Landroid/os/Handler;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$5500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5302(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1560
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$5500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5602(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1562
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5300(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1563
    .local v6, canvasForCrop:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3000(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1567
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 1568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1570
    :cond_8
    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5802(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1574
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5800(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1575
    .local v3, canvasFinal:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v16

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1576
    .local v12, srcRectForCrop:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1577
    .local v8, dstRectForCrop:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5300(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v12, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1580
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1581
    .local v5, canvasForAnimationLine:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3000(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 1582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_b

    .line 1584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4900(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5000(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v14

    const/high16 v15, 0x4100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$6000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4900(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5000(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v14

    const/high16 v15, 0x4080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1592
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 1593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$6000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1599
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6202(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1600
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1601
    .local v4, canvasFinalForAnimation:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5300(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v12, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v12, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6602(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1609
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v10, v13, :cond_d

    .line 1610
    const/4 v11, 0x0

    .local v11, j:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v11, v13, :cond_c

    .line 1611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6900(Lcom/android/internal/widget/SPenGestureView;)[[I

    move-result-object v13

    aget-object v13, v13, v10

    const/4 v14, -0x1

    aput v14, v13, v11

    .line 1610
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1588
    .end local v4           #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4600(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$6000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4500(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4600(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1609
    .restart local v4       #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .restart local v10       #i:I
    .restart local v11       #j:I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1614
    .end local v11           #j:I
    :cond_d
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v10, v13, :cond_f

    .line 1615
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v11, v13, :cond_e

    .line 1616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$7000(Lcom/android/internal/widget/SPenGestureView;)[[I

    move-result-object v13

    aget-object v13, v13, v10

    const/4 v14, -0x1

    aput v14, v13, v11

    .line 1615
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1614
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1619
    .end local v11           #j:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1620
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4202(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4302(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4402(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4502(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4602(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4702(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4802(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v14, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4902(Lcom/android/internal/widget/SPenGestureView;F)F

    .line 1628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v14, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5002(Lcom/android/internal/widget/SPenGestureView;F)F

    .line 1629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3002(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3602(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5102(Lcom/android/internal/widget/SPenGestureView;I)I

    .line 1633
    new-instance v13, Lcom/android/internal/widget/SPenGestureView$8$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/widget/SPenGestureView$8$1;-><init>(Lcom/android/internal/widget/SPenGestureView$8;)V

    const-wide/16 v14, 0x64

    invoke-virtual {v7, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$8;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$7800(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1666
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
