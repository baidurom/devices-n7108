.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAnimationListener"
.end annotation


# static fields
.field private static final ROTATION_ANIMATION:I = 0x1

.field private static final TRANSLATION_ANIMATION:I = 0x2


# instance fields
.field animationType:I

.field isExpanding:Z

.field isLastAnimation:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field type:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZI)V
    .locals 2
    .parameter
    .parameter "thisView"
    .parameter "expanding"
    .parameter "isLastItemAnimation"
    .parameter "animType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2567
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2551
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->isLastAnimation:Z

    .line 2553
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->isExpanding:Z

    .line 2557
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->type:I

    .line 2564
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->animationType:I

    .line 2568
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->type:I

    .line 2569
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->view:Landroid/view/View;

    .line 2570
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->isExpanding:Z

    .line 2571
    iput-boolean p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->isLastAnimation:Z

    .line 2572
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->animationType:I

    .line 2573
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2578
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->isLastAnimation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2579
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->isExpanding:Z

    if-eqz v0, :cond_1

    .line 2580
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedExpansionAllAnimation()V

    .line 2581
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->checkAnimationBuffer()Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    .line 2588
    :cond_0
    :goto_0
    return-void

    .line 2583
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedCollapsingAllAnimation()V

    .line 2584
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->animateFooterAfterCollapseAll()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2593
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandAnimationListener;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2598
    return-void
.end method
