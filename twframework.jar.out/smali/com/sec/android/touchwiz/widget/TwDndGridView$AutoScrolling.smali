.class Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;
.super Ljava/lang/Object;
.source "TwDndGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrolling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 1020
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$000(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$000(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 1022
    :cond_0
    const/4 v1, 0x0

    .line 1023
    .local v1, delta:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    #calls: Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkAutoDragBound(I)I
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$200(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I

    move-result v0

    .line 1025
    .local v0, currPos:I
    if-ne v0, v5, :cond_6

    .line 1026
    const/high16 v3, 0x4120

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 1031
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 1032
    const/4 v2, 0x0

    .line 1042
    .local v2, savedEnableBounce:Z
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v3, v1, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->trackMotionScroll(II)Z

    .line 1046
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 1047
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    #setter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$502(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I

    .line 1052
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$600(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$700(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$900(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->pointToPosition(II)I

    move-result v4

    #setter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$402(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I

    .line 1055
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$600(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$700(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$900(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    #calls: Lcom/sec/android/touchwiz/widget/TwDndGridView;->findMovedItemIndex(II)I
    invoke-static {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1100(Lcom/sec/android/touchwiz/widget/TwDndGridView;II)I

    move-result v4

    #setter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1002(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I

    .line 1060
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$500(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 1062
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    if-eq v3, v8, :cond_7

    .line 1063
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$500(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1000(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v6

    #calls: Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V
    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1200(Lcom/sec/android/touchwiz/widget/TwDndGridView;III)V

    .line 1064
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    .line 1066
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1067
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Lcom/sec/android/touchwiz/widget/TwDndController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    .line 1085
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    .line 1088
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v3, p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->post(Ljava/lang/Runnable;)Z

    .line 1091
    .end local v0           #currPos:I
    .end local v1           #delta:I
    .end local v2           #savedEnableBounce:Z
    :cond_5
    return-void

    .line 1027
    .restart local v0       #currPos:I
    .restart local v1       #delta:I
    :cond_6
    if-ne v0, v6, :cond_1

    .line 1028
    const/high16 v3, -0x3ee0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    goto/16 :goto_0

    .line 1071
    .restart local v2       #savedEnableBounce:Z
    :cond_7
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$500(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$600(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$700(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$900(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$800(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    #calls: Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkBlankArea(II)Z
    invoke-static {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1500(Lcom/sec/android/touchwiz/widget/TwDndGridView;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1076
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$402(Lcom/sec/android/touchwiz/widget/TwDndGridView;I)I

    .line 1078
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$500(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v6

    #calls: Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V
    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1200(Lcom/sec/android/touchwiz/widget/TwDndGridView;III)V

    .line 1079
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    .line 1081
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1082
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)Lcom/sec/android/touchwiz/widget/TwDndController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$1300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrolling;->this$0:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    goto/16 :goto_1
.end method
