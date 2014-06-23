.class Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3447
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3447
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3449
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 3450
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 3451
    .local v1, index:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3453
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 3454
    const/4 v0, 0x0

    .line 3455
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3456
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-wide v5, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 3458
    :cond_0
    if-eqz v0, :cond_1

    .line 3459
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3461
    if-eqz v2, :cond_1

    .line 3462
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3470
    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 3465
    .restart local v1       #index:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3466
    if-eqz v2, :cond_1

    .line 3467
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
