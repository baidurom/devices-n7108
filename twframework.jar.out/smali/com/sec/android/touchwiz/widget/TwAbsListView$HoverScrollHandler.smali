.class Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 8564
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8564
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x4

    const v8, 0x3ecccccd

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 8566
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 8644
    :cond_0
    :goto_0
    return-void

    .line 8568
    :pswitch_0
    const/4 v1, 0x0

    .line 8570
    .local v1, offset:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5302(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 8571
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x3e8

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5402(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 8573
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 8576
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-le v4, v7, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ge v4, v9, :cond_2

    .line 8577
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 8585
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 8586
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, -0x1

    .line 8591
    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8595
    if-gez v1, :cond_6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 8598
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 8599
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8578
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-lt v4, v9, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 8579
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto :goto_1

    .line 8580
    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 8581
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_1

    .line 8583
    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_1

    .line 8588
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    mul-int/lit8 v1, v4, 0x1

    goto/16 :goto_2

    .line 8601
    :cond_6
    if-lez v1, :cond_8

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 8605
    :cond_7
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 8606
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8609
    :cond_8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v2

    .line 8610
    .local v2, overscrollMode:I
    if-eqz v2, :cond_9

    if-ne v2, v3, :cond_a

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    move v0, v3

    .line 8613
    .local v0, canOverscroll:Z
    :cond_a
    if-eqz v0, :cond_e

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 8614
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v7, :cond_f

    .line 8615
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 8616
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 8617
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 8626
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_d

    .line 8628
    :cond_c
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 8631
    :cond_d
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6302(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    .line 8634
    :cond_e
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8635
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v4, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6302(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    goto/16 :goto_0

    .line 8619
    :cond_f
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 8620
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 8621
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_b

    .line 8622
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_3

    .line 8566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
