.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromYDeltaTransfer:F

.field protected mIndex:I

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveTransfer:F

.field protected mPosition:I

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 728
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 719
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 720
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 721
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 723
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 724
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 725
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 726
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 729
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 730
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 732
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 733
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 734
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;IIZLandroid/view/View;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 744
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 719
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 720
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 723
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 724
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 725
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 726
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 745
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    .line 746
    return-void
.end method


# virtual methods
.method public userCalculateOffsetTransfer(F)V
    .locals 3
    .parameter "interpolatedTime"

    .prologue
    .line 787
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 789
    .local v0, moveTransfer:I
    :goto_0
    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->userOffsetChildTopAndBottom(I)V

    .line 790
    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 791
    return-void

    .line 787
    .end local v0           #moveTransfer:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userGetIndex()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    return v0
.end method

.method public userGetPosition()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    return v0
.end method

.method public userIsNewChildView()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    return v0
.end method

.method public userOffsetChildTopAndBottom(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 778
    return-void
.end method

.method public userRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 751
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 752
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 753
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mMoveTransfer:F

    .line 755
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->removeViewInLayout(Landroid/view/View;)V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 759
    :cond_0
    return-void
.end method

.method public userSetChildView(IIZLandroid/view/View;)V
    .locals 0
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    .line 762
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIndex:I

    .line 763
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mPosition:I

    .line 764
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 765
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 766
    return-void
.end method

.method public userSetTransfer(FF)V
    .locals 1
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mIsTransfer:Z

    .line 782
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 783
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 784
    return-void
.end method
