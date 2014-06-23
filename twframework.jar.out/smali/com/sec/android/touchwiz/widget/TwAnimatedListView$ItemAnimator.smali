.class public Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;
.super Ljava/lang/Object;
.source "TwAnimatedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempItemList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;


# direct methods
.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V
    .locals 1
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    .line 625
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 622
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    .line 626
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    .line 627
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    .line 629
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 0
    .parameter "indent"

    .prologue
    .line 950
    return-void
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 938
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 939
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 941
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    .line 947
    :cond_1
    return-void
.end method

.method public getDeleteItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getItemAnimationKey(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public getRetainItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public itemAnimationCount()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    return-void
.end method

.method public putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 672
    return-void
.end method

.method public putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 660
    return-void
.end method

.method public removeAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 759
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 760
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 761
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 762
    .local v2, aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 763
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_1

    .line 760
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 765
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 766
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 767
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 768
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 772
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 773
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 774
    .restart local v2       #aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 775
    .restart local v0       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_4

    .line 772
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 777
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 778
    .restart local v1       #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 779
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 780
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_3

    .line 784
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    :cond_5
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 785
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 786
    .restart local v2       #aniKey:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 787
    .restart local v0       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_7

    .line 784
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v1, v0

    .line 789
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 790
    .restart local v1       #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 791
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 792
    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_5

    .line 797
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    .end local v2           #aniKey:I
    .end local v3           #i:I
    :cond_8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 798
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 799
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 800
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_9

    .line 801
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 802
    :cond_9
    return-void
.end method

.method public removeDeleteItemAnimation(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 740
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 742
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 743
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 744
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 745
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 746
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 750
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 751
    return-void
.end method

.method public removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 722
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 723
    .local v1, i:I
    if-ltz v1, :cond_1

    .line 724
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 725
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 726
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 727
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 728
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 731
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 735
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 736
    :cond_2
    return-void
.end method

.method public removeItemAnimation(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 706
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 708
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 709
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 710
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 711
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 712
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 716
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 717
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 718
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 719
    :cond_1
    return-void
.end method

.method public removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 682
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 683
    .local v1, i:I
    if-ltz v1, :cond_1

    .line 684
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 685
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 686
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 687
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 688
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 691
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 693
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 694
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 695
    :cond_2
    return-void
.end method

.method public removeRetainItemAnimation(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 822
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 824
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 825
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 826
    .local v1, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 827
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 828
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 832
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v1           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 833
    return-void
.end method

.method public removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 806
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 807
    .local v1, i:I
    if-ltz v1, :cond_1

    .line 808
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 809
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 810
    .local v0, ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 811
    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 812
    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 815
    .end local v0           #ani:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 817
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 818
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 819
    :cond_2
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 855
    .local v3, curTime:J
    const/4 v1, 0x1

    .line 856
    .local v1, allFinished:Z
    const/4 v2, 0x0

    .line 857
    .local v2, animationCount:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 858
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 859
    .local v10, size:I
    add-int/2addr v2, v10

    .line 860
    add-int/lit8 v6, v10, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 861
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 862
    .local v9, position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 864
    .local v8, ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 865
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 866
    .local v5, finished:Z
    and-int/2addr v1, v5

    .line 867
    if-eqz v5, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_0

    .line 868
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 871
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 872
    add-int/2addr v2, v10

    .line 873
    add-int/lit8 v6, v10, -0x1

    :goto_1
    if-ltz v6, :cond_3

    .line 874
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 875
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 877
    .restart local v8       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 878
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 879
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 880
    if-eqz v5, :cond_2

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_2

    .line 881
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 884
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_3
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 885
    add-int/2addr v2, v10

    .line 886
    add-int/lit8 v6, v10, -0x1

    :goto_2
    if-ltz v6, :cond_5

    .line 887
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 888
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 890
    .restart local v8       #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 891
    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 892
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 893
    if-eqz v5, :cond_4

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_4

    .line 894
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 898
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 899
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    .line 900
    .local v0, aToDelete:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 901
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 898
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_3

    .line 904
    .end local v0           #aToDelete:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    :cond_6
    if-nez v2, :cond_7

    .line 905
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 906
    :cond_7
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 908
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->invalidate()V

    .line 909
    if-nez v1, :cond_9

    .line 910
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v11, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->post(Ljava/lang/Runnable;)Z

    .line 921
    :cond_8
    :goto_4
    return-void

    .line 912
    :cond_9
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 913
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v12, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v11, v12}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 914
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 915
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 917
    :cond_a
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 918
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    goto :goto_4
.end method

.method public start()V
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 842
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 843
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->run()V

    .line 844
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStart()V

    .line 846
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z

    .line 925
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    .line 930
    :cond_1
    return-void
.end method
