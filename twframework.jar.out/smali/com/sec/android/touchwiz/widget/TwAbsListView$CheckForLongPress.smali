.class Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3424
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3424
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3426
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 3427
    .local v5, motionPosition:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3428
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3429
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 3430
    .local v4, longPressPosition:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3432
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 3433
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v6, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 3434
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3436
    :cond_0
    if-eqz v1, :cond_2

    .line 3437
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3438
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3439
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3444
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    :cond_1
    :goto_0
    return-void

    .line 3441
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_0
.end method
