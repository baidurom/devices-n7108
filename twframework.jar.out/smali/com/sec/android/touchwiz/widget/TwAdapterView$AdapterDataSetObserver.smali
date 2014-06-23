.class Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 792
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 841
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 842
    return-void
.end method

.method public onChanged()V
    .locals 3

    .prologue
    .line 798
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 799
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 800
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 802
    const-string v0, "TwAdapterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwAdapterView AdapterDataSetObserver onChanged ItemCount before onRestoreInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->access$000(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/os/Parcelable;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 812
    :goto_0
    const-string v0, "TwAdapterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwAdapterView AdapterDataSetObserver onChanged ItemCount after onRestoreInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkFocus()V

    .line 814
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 815
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 819
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 821
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->access$100(Lcom/sec/android/touchwiz/widget/TwAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 829
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 830
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 831
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput-wide v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 832
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 833
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput-wide v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 834
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 836
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkFocus()V

    .line 837
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 838
    return-void
.end method
