.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userStartAlphaEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->val$size:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 14
    .parameter "animation"

    .prologue
    .line 1286
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsAlphaEffect:Z

    if-nez v11, :cond_a

    .line 1288
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mIsAlphaEffect:Z

    .line 1289
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userHideSelectedItems()V

    .line 1290
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 1291
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 1292
    .local v8, view:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 1293
    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 1290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1297
    .end local v8           #view:Landroid/view/View;
    :cond_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userAddViewBelow()V

    .line 1299
    const/4 v3, 0x1

    .line 1300
    .local v3, isEnd:Z
    const/4 v5, 0x0

    .line 1301
    .local v5, lastIndex:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildCount()I

    move-result v6

    .line 1302
    .local v6, size2:I
    const/4 v7, 0x0

    .line 1303
    .local v7, start:I
    const/4 v0, 0x0

    .line 1304
    .local v0, end:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_9

    .line 1305
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->val$size:I

    if-ge v1, v11, :cond_8

    .line 1306
    const/4 v2, 0x0

    .line 1307
    .local v2, isDeleteItem:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    array-length v11, v11

    if-ge v4, v11, :cond_2

    .line 1308
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mDeleteIndeces:[I

    aget v11, v11, v4

    if-ne v1, v11, :cond_4

    .line 1309
    const/4 v2, 0x1

    .line 1314
    :cond_2
    if-eqz v2, :cond_5

    .line 1304
    .end local v2           #isDeleteItem:Z
    .end local v4           #j:I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1307
    .restart local v2       #isDeleteItem:Z
    .restart local v4       #j:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1318
    :cond_5
    if-ge v5, v1, :cond_7

    .line 1319
    const/4 v3, 0x0

    .line 1320
    const/4 v7, 0x0

    .line 1321
    const/4 v0, 0x0

    .line 1323
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11, v5}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v9

    .line 1324
    .local v9, view1:Landroid/view/View;
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v11, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userGetChildViewAt(I)Landroid/view/View;

    move-result-object v10

    .line 1325
    .local v10, view2:Landroid/view/View;
    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    .line 1326
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v0, v11, v12

    .line 1328
    :cond_6
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    int-to-float v12, v7

    int-to-float v13, v0

    invoke-virtual {v11, v1, v12, v13}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userSetTransfer(IFF)V

    .line 1330
    .end local v9           #view1:Landroid/view/View;
    .end local v10           #view2:Landroid/view/View;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1331
    goto :goto_3

    .line 1332
    .end local v2           #isDeleteItem:Z
    .end local v4           #j:I
    :cond_8
    if-nez v3, :cond_3

    .line 1333
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    int-to-float v12, v7

    int-to-float v13, v0

    invoke-virtual {v11, v1, v12, v13}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userSetTransfer(IFF)V

    goto :goto_3

    .line 1338
    :cond_9
    if-eqz v3, :cond_b

    .line 1339
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userAfterAnimation()V

    .line 1344
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v3           #isEnd:Z
    .end local v5           #lastIndex:I
    .end local v6           #size2:I
    .end local v7           #start:I
    :cond_a
    :goto_4
    return-void

    .line 1341
    .restart local v0       #end:I
    .restart local v1       #i:I
    .restart local v3       #isEnd:Z
    .restart local v5       #lastIndex:I
    .restart local v6       #size2:I
    .restart local v7       #start:I
    :cond_b
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTransferHandler:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget v12, v12, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->mTimeIntervalForTransferEffect:I

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;->userStartAnimation(I)V

    goto :goto_4
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1349
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems$3;->this$1:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;->userOnBeginAnimationEffectForDeleteItems()V

    .line 1356
    :cond_0
    return-void
.end method
