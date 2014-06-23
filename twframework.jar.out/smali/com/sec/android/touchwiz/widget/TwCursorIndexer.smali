.class public Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
.super Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.source "TwCursorIndexer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mColumnIndex:I

.field protected mCursor:Landroid/database/Cursor;

.field protected mSavedCursorPos:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "indexCharacters"

    .prologue
    .line 80
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    const-string v0, "TwCursorIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->debug:Z

    .line 81
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 82
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 1
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "indexCharacters"
    .parameter "aLangIndex"

    .prologue
    .line 104
    invoke-direct {p0, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;-><init>([Ljava/lang/String;I)V

    .line 46
    const-string v0, "TwCursorIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->debug:Z

    .line 105
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 106
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    .line 107
    return-void
.end method


# virtual methods
.method protected getItemAt(I)Ljava/lang/String;
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "TwCursorIndexer"

    const-string v3, "TwCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-object v1

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "TwCursorIndexer"

    const-string v1, "TwCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBeginTransaction()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    .line 142
    const-string v0, "TwCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwCursorIndexer.onBeginTransaction() : Current cursor pos to save is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method protected onEndTransaction()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "TwCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwCursorIndexer.onEndTransaction() : Saved cursor pos to restore  is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 149
    return-void
.end method
