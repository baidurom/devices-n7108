.class public Lcom/sec/android/touchwiz/app/TwExpandableListActivity;
.super Landroid/app/Activity;
.source "TwExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    const v0, 0x2030012

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->ensureList()V

    .line 263
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 222
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 224
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a TwExpandableListView whose id attribute is \'R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V

    .line 236
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V

    .line 238
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 241
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mFinishedStart:Z

    .line 242
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 177
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 193
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 199
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->ensureList()V

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->ensureList()V

    .line 250
    iput-object p1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 251
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 252
    monitor-exit p0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectedGroup(I)V

    .line 326
    return-void
.end method
