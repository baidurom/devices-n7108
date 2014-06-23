.class final Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;
.super Ljava/lang/Object;
.source "TwAdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->access$000(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 600
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 601
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 602
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 605
    .end local v0           #v:Landroid/view/View;
    :cond_0
    return-void
.end method
