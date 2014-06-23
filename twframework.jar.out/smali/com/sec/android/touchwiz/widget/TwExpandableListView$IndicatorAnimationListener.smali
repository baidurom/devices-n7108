.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;
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
    name = "IndicatorAnimationListener"
.end annotation


# instance fields
.field isItemExpanding:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V
    .locals 1
    .parameter
    .parameter "isExpanding"

    .prologue
    .line 3230
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->isItemExpanding:Z

    .line 3231
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->isItemExpanding:Z

    .line 3232
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 3238
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->isItemExpanding:Z

    if-eqz v0, :cond_0

    .line 3239
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedExpansionAnimationItemIndex()V

    .line 3243
    :goto_0
    return-void

    .line 3241
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedCollapseAnimationItemIndex()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3249
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3254
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 3255
    return-void
.end method
