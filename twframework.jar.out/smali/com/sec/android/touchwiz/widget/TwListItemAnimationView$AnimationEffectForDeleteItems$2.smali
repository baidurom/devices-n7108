.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;)V
    .locals 0
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userOnBeginProgressPopup()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mStepForDeleteItem:I

    .line 1246
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRunningAnimationEffectForDeleteItems(Landroid/graphics/Canvas;)V

    .line 1248
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;->userOnBeginAnimationEffectForDeleteItems()V

    .line 1252
    :cond_0
    return-void
.end method

.method public userOnEndProgressPopup()V
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$2;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userAfterAnimation()V

    .line 1256
    return-void
.end method
