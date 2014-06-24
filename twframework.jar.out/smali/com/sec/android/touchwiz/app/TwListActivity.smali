.class public Lcom/sec/android/touchwiz/app/TwListActivity;
.super Landroid/app/Activity;
.source "TwListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mHandler:Landroid/os/Handler;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mFinishedStart:Z

    .line 192
    new-instance v0, Lcom/sec/android/touchwiz/app/TwListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/app/TwListActivity$1;-><init>(Lcom/sec/android/touchwiz/app/TwListActivity;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 318
    new-instance v0, Lcom/sec/android/touchwiz/app/TwListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/app/TwListActivity$2;-><init>(Lcom/sec/android/touchwiz/app/TwListActivity;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const v0, 0x1090091

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/app/TwListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwListActivity;->ensureList()V

    .line 300
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 242
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView;

    iput-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 244
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 253
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mFinishedStart:Z

    .line 258
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 231
    return-void
.end method

.method protected onListItemClick(Lcom/sec/android/touchwiz/widget/TwListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 210
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwListActivity;->ensureList()V

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwListActivity;->ensureList()V

    .line 266
    iput-object p1, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 267
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    monitor-exit p0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 279
    return-void
.end method
