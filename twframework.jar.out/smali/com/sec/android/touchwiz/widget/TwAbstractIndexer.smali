.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;,
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private mCurrentLangEndIndex:I

.field private mCurrentLangStartIndex:I

.field private mCurrentLangStartPosition:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field protected mLangAlphabetArray:[Ljava/lang/String;

.field private mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "indexCharacters"

    .prologue
    const/4 v1, -0x1

    .line 137
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 64
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 68
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 219
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 220
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 221
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 222
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 141
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2
    .parameter "indexCharacters"
    .parameter "aLangIndex"

    .prologue
    const/4 v1, -0x1

    .line 149
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 64
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 68
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 219
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 220
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 221
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 222
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 150
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "word"
    .parameter "indexString"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLang()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method public getCurrentLangEndIndex()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "base"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 22
    .parameter "base"
    .parameter "foundOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v19

    if-nez v19, :cond_0

    .line 348
    const/4 v15, 0x0

    .line 484
    :goto_0
    return-object v15

    .line 350
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v7

    .line 352
    .local v7, itemCount:I
    if-nez v7, :cond_1

    .line 354
    const-string v19, "TwAbstractIndexer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getIndexInfo() return null: mData.size() =="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v15, 0x0

    goto :goto_0

    .line 359
    :cond_1
    if-nez p1, :cond_3

    const-string v2, ""

    .line 360
    .local v2, baseString:Ljava/lang/String;
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v15, retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 396
    const/16 v18, 0x0

    .local v18, sectionIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 397
    const/16 v17, 0x0

    .line 398
    .local v17, sectionFound:Z
    const/4 v13, -0x1

    .line 399
    .local v13, posFound:I
    const/4 v12, -0x1

    .line 400
    .local v12, lastposFound:I
    const/4 v11, 0x0

    .line 410
    .local v11, lastSectionFound:Z
    const/4 v14, 0x0

    .line 412
    .local v14, pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 416
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v9

    .line 417
    .local v9, lLangInd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v10, v19, v9

    .line 418
    .local v10, lOtherLangString:Ljava/lang/String;
    const/4 v8, 0x0

    .line 419
    .local v8, lLangChars:I
    const/4 v5, 0x1

    .line 421
    .local v5, i:I
    :goto_3
    if-nez v17, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 423
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 424
    .local v16, searchString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v14

    .line 425
    iget v13, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 426
    iget-boolean v0, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v17, v0

    .line 427
    add-int/lit8 v8, v8, 0x1

    .line 429
    goto :goto_3

    .end local v2           #baseString:Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #lLangChars:I
    .end local v9           #lLangInd:I
    .end local v10           #lOtherLangString:Ljava/lang/String;
    .end local v11           #lastSectionFound:Z
    .end local v12           #lastposFound:I
    .end local v13           #posFound:I
    .end local v14           #pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v15           #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v16           #searchString:Ljava/lang/String;
    .end local v17           #sectionFound:Z
    .end local v18           #sectionIndex:I
    :cond_3
    move-object/from16 v2, p1

    .line 359
    goto/16 :goto_1

    .line 430
    .restart local v2       #baseString:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v8       #lLangChars:I
    .restart local v9       #lLangInd:I
    .restart local v10       #lOtherLangString:Ljava/lang/String;
    .restart local v11       #lastSectionFound:Z
    .restart local v12       #lastposFound:I
    .restart local v13       #posFound:I
    .restart local v14       #pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .restart local v15       #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .restart local v17       #sectionFound:Z
    .restart local v18       #sectionIndex:I
    :cond_4
    const/4 v11, 0x0

    .line 431
    :goto_4
    if-nez v11, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 435
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v20, v20, v5

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 436
    .restart local v16       #searchString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v14

    .line 437
    iget v12, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 438
    iget-boolean v11, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 439
    add-int/lit8 v8, v8, 0x1

    .line 440
    add-int/lit8 v5, v5, 0x1

    .line 441
    goto :goto_4

    .line 446
    .end local v5           #i:I
    .end local v8           #lLangChars:I
    .end local v9           #lLangInd:I
    .end local v10           #lOtherLangString:Ljava/lang/String;
    .end local v16           #searchString:Ljava/lang/String;
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 447
    .restart local v16       #searchString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v14

    .line 448
    iget v13, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 449
    iget-boolean v0, v14, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v17, v0

    .line 452
    .end local v16           #searchString:Ljava/lang/String;
    :cond_6
    if-gez v13, :cond_7

    .line 453
    neg-int v13, v13

    .line 457
    :cond_7
    if-eqz p2, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_b

    .line 459
    :cond_8
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 460
    .local v6, indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 462
    iput v13, v6, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v3

    .line 464
    .local v3, currentLang:I
    if-eqz v11, :cond_9

    if-nez v3, :cond_9

    .line 466
    iput v12, v6, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 467
    iput v13, v6, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mLastPosition:I

    .line 469
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 473
    iget v0, v6, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 476
    :cond_a
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v3           #currentLang:I
    .end local v6           #indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 480
    .end local v11           #lastSectionFound:Z
    .end local v12           #lastposFound:I
    .end local v13           #posFound:I
    .end local v14           #pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v17           #sectionFound:Z
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 481
    .end local v18           #sectionIndex:I
    :catch_0
    move-exception v4

    .line 482
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 17
    .parameter "base"
    .parameter "foundOnly"
    .parameter "aDepth"
    .parameter "aIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v14

    if-nez v14, :cond_0

    .line 501
    const/4 v11, 0x0

    .line 550
    :goto_0
    return-object v11

    .line 503
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v6

    .line 505
    .local v6, itemCount:I
    if-nez v6, :cond_1

    .line 507
    const-string v14, "TwAbstractIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getIndexInfo() return null: mData.size() =="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v11, 0x0

    goto :goto_0

    .line 513
    :cond_1
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ge v0, v14, :cond_2

    .line 514
    const/4 v11, 0x0

    goto :goto_0

    .line 516
    :cond_2
    if-nez p1, :cond_6

    const-string v2, ""

    .line 517
    .local v2, baseString:Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v11, retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 521
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v7

    .line 522
    .local v7, lLangInd:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v8, v14, v7

    .line 523
    .local v8, lOtherLangString:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v4, v14, :cond_7

    .line 524
    const/4 v13, 0x0

    .line 525
    .local v13, sectionFound:Z
    const/4 v9, -0x1

    .line 527
    .local v9, posFound:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 528
    .local v12, searchString:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v10

    .line 529
    .local v10, pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    iget v9, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 530
    iget-boolean v13, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 532
    if-gez v9, :cond_3

    .line 533
    neg-int v9, v9

    .line 536
    :cond_3
    if-eqz p2, :cond_4

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 538
    :cond_4
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 539
    .local v5, indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    iput-boolean v13, v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 540
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 541
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 542
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v5           #indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #baseString:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #lLangInd:I
    .end local v8           #lOtherLangString:Ljava/lang/String;
    .end local v9           #posFound:I
    .end local v10           #pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v11           #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v12           #searchString:Ljava/lang/String;
    .end local v13           #sectionFound:Z
    :cond_6
    move-object/from16 v2, p1

    .line 516
    goto :goto_1

    .line 546
    .restart local v2       #baseString:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v7       #lLangInd:I
    .restart local v8       #lOtherLangString:Ljava/lang/String;
    .restart local v11       #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 547
    .end local v4           #i:I
    .end local v7           #lLangInd:I
    .end local v8           #lOtherLangString:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 548
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 3
    .parameter "aIndex"

    .prologue
    .line 269
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 271
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 272
    .local v1, lIndexVal:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 278
    .end local v1           #lIndexVal:Ljava/lang/Integer;
    :goto_0
    return v2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .locals 23
    .parameter "searchString"

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 583
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v3

    .line 585
    .local v3, count:I
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 586
    :cond_0
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    .line 747
    :goto_0
    return-object v21

    .line 588
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_3

    .line 590
    :cond_2
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_0

    .line 593
    :cond_3
    const/16 v19, 0x0

    .line 594
    .local v19, start:I
    move v6, v3

    .line 596
    .local v6, end:I
    const/4 v9, 0x0

    .line 597
    .local v9, matchFound:Z
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 598
    .local v8, letter:C
    move-object/from16 v20, p1

    .line 599
    .local v20, targetLetter:Ljava/lang/String;
    move v7, v8

    .line 601
    .local v7, key:I
    const/high16 v21, -0x8000

    const/high16 v22, -0x8000

    move/from16 v0, v22

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .local v15, pos:I
    move/from16 v0, v21

    if-eq v0, v15, :cond_a

    .line 635
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 661
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .line 662
    .local v10, mflag:Z
    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v3, v0, :cond_5

    .line 663
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v11

    .line 664
    .local v11, name_0:Ljava/lang/String;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    .line 667
    .local v12, name_1:Ljava/lang/String;
    if-eqz v11, :cond_c

    if-eqz v12, :cond_c

    .line 668
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 669
    .local v5, diff:I
    if-lez v5, :cond_5

    .line 670
    const/4 v10, 0x1

    .line 678
    .end local v5           #diff:I
    .end local v11           #name_0:Ljava/lang/String;
    .end local v12           #name_1:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int v21, v6, v19

    div-int/lit8 v15, v21, 0x2

    .line 679
    :goto_3
    if-ge v15, v6, :cond_7

    .line 681
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 682
    .local v4, curName:Ljava/lang/String;
    if-eqz v4, :cond_6

    const-string v21, ""

    move-object/from16 v0, v21

    if-ne v4, v0, :cond_e

    .line 683
    :cond_6
    if-nez v15, :cond_d

    .line 737
    .end local v4           #curName:Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 738
    invoke-virtual {v2, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 740
    :cond_8
    if-ge v15, v3, :cond_9

    .line 741
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 743
    .restart local v4       #curName:Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 747
    .end local v4           #curName:Ljava/lang/String;
    :cond_9
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v15, v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    goto/16 :goto_0

    .line 639
    .end local v10           #mflag:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 641
    .local v18, sectionIndex:I
    if-lez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-le v7, v0, :cond_b

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    .line 643
    .local v16, prevLetter:I
    const/high16 v21, -0x8000

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v17

    .line 644
    .local v17, prevLetterPos:I
    const/high16 v21, -0x8000

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 645
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 651
    .end local v16           #prevLetter:I
    .end local v17           #prevLetterPos:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_4

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 653
    .local v13, nextLetter:I
    const/high16 v21, -0x8000

    move/from16 v0, v21

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 654
    .local v14, nextLetterPos:I
    const/high16 v21, -0x8000

    move/from16 v0, v21

    if-eq v14, v0, :cond_4

    .line 655
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_1

    .line 671
    .end local v13           #nextLetter:I
    .end local v14           #nextLetterPos:I
    .end local v18           #sectionIndex:I
    .restart local v10       #mflag:Z
    .restart local v11       #name_0:Ljava/lang/String;
    .restart local v12       #name_1:Ljava/lang/String;
    :cond_c
    if-eqz v11, :cond_5

    if-nez v12, :cond_5

    .line 672
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 686
    .end local v11           #name_0:Ljava/lang/String;
    .end local v12           #name_1:Ljava/lang/String;
    .restart local v4       #curName:Ljava/lang/String;
    :cond_d
    add-int/lit8 v15, v15, -0x1

    .line 687
    goto/16 :goto_3

    .line 691
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 693
    .restart local v5       #diff:I
    if-eqz v5, :cond_13

    .line 705
    if-gez v5, :cond_10

    .line 706
    add-int/lit8 v19, v15, 0x1

    .line 708
    if-eqz v10, :cond_f

    if-eqz v15, :cond_7

    .line 712
    :cond_f
    move/from16 v0, v19

    if-lt v0, v3, :cond_12

    .line 713
    move v15, v3

    .line 714
    goto/16 :goto_4

    .line 718
    :cond_10
    if-eqz v10, :cond_11

    if-nez v15, :cond_11

    .line 719
    const/4 v15, 0x1

    .line 720
    goto/16 :goto_4

    .line 723
    :cond_11
    move v6, v15

    .line 735
    :cond_12
    :goto_5
    add-int v21, v19, v6

    div-int/lit8 v15, v21, 0x2

    .line 736
    goto/16 :goto_3

    .line 727
    :cond_13
    move/from16 v0, v19

    if-eq v0, v15, :cond_7

    .line 732
    move v6, v15

    goto :goto_5
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "alphabet"

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 287
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    .line 289
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 296
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    .line 297
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 298
    return-void
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .locals 2

    .prologue
    .line 826
    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onBeginTransaction is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 778
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 779
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 785
    return-void
.end method

.method protected onEndTransaction()V
    .locals 2

    .prologue
    .line 830
    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onEndTransaction  is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 792
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 793
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 794
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 795
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 814
    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 762
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 765
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 766
    const/4 v0, 0x1

    .line 768
    :cond_1
    return v0
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 8
    .parameter "aLangIndex"

    .prologue
    const/4 v7, 0x0

    .line 171
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 173
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, lS:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 175
    if-eq v0, p1, :cond_1

    .line 186
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 191
    .local v2, lFixedChar:C
    if-nez v0, :cond_0

    .line 192
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    .end local v2           #lFixedChar:C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .restart local v2       #lFixedChar:C
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 200
    .end local v2           #lFixedChar:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 202
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 208
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    goto :goto_1

    .line 211
    .end local v1           #j:I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 823
    return-void
.end method
