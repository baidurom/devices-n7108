.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userAfterAnimation()V

    .line 1635
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;->userOnEndAnimationEffectForAddItem()V

    .line 1638
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1641
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;->userOnBeginAnimationEffectForAddItem()V

    .line 1647
    :cond_0
    return-void
.end method
