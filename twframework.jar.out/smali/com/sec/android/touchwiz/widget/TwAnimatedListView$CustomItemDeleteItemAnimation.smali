.class Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomItemDeleteItemAnimation"
.end annotation


# instance fields
.field mDuration:J

.field mItemIndex:I

.field private mProgress:F

.field mStartTime:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2099
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    .line 2100
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 2101
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    .line 2102
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    .line 2103
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    .line 2104
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 3
    .parameter "curUpTime"

    .prologue
    .line 2085
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 2086
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 2073
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2074
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2075
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 2076
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 2077
    .local v6, save:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2078
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2079
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$700(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;->drawDeleteItemAnimation(Landroid/graphics/Canvas;ILandroid/view/View;Landroid/graphics/Rect;F)V

    .line 2081
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2082
    return-void
.end method

.method public isFinished()Z
    .locals 6

    .prologue
    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2090
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public start(JII)V
    .locals 2
    .parameter "startTime"
    .parameter "itemIndex"
    .parameter "duration"

    .prologue
    .line 2066
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    .line 2067
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    .line 2068
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    .line 2069
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 2070
    return-void
.end method
