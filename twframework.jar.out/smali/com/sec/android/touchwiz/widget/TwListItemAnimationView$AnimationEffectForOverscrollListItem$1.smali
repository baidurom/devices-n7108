.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected mCurrOverscrollAmount:I

.field protected mMaxOverscrollAmount:I

.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

.field final synthetic val$this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 819
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->val$this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mMaxOverscrollAmount:I

    .line 822
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mCurrOverscrollAmount:I

    return-void
.end method


# virtual methods
.method public userOnApplyTransformation(F)V
    .locals 3
    .parameter "interpolatedTime"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mMaxOverscrollAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 826
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mCurrOverscrollAmount:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userOffsetAllChildTopAndBottom(I)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mCurrOverscrollAmount:I

    .line 828
    return-void
.end method

.method public userOnBeginAnimation()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollTransfer:Z

    .line 833
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mMaxOverscrollAmount:I

    .line 834
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mCurrOverscrollAmount:I

    .line 835
    return-void
.end method

.method public userOnCancelAnimation()V
    .locals 3

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mMaxOverscrollAmount:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    .line 846
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->mCurrOverscrollAmount:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mOverscrollTransferAmount:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userOffsetAllChildTopAndBottom(I)V

    .line 848
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->userOnEndAnimation()V

    .line 849
    return-void
.end method

.method public userOnEndAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRemoveAllChild()V

    .line 840
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsOverscrollTransfer:Z

    .line 841
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem$1;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->mIsThisAnimatingForOverscrollListItem:Z

    .line 842
    return-void
.end method
