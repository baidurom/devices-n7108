.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NDepthScroll"
.end annotation


# instance fields
.field private mBaseIndexPath:Ljava/lang/String;

.field private mBgRect:Landroid/graphics/Rect;

.field private mDotHeightRatio:F

.field private mDotShownPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDrawingPhase:Z

.field private mIndexHeight:I

.field private mIndexLangPositionMap:Ljava/util/HashMap;
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

.field private mIndexLangSkipMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexSkipLevel:I

.field private mItemIntervalY:I

.field private mMyDepth:I

.field private mPositionChildScroll:F

.field private mScrollHeight:I

.field private mSelectedIndex:I

.field private mSelectedIndexFirstDepth:I

.field private mSelectedPosX:F

.field private mSelectedPosY:F

.field private mSelectedString:Ljava/lang/String;

.field private mSkipDensity:I

.field private mStartPosY:F

.field private mSubscrollIndexInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/String;Ljava/util/ArrayList;FILandroid/graphics/Rect;I)V
    .locals 3
    .parameter
    .parameter "indexPath"
    .parameter
    .parameter "posY"
    .parameter "intervalY"
    .parameter "bound"
    .parameter "myDepth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;FI",
            "Landroid/graphics/Rect;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1383
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 1384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    .line 1319
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1321
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1323
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1325
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 1335
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDrawingPhase:Z

    .line 1361
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    .line 1363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    .line 1366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotShownPos:Ljava/util/ArrayList;

    .line 1385
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    .line 1386
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1391
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-ge p5, v2, :cond_1

    .line 1396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NDepthScroll( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .end local p2
    :cond_2
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    .line 1399
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    .line 1400
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1401
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_3

    .line 1402
    const/4 p4, 0x0

    .line 1404
    :cond_3
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1405
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mStartPosY:F

    .line 1406
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mStartPosY:F

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandlePadding:I
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mStartPosY:F

    .line 1407
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1410
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    .line 1411
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1412
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1413
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1414
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1417
    return-void
.end method

.method private UpdateSkipLevel()V
    .locals 18

    .prologue
    .line 1421
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1424
    .local v9, localRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v7, v14, -0x1

    .line 1425
    .local v7, lFixedCharsLen:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v6, v14, v7

    .line 1426
    .local v6, lFixedChars:I
    move v10, v6

    .line 1427
    .local v10, maxSkipDensity:I
    add-int/lit8 v13, v6, 0x1

    .line 1428
    .local v13, skipLevel:I
    move v4, v6

    .line 1429
    .local v4, indexLengthOrigin:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v15, v15

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mAnimationStartIndex:F
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1302(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;F)F

    move-result v5

    .line 1430
    .local v5, itemIntervalY:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 1431
    .local v3, fontMtx:Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v15, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1502(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 1433
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    if-nez v14, :cond_2

    .line 1521
    :cond_0
    :goto_1
    return-void

    .line 1424
    .end local v3           #fontMtx:Landroid/graphics/Paint$FontMetrics;
    .end local v4           #indexLengthOrigin:I
    .end local v5           #itemIntervalY:F
    .end local v6           #lFixedChars:I
    .end local v7           #lFixedCharsLen:I
    .end local v10           #maxSkipDensity:I
    .end local v13           #skipLevel:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1448
    .restart local v3       #fontMtx:Landroid/graphics/Paint$FontMetrics;
    .restart local v4       #indexLengthOrigin:I
    .restart local v5       #itemIntervalY:F
    .restart local v6       #lFixedChars:I
    .restart local v7       #lFixedCharsLen:I
    .restart local v10       #maxSkipDensity:I
    .restart local v13       #skipLevel:I
    :cond_2
    const-string v14, "TwLangIndexScrollView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateSkipLevel and mItemIntervalY size mItem before --"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    add-int/lit8 v15, v7, -0x1

    int-to-float v15, v15

    mul-float/2addr v15, v5

    iget v0, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    sub-int v8, v14, v15

    .line 1450
    .local v8, lSkipScrollHeight:I
    const/4 v12, 0x1

    .local v12, skipDensity:I
    :goto_2
    if-gt v12, v10, :cond_d

    .line 1451
    move v4, v6

    .line 1452
    add-int/lit8 v13, v10, 0x1

    .line 1453
    :goto_3
    const/4 v14, 0x2

    if-le v13, v14, :cond_c

    .line 1455
    add-int v14, v13, v12

    add-int/lit8 v14, v14, -0x1

    div-int v1, v4, v14

    .line 1456
    .local v1, charNum:I
    add-int/lit8 v14, v13, -0x1

    mul-int/2addr v1, v14

    .line 1458
    add-int v14, v13, v12

    add-int/lit8 v14, v14, -0x1

    rem-int v11, v4, v14

    .line 1459
    .local v11, remain:I
    if-eqz v11, :cond_4

    .line 1460
    add-int/lit8 v14, v13, -0x1

    if-ge v14, v11, :cond_3

    move v11, v13

    .end local v11           #remain:I
    :cond_3
    add-int/2addr v1, v11

    .line 1464
    :cond_4
    add-int/lit8 v14, v13, -0x1

    add-int/2addr v14, v12

    div-int v14, v4, v14

    int-to-float v2, v14

    .line 1465
    .local v2, dotNum:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    float-to-int v15, v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1502(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 1467
    int-to-float v14, v1

    mul-float/2addr v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v15, v2

    mul-float/2addr v15, v5

    add-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v9, Landroid/graphics/Rect;->bottom:I

    .line 1469
    add-int/lit8 v14, v13, -0x1

    add-int/2addr v14, v12

    rem-int v14, v6, v14

    add-int/lit8 v15, v13, -0x1

    if-lt v14, v15, :cond_5

    .line 1470
    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    add-float/2addr v14, v5

    float-to-int v14, v14

    iput v14, v9, Landroid/graphics/Rect;->bottom:I

    .line 1473
    :cond_5
    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    iget v15, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v15, v15

    add-int/2addr v15, v8

    if-ge v14, v15, :cond_b

    .line 1474
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1475
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    float-to-int v15, v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1502(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 1477
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v14, :cond_0

    .line 1481
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_6

    .line 1482
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v15, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1502(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 1484
    add-int/lit8 v14, v10, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1487
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 1488
    :cond_7
    iget v14, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v14, v14

    add-int/2addr v14, v8

    div-int/2addr v14, v6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1499
    :goto_4
    const-string v14, "TwLangIndexScrollView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateSkipLevel and mItemIntervalY size mItem after --"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 1505
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget v15, v15, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    div-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v15, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1602(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)Z

    .line 1509
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v14, :cond_0

    .line 1511
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateCharNum()V

    goto/16 :goto_1

    .line 1490
    :cond_9
    add-int/lit8 v14, v6, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v16, v0

    add-int v15, v15, v16

    rem-int/2addr v14, v15

    add-int/lit8 v15, v13, -0x1

    if-lt v14, v15, :cond_a

    .line 1492
    iget v14, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v14, v14

    add-int/2addr v14, v8

    int-to-float v14, v14

    add-int/lit8 v15, v1, 0x1

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    div-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    goto/16 :goto_4

    .line 1496
    :cond_a
    iget v14, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v14, v14

    add-int/2addr v14, v8

    int-to-float v14, v14

    int-to-float v15, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mDotNum:I
    invoke-static/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    div-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    goto/16 :goto_4

    .line 1515
    :cond_b
    add-int/lit8 v13, v13, -0x1

    .line 1516
    goto/16 :goto_3

    .line 1450
    .end local v1           #charNum:I
    .end local v2           #dotNum:F
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1519
    :cond_d
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1520
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    goto/16 :goto_1
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1293
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getNearestIndex(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1293
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1293
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1293
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->UpdateSkipLevel()V

    return-void
.end method

.method private getCountOfSameIndexValue(I)I
    .locals 5
    .parameter "aPosition"

    .prologue
    .line 1941
    const/4 v1, 0x0

    .line 1942
    .local v1, lCount:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1943
    .local v3, lkeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1944
    .local v2, lKeyValue:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1946
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1949
    .end local v2           #lKeyValue:Ljava/lang/Integer;
    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x1

    .end local v1           #lCount:I
    :cond_2
    return v1
.end method

.method private getIndexKeyForPosition(I)I
    .locals 5
    .parameter "aPosition"

    .prologue
    .line 1927
    const/4 v1, -0x1

    .line 1928
    .local v1, lIndex:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1929
    .local v3, lkeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1930
    .local v2, lKeyValue:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1932
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1936
    .end local v2           #lKeyValue:Ljava/lang/Integer;
    :cond_1
    return v1
.end method

.method private getNearestIndex(F)Z
    .locals 14
    .parameter "y"

    .prologue
    .line 1646
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1648
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 1650
    :cond_0
    const/4 v11, 0x0

    .line 1760
    :goto_0
    return v11

    .line 1652
    :cond_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, p1, v11

    if-gez v11, :cond_2

    .line 1655
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    div-float v11, p1, v11

    float-to-int v11, v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1656
    const-string v11, "TwLangIndexScrollView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "language position getNearestIndexlies in Fixed start char range Index mSelectedIndex::"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v11, 0x1

    goto :goto_0

    .line 1659
    :cond_2
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p1, v11

    if-lez v11, :cond_6

    .line 1662
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, p1, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 1663
    .local v1, lEndIndex:F
    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-nez v11, :cond_4

    .line 1664
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v11

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1669
    :goto_1
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_3

    .line 1671
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1673
    :cond_3
    const-string v11, "TwLangIndexScrollView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "language position getNearestIndexlies in Fixed End char range mSelectedIndex ::"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1665
    :cond_4
    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-lez v11, :cond_5

    const/high16 v11, 0x3f80

    cmpg-float v11, v1, v11

    if-gez v11, :cond_5

    .line 1666
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto :goto_1

    .line 1668
    :cond_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v11

    float-to-int v12, v1

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto :goto_1

    .line 1680
    .end local v1           #lEndIndex:F
    :cond_6
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr p1, v11

    .line 1681
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_7

    .line 1682
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1685
    :cond_7
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1686
    .local v5, prevIndex:I
    const/4 v2, 0x0

    .line 1698
    .local v2, newSelectedIndex:I
    const/4 v4, 0x0

    .line 1700
    .local v4, positionI:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v3, v11

    .line 1701
    .local v3, posY:F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1706
    .local v9, skipLevel:I
    :goto_2
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    div-int/2addr v11, v12

    int-to-float v11, v11

    add-float/2addr v11, v3

    cmpg-float v11, v11, p1

    if-gez v11, :cond_9

    .line 1707
    rem-int v11, v4, v9

    add-int/lit8 v12, v9, -0x2

    if-ne v11, v12, :cond_8

    .line 1709
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    add-float/2addr v3, v11

    .line 1713
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1711
    :cond_8
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    add-float/2addr v3, v11

    goto :goto_3

    .line 1716
    :cond_9
    div-int v7, v4, v9

    .line 1717
    .local v7, quota:I
    rem-int v8, v4, v9

    .line 1718
    .local v8, reminder:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v7

    add-int v2, v11, v8

    .line 1725
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v11

    if-nez v11, :cond_a

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v4, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_a

    .line 1727
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v3

    sub-float v0, v11, p1

    .line 1728
    .local v0, d:F
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    sub-float v0, v11, v0

    .line 1729
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 1730
    .local v10, x:F
    div-float v11, v0, v10

    float-to-int v6, v11

    .line 1732
    .local v6, q:I
    add-int/2addr v2, v6

    .line 1736
    .end local v0           #d:F
    .end local v6           #q:I
    .end local v10           #x:F
    :cond_a
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v2, v11, :cond_d

    .line 1737
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 1742
    :cond_b
    :goto_4
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1746
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v4, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_f

    .line 1747
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v2

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1749
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_e

    .line 1750
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1754
    :cond_c
    :goto_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1738
    :cond_d
    if-gez v2, :cond_b

    .line 1739
    const/4 v2, 0x0

    goto :goto_4

    .line 1751
    :cond_e
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    if-gez v11, :cond_c

    .line 1752
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto :goto_5

    .line 1757
    :cond_f
    const-string v11, "TwLangIndexScrollView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getNearest Index making mSelectedIndex ::"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1760
    if-eq v2, v5, :cond_10

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private updateCharNum()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 1526
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-le v10, v11, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v1

    .line 1528
    .local v1, indexToShow:I
    :goto_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1529
    .local v8, skipLevel:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-le v10, v11, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v10

    array-length v3, v10

    .line 1530
    .local v3, lFixedChars:I
    :goto_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v6, v10, v3

    .line 1531
    .local v6, length:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-le v10, v11, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 1532
    .local v4, lLength:I
    :goto_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1533
    .local v7, skipDensity:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iput v9, v10, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 1535
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v1, v4, :cond_5

    .line 1536
    rem-int v9, v0, v8

    add-int/lit8 v10, v8, -0x1

    if-ne v9, v10, :cond_3

    add-int/lit8 v9, v6, -0x1

    if-ge v1, v9, :cond_3

    .line 1537
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget v10, v9, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 1538
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    add-int/lit8 v9, v7, -0x1

    if-ge v2, v9, :cond_4

    add-int/lit8 v9, v6, -0x2

    if-ge v1, v9, :cond_4

    .line 1540
    add-int/lit8 v1, v1, 0x1

    .line 1538
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0           #i:I
    .end local v1           #indexToShow:I
    .end local v2           #j:I
    .end local v3           #lFixedChars:I
    .end local v4           #lLength:I
    .end local v6           #length:I
    .end local v7           #skipDensity:I
    .end local v8           #skipLevel:I
    :cond_0
    move v1, v9

    .line 1526
    goto :goto_0

    .restart local v1       #indexToShow:I
    .restart local v8       #skipLevel:I
    :cond_1
    move v3, v9

    .line 1529
    goto :goto_1

    .restart local v3       #lFixedChars:I
    .restart local v6       #length:I
    :cond_2
    move v4, v6

    .line 1531
    goto :goto_2

    .line 1544
    .restart local v0       #i:I
    .restart local v4       #lLength:I
    .restart local v7       #skipDensity:I
    :cond_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget v10, v9, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 1535
    :cond_4
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1547
    :cond_5
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget v10, v9, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    add-int/2addr v10, v3

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    .line 1549
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTotalCharCount:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    mul-int/2addr v9, v10

    int-to-float v5, v9

    .line 1550
    .local v5, lTotalScreen:F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    int-to-float v9, v9

    cmpg-float v9, v9, v5

    if-gez v9, :cond_6

    .line 1551
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->reCheck:Z
    invoke-static {v9, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1602(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)Z

    .line 1552
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->UpdateSkipLevel()V

    .line 1556
    :cond_6
    return-void
.end method


# virtual methods
.method public drawScroll(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;III)V
    .locals 40
    .parameter "canvas"
    .parameter "bgDrawable"
    .parameter "textPainter"
    .parameter "textColor"
    .parameter "textColorHighlight"
    .parameter "alpha"

    .prologue
    .line 1963
    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDrawingPhase:Z

    .line 1964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v4, -0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1802(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 1965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v4, -0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1902(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 1966
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    if-nez v3, :cond_10

    .line 1967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTopPadding:I

    move/from16 v39, v0

    .line 1968
    .local v39, topPadding:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v9

    .line 1969
    .local v9, allowedHeight:I
    const/16 v28, 0x0

    .line 1970
    .local v28, minHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexInterval:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v28

    .line 1971
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)Landroid/graphics/Rect;

    move-result-object v29

    .line 1973
    .local v29, newBgRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mStartPosY:F

    float-to-int v3, v3

    move/from16 v0, v39

    if-le v3, v0, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mStartPosY:F

    float-to-int v3, v3

    :goto_0
    move-object/from16 v0, v29

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1974
    const/4 v11, 0x0

    .line 1975
    .local v11, bottomPosY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1976
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v11, v3, v4

    .line 1981
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v20, v3, -0x1

    .line 1982
    .local v20, lFixedChars:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v26, v3, v20

    .line 1983
    .local v26, length:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int v35, v3, v20

    .line 1984
    .local v35, skipLevel:I
    const/16 v34, 0x1

    .line 1985
    .local v34, skipDensity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v18, v0

    .line 1986
    .local v18, itemIntervalY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_1

    .line 1987
    mul-int v11, v20, v18

    .line 1990
    :cond_1
    const/16 v16, 0x0

    .local v16, i:I
    const/16 v17, 0x0

    .local v17, indexToShow:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 1991
    rem-int v3, v16, v35

    add-int/lit8 v4, v35, -0x1

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, v26, -0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 1992
    int-to-float v3, v11

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v11, v3

    .line 1993
    const/16 v19, 0x0

    .local v19, j:I
    :goto_4
    if-gez v19, :cond_6

    add-int/lit8 v3, v26, -0x2

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 1994
    add-int/lit8 v17, v17, 0x1

    .line 1993
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .end local v11           #bottomPosY:I
    .end local v16           #i:I
    .end local v17           #indexToShow:I
    .end local v18           #itemIntervalY:I
    .end local v19           #j:I
    .end local v20           #lFixedChars:I
    .end local v26           #length:I
    .end local v34           #skipDensity:I
    .end local v35           #skipLevel:I
    :cond_2
    move/from16 v3, v39

    .line 1973
    goto/16 :goto_0

    .line 1977
    .restart local v11       #bottomPosY:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1978
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v11, v3, v4

    goto/16 :goto_1

    .line 1981
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1997
    .restart local v16       #i:I
    .restart local v17       #indexToShow:I
    .restart local v18       #itemIntervalY:I
    .restart local v20       #lFixedChars:I
    .restart local v26       #length:I
    .restart local v34       #skipDensity:I
    .restart local v35       #skipLevel:I
    :cond_5
    add-int v11, v11, v18

    .line 1990
    :cond_6
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2001
    :cond_7
    move-object/from16 v0, v29

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 2002
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v9, :cond_8

    .line 2003
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v25, v3, v9

    .line 2004
    .local v25, lack:I
    move-object/from16 v0, v29

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 2005
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v3, v25

    move-object/from16 v0, v29

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2006
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v39

    if-ge v3, v0, :cond_8

    .line 2007
    move/from16 v0, v39

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2012
    .end local v25           #lack:I
    :cond_8
    const/4 v15, 0x0

    .line 2013
    .local v15, handlePadding:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 2014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v15

    .line 2018
    :cond_9
    :goto_5
    move-object/from16 v0, v29

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 2019
    sub-int v3, v9, v39

    mul-int/lit8 v4, v15, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 2021
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->UpdateSkipLevel()V

    .line 2023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v26, v3, v20

    .line 2024
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v35, v0

    .line 2025
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v34, v0

    .line 2026
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v18, v0

    .line 2027
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_a

    .line 2028
    mul-int v11, v20, v18

    .line 2031
    :cond_a
    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 2032
    rem-int v3, v16, v35

    add-int/lit8 v4, v35, -0x1

    if-ne v3, v4, :cond_c

    add-int/lit8 v3, v26, -0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_c

    .line 2033
    int-to-float v3, v11

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v11, v3

    .line 2034
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_7
    add-int/lit8 v3, v34, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_d

    add-int/lit8 v3, v26, -0x2

    move/from16 v0, v17

    if-ge v0, v3, :cond_d

    .line 2035
    add-int/lit8 v17, v17, 0x1

    .line 2034
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 2015
    .end local v19           #j:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    .line 2016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v15

    goto/16 :goto_5

    .line 2038
    :cond_c
    add-int v11, v11, v18

    .line 2031
    :cond_d
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 2042
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 2044
    mul-int/lit8 v3, v15, 0x2

    add-int/2addr v3, v11

    move-object/from16 v0, v29

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2049
    :cond_f
    :goto_8
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    .line 2050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLastY:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)F

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 2052
    sget-boolean v3, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    if-eqz v3, :cond_10

    .line 2053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->drawIndexText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/String;)V

    .line 2054
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    .line 2057
    .end local v9           #allowedHeight:I
    .end local v11           #bottomPosY:I
    .end local v15           #handlePadding:I
    .end local v16           #i:I
    .end local v17           #indexToShow:I
    .end local v18           #itemIntervalY:I
    .end local v20           #lFixedChars:I
    .end local v26           #length:I
    .end local v28           #minHeight:I
    .end local v29           #newBgRect:Landroid/graphics/Rect;
    .end local v34           #skipDensity:I
    .end local v35           #skipLevel:I
    .end local v39           #topPadding:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mLastY:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)F

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    .line 2061
    .local v36, tempRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_11

    .line 2063
    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v36

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2065
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2067
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2068
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2069
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2076
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v37, v3, 0x2

    .line 2079
    .local v37, textPosX:I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    .local v27, mArrScrollStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v30, 0x0

    .line 2082
    .local v30, posY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 2083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v4

    add-int v30, v3, v4

    .line 2088
    :cond_12
    :goto_a
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    .line 2090
    .local v14, fontMtx:Landroid/graphics/Paint$FontMetrics;
    move/from16 v0, v30

    int-to-float v3, v0

    iget v4, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v30, v0

    .line 2093
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    move/from16 v20, v0

    .line 2094
    .restart local v20       #lFixedChars:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v26, v3, v20

    .line 2095
    .restart local v26       #length:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v35, v0

    .line 2096
    .restart local v35       #skipLevel:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v34, v0

    .line 2097
    .restart local v34       #skipDensity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v18, v0

    .line 2099
    .restart local v18       #itemIntervalY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    iget v4, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v30, v30, v3

    .line 2103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 2104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2105
    const/16 v23, 0x0

    .line 2106
    .local v23, lLineNumCount:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 2108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2109
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2112
    :goto_c
    const/16 v21, 0x0

    .line 2113
    .local v21, lIndex:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_19

    .line 2115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v4, v0

    move/from16 v0, v30

    int-to-float v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    .line 2120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    mul-int v3, v18, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    mul-int v3, v18, v21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2123
    :goto_e
    add-int/lit8 v23, v23, 0x1

    .line 2124
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 2125
    add-int v30, v30, v18

    .line 2126
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_d

    .line 2046
    .end local v14           #fontMtx:Landroid/graphics/Paint$FontMetrics;
    .end local v21           #lIndex:I
    .end local v23           #lLineNumCount:I
    .end local v27           #mArrScrollStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30           #posY:I
    .end local v36           #tempRect:Landroid/graphics/Rect;
    .end local v37           #textPosX:I
    .restart local v9       #allowedHeight:I
    .restart local v11       #bottomPosY:I
    .restart local v15       #handlePadding:I
    .restart local v16       #i:I
    .restart local v17       #indexToShow:I
    .restart local v28       #minHeight:I
    .restart local v29       #newBgRect:Landroid/graphics/Rect;
    .restart local v39       #topPadding:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_f

    .line 2047
    mul-int/lit8 v3, v15, 0x2

    add-int/2addr v3, v11

    move-object/from16 v0, v29

    iput v3, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 2454
    .end local v9           #allowedHeight:I
    .end local v11           #bottomPosY:I
    .end local v15           #handlePadding:I
    .end local v16           #i:I
    .end local v17           #indexToShow:I
    .end local v18           #itemIntervalY:I
    .end local v20           #lFixedChars:I
    .end local v26           #length:I
    .end local v28           #minHeight:I
    .end local v29           #newBgRect:Landroid/graphics/Rect;
    .end local v34           #skipDensity:I
    .end local v35           #skipLevel:I
    .end local v39           #topPadding:I
    :catch_0
    move-exception v13

    .line 2455
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 2457
    .end local v13           #e:Ljava/lang/Exception;
    :goto_f
    return-void

    .line 2071
    .restart local v36       #tempRect:Landroid/graphics/Rect;
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2073
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_9

    .line 2084
    .restart local v27       #mArrScrollStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v30       #posY:I
    .restart local v37       #textPosX:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_12

    .line 2085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v4

    add-int v30, v3, v4

    goto/16 :goto_a

    .line 2093
    .restart local v14       #fontMtx:Landroid/graphics/Paint$FontMetrics;
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 2111
    .restart local v18       #itemIntervalY:I
    .restart local v20       #lFixedChars:I
    .restart local v23       #lLineNumCount:I
    .restart local v26       #length:I
    .restart local v34       #skipDensity:I
    .restart local v35       #skipLevel:I
    :cond_17
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_c

    .line 2122
    .restart local v21       #lIndex:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    mul-int v3, v18, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v6, v3

    mul-int v3, v18, v21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_e

    .line 2131
    .end local v21           #lIndex:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move/from16 v0, v30

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I
    invoke-static {v3, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1802(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2133
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v17

    .line 2134
    .restart local v17       #indexToShow:I
    :goto_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v3

    add-int/lit8 v22, v3, 0x1

    .line 2135
    .local v22, lLength:I
    :goto_11
    const/16 v24, 0x0

    .line 2136
    .local v24, lSizeReached:Z
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_12
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 2137
    rem-int v3, v16, v35

    add-int/lit8 v4, v35, -0x1

    if-ne v3, v4, :cond_20

    add-int/lit8 v3, v26, -0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_20

    .line 2138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2139
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2142
    :goto_13
    const-string v3, "."

    move/from16 v0, v37

    int-to-float v4, v0

    move/from16 v0, v30

    int-to-float v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2143
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3200()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 2153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2157
    :goto_14
    add-int/lit8 v23, v23, 0x1

    .line 2158
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 2160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    add-int v30, v30, v18

    .line 2162
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_15
    add-int/lit8 v3, v34, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_1e

    add-int/lit8 v3, v26, -0x2

    move/from16 v0, v17

    if-ge v0, v3, :cond_1e

    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    add-int/lit8 v17, v17, 0x1

    .line 2162
    add-int/lit8 v19, v19, 0x1

    goto :goto_15

    .line 2133
    .end local v16           #i:I
    .end local v17           #indexToShow:I
    .end local v19           #j:I
    .end local v22           #lLength:I
    .end local v24           #lSizeReached:Z
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_10

    .restart local v17       #indexToShow:I
    :cond_1b
    move/from16 v22, v26

    .line 2134
    goto/16 :goto_11

    .line 2141
    .restart local v16       #i:I
    .restart local v22       #lLength:I
    .restart local v24       #lSizeReached:Z
    :cond_1c
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_13

    .line 2155
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v6, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 2168
    .restart local v19       #j:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotShownPos:Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    const-string v3, "."

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    .end local v19           #j:I
    :cond_1f
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_12

    .line 2173
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2175
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2181
    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_21

    .line 2183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v17, v3, -0x1

    .line 2184
    const/16 v24, 0x1

    .line 2186
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v4, v0

    move/from16 v0, v30

    int-to-float v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2188
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 2189
    move/from16 v0, v30

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 2190
    :cond_22
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3200()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_23

    .line 2202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 2203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2207
    :goto_17
    add-int/lit8 v23, v23, 0x1

    .line 2209
    :cond_23
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 2210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    add-int v30, v30, v18

    .line 2215
    if-eqz v24, :cond_1f

    .line 2222
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move/from16 v0, v30

    #setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static {v3, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1902(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2223
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_29

    .line 2225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v3

    add-int/lit8 v21, v3, 0x1

    .line 2227
    .restart local v21       #lIndex:I
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_29

    .line 2229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2230
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2233
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v4, v0

    move/from16 v0, v30

    int-to-float v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2237
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3200()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandlePosition:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 2239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2242
    :goto_1a
    add-int/lit8 v23, v23, 0x1

    .line 2243
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 2244
    add-int v30, v30, v18

    .line 2245
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_18

    .line 2179
    .end local v21           #lIndex:I
    :cond_25
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_16

    .line 2205
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v6, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_17

    .line 2232
    .restart local v21       #lIndex:I
    :cond_27
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_19

    .line 2241
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v6, v3

    mul-int v3, v18, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1a

    .line 2250
    .end local v21           #lIndex:I
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIsScroll:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2251
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2253
    const/16 v30, 0x0

    .line 2255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 2256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v4

    add-int v30, v3, v4

    .line 2261
    :cond_2a
    :goto_1b
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    .line 2262
    move/from16 v0, v30

    int-to-float v3, v0

    iget v4, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v30, v0

    .line 2263
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    iget v4, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v30, v30, v3

    .line 2265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v26, v0

    .line 2266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v35, v0

    .line 2267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v34, v0

    .line 2293
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 2294
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, v4

    add-int v30, v30, v3

    .line 2297
    :cond_2b
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 2298
    .local v10, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2300
    const/16 v31, 0x0

    .line 2301
    .local v31, scrollHandlerBottom:I
    const/16 v32, 0x0

    .line 2329
    .local v32, scrollHandlerTop:I
    const/16 v33, 0x0

    .line 2330
    .local v33, selectScrollIndex:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 2331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 2334
    :cond_2c
    if-ltz v33, :cond_2d

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v33

    if-le v0, v3, :cond_2f

    .line 2336
    :cond_2d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDrawingPhase:Z

    goto/16 :goto_f

    .line 2257
    .end local v10           #bgPadding:Landroid/graphics/Rect;
    .end local v31           #scrollHandlerBottom:I
    .end local v32           #scrollHandlerTop:I
    .end local v33           #selectScrollIndex:I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2a

    .line 2258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v4

    add-int v30, v3, v4

    goto/16 :goto_1b

    .line 2342
    .restart local v10       #bgPadding:Landroid/graphics/Rect;
    .restart local v31       #scrollHandlerBottom:I
    .restart local v32       #scrollHandlerTop:I
    .restart local v33       #selectScrollIndex:I
    :cond_2f
    iget v3, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, v30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    sub-int v32, v3, v4

    .line 2343
    iget v3, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, v30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    add-int v31, v3, v4

    .line 2344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    .line 2345
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v38, v0

    .line 2347
    .local v38, textPosY:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2348
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 2349
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2353
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v38, v0

    .line 2356
    const/4 v3, 0x1

    move/from16 v0, v33

    if-lt v0, v3, :cond_30

    .line 2357
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    sub-float v38, v38, v3

    .line 2358
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2361
    add-int/lit8 v3, v33, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    add-int/lit8 v6, v33, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2363
    add-int/lit8 v3, v33, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_30

    .line 2364
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v38, v38, v3

    .line 2368
    :cond_30
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v38, v0

    .line 2370
    move/from16 v0, v37

    int-to-float v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedPosX:F

    .line 2371
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedPosY:F

    .line 2372
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedString:Ljava/lang/String;

    .line 2373
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    .line 2375
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_31

    .line 2376
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v38, v38, v3

    .line 2378
    :cond_31
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3500()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2381
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2383
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v33, 0x1

    if-lt v3, v4, :cond_33

    .line 2384
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    add-float v38, v38, v3

    .line 2385
    add-int/lit8 v3, v33, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_32

    .line 2386
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v38, v38, v3

    .line 2389
    :cond_32
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2392
    add-int/lit8 v3, v33, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    add-int/lit8 v6, v33, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2393
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2395
    :cond_33
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2396
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2453
    .end local v10           #bgPadding:Landroid/graphics/Rect;
    .end local v12           #count:I
    .end local v31           #scrollHandlerBottom:I
    .end local v32           #scrollHandlerTop:I
    .end local v33           #selectScrollIndex:I
    .end local v38           #textPosY:F
    :cond_34
    :goto_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDrawingPhase:Z

    goto/16 :goto_f

    .line 2399
    .restart local v10       #bgPadding:Landroid/graphics/Rect;
    .restart local v31       #scrollHandlerBottom:I
    .restart local v32       #scrollHandlerTop:I
    .restart local v33       #selectScrollIndex:I
    :cond_35
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_3a

    .line 2401
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedPosY:F

    move/from16 v38, v0

    .line 2405
    .restart local v38       #textPosY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_36

    .line 2406
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    sub-float v38, v38, v3

    .line 2409
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2410
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_36

    .line 2411
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v38, v38, v3

    .line 2414
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedPosY:F

    move/from16 v38, v0

    .line 2416
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_37

    .line 2417
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v38, v38, v3

    .line 2420
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedString:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 2424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedString:Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2426
    :cond_38
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_34

    .line 2427
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    add-float v38, v38, v3

    .line 2429
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_39

    .line 2430
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v38, v38, v3

    .line 2434
    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1c

    .line 2436
    .end local v38           #textPosY:F
    :cond_3a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_34

    .line 2438
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v38, v0

    .line 2439
    .restart local v38       #textPosY:F
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v38, v0

    .line 2440
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_3b

    .line 2441
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v38, v38, v3

    .line 2443
    :cond_3b
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3600()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2446
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1c
.end method

.method public getBaseIndexPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexInfoAt(I)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    goto :goto_0
.end method

.method public getIndexPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexSkipLevel()I
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    return v0
.end method

.method public getIndexStringAt(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1612
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexInfoAt(I)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v0

    .line 1613
    .local v0, ii:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScrollInfo()Ljava/util/ArrayList;
    .locals 1
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
    .line 2460
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 1582
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    .locals 2

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1619
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    .line 1620
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexStringAt(I)Ljava/lang/String;

    move-result-object v0

    .line 1622
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSubscrollIndexInfo()Ljava/util/ArrayList;
    .locals 1
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
    .line 1569
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIndexSkipLevel()I
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    return v0
.end method

.method public getmPositionChildScroll()F
    .locals 1

    .prologue
    .line 1349
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    return v0
.end method

.method public getmSkipDensity()I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    return v0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "newParentHeight"

    .prologue
    .line 1953
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1954
    const-string v0, "TwLangIndexScrollView"

    const-string v1, "NdepthScroll:: onSizeChanged() / awakenScrollBar() is now being called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 1956
    return-void
.end method

.method public resetLangIndexInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "aIndexpath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1358
    .local p1, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    .line 1359
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1360
    return-void
.end method

.method public setSelectedIndex(I)I
    .locals 0
    .parameter "selectedIndex"

    .prologue
    .line 1589
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    return p1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public updateIndex(F)Z
    .locals 20
    .parameter "y"

    .prologue
    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1769
    const/16 v17, 0x0

    .line 1922
    :goto_0
    return v17

    .line 1772
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1773
    .local v11, prevIndex:I
    const/4 v8, 0x0

    .line 1774
    .local v8, newSelectedIndex:I
    const/4 v10, 0x0

    .line 1775
    .local v10, positionI:I
    const/4 v9, 0x0

    .line 1777
    .local v9, posY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mMyDepth:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1781
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 1784
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangStartPosy:I
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, p1, v17

    if-gez v17, :cond_3

    .line 1787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, p1, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1788
    const-string v17, "TwLangIndexScrollView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "language position updateIndexlies in Fixed start char range mSelectedIndex ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1791
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-ltz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mSimpleModeForContact_HK:Z
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCurrentLangEndPosy:I
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 1795
    .local v7, lEndIndex:F
    const/16 v17, 0x0

    cmpl-float v17, v7, v17

    if-nez v17, :cond_5

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1802
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1806
    :cond_4
    const-string v17, "TwLangIndexScrollView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "language position updateIndexlies in Fixed End char range mSelectedIndex ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1797
    :cond_5
    const/16 v17, 0x0

    cmpl-float v17, v7, v17

    if-lez v17, :cond_6

    const/high16 v17, 0x3f80

    cmpg-float v17, v7, v17

    if-gez v17, :cond_6

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto :goto_1

    .line 1800
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangEndIndex()I

    move-result v17

    float-to-int v0, v7

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto/16 :goto_1

    .line 1810
    .end local v7           #lEndIndex:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1812
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1815
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v9, v0

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v4, v0

    .line 1817
    .local v4, lCharPadd:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v9

    add-float v18, p1, v4

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a

    .line 1819
    add-int/lit8 v10, v10, 0x1

    .line 1820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v9, v9, v17

    goto :goto_2

    .line 1828
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v10, v0, :cond_b

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangPositionMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    add-int/lit8 v10, v17, -0x1

    .line 1834
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v10, v0, :cond_c

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexLangSkipMap:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->size()I

    move-result v17

    add-int/lit8 v10, v17, -0x1

    .line 1839
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getIndexKeyForPosition(I)I

    move-result v8

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotShownPos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1844
    sub-float/2addr v9, v4

    .line 1845
    const/4 v3, 0x0

    .line 1847
    .local v3, lAddIndexValue:I
    sub-float v5, p1, v9

    .line 1852
    .local v5, lDiffPosYValue:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getCountOfSameIndexValue(I)I

    move-result v18

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 1854
    .local v6, lEachDotCharHeight:F
    div-float v17, v5, v6

    move/from16 v0, v17

    float-to-int v3, v0

    .line 1855
    add-int/2addr v8, v3

    .line 1905
    .end local v3           #lAddIndexValue:I
    .end local v4           #lCharPadd:F
    .end local v5           #lDiffPosYValue:F
    .end local v6           #lEachDotCharHeight:F
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_12

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .line 1912
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v17, v0

    rem-int v17, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1913
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1869
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float p1, p1, v17

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v9, v0

    .line 1872
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1874
    .local v15, skipLevel:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v18, v0

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v9

    cmpg-float v17, v17, p1

    if-gez v17, :cond_11

    .line 1876
    rem-int v17, v10, v15

    add-int/lit8 v18, v15, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1878
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v9, v9, v17

    .line 1882
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1880
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v9, v9, v17

    goto :goto_6

    .line 1885
    :cond_11
    div-int v13, v10, v15

    .line 1886
    .local v13, quota:I
    rem-int v14, v10, v15

    .line 1887
    .local v14, reminder:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v17, v0

    add-int v17, v17, v15

    add-int/lit8 v17, v17, -0x1

    mul-int v17, v17, v13

    add-int v8, v17, v14

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mBlockSelectingDot:Z
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v17, v0

    rem-int v17, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v18, v0

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v9

    sub-float v2, v17, p1

    .line 1897
    .local v2, d:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    sub-float v2, v17, v2

    .line 1898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 1899
    .local v16, x:F
    div-float v17, v2, v16

    move/from16 v0, v17

    float-to-int v12, v0

    .line 1900
    .local v12, q:I
    add-int/2addr v8, v12

    goto/16 :goto_3

    .line 1907
    .end local v2           #d:F
    .end local v12           #q:I
    .end local v13           #quota:I
    .end local v14           #reminder:I
    .end local v15           #skipLevel:I
    .end local v16           #x:F
    :cond_12
    if-gez v8, :cond_e

    .line 1908
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1915
    :cond_13
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1916
    const-string v17, "TwLangIndexScrollView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateIndex mSelectedIndex value ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    if-eq v8, v11, :cond_14

    .line 1918
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1919
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1922
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_0
.end method
