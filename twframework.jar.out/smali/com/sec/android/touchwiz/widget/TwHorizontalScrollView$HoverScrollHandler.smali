.class Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 2126
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2126
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const v8, 0x3ecccccd

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 2129
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2131
    :pswitch_0
    const/4 v1, 0x0

    .line 2132
    .local v1, offset:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v3

    .line 2134
    .local v3, range:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$202(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I

    .line 2135
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$302(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I

    .line 2137
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollStartTime:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollTimeInterval:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2140
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-le v5, v9, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-ge v5, v10, :cond_1

    .line 2141
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I

    .line 2149
    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 2150
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    .line 2155
    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2159
    if-gez v1, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-lez v5, :cond_5

    .line 2160
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v5, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 2161
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2142
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    .line 2143
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I

    goto :goto_1

    .line 2144
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 2145
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I

    goto :goto_1

    .line 2147
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;I)I

    goto/16 :goto_1

    .line 2152
    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto :goto_2

    .line 2162
    :cond_5
    if-lez v1, :cond_6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 2163
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v5, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 2164
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2167
    :cond_6
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getOverScrollMode()I

    move-result v2

    .line 2168
    .local v2, overscrollMode:I
    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_8

    if-lez v3, :cond_8

    :cond_7
    move v0, v4

    .line 2171
    .local v0, canOverscroll:Z
    :cond_8
    if-eqz v0, :cond_c

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2172
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_d

    .line 2173
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 2174
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2175
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 2184
    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2186
    :cond_a
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 2188
    :cond_b
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1402(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Z)Z

    .line 2191
    :cond_c
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2192
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1402(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Z)Z

    goto/16 :goto_0

    .line 2177
    :cond_d
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 2178
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 2179
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2180
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_3

    .line 2129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
