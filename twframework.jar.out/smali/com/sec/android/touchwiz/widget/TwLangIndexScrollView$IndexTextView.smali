.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;
.super Landroid/view/View;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexTextView"
.end annotation


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndexPath:Ljava/lang/String;

.field protected mIndexPathArray:[Ljava/lang/String;

.field private mIndexTextColor:I

.field private mIndexTextColorDimmed:I

.field mMoveToIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field mSelectedIndex:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 2492
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 2493
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2483
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 2484
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mMoveToIndex:I

    .line 2494
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->init()V

    .line 2495
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 2499
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 2500
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2483
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 2484
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mMoveToIndex:I

    .line 2501
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->init()V

    .line 2502
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2466
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2466
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    return p1
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x20500c1

    const v3, 0x20500c0

    .line 2507
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2508
    .local v0, rsrc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->setFocusable(Z)V

    .line 2509
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    .line 2510
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2511
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2512
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x2060009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2513
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2514
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mScale:F

    .line 2516
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mIndexScrollViewTheme:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2517
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I

    .line 2518
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    .line 2519
    const v1, 0x2020220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2526
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2528
    return-void

    .line 2521
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I

    .line 2522
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    .line 2523
    const v1, 0x2020221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method getIndexPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 2531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v23

    .line 2533
    .local v23, length:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->getWidth()I

    move-result v33

    .line 2534
    .local v33, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->getHeight()I

    move-result v17

    .line 2535
    .local v17, height:I
    div-int/lit8 v31, v33, 0x2

    .line 2538
    .local v31, textX:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 2543
    .local v9, BGRectPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 2660
    .end local v9           #BGRectPadding:Landroid/graphics/Rect;
    .end local v17           #height:I
    .end local v23           #length:I
    .end local v31           #textX:I
    .end local v33           #width:I
    :cond_0
    :goto_0
    return-void

    .line 2546
    .restart local v9       #BGRectPadding:Landroid/graphics/Rect;
    .restart local v17       #height:I
    .restart local v23       #length:I
    .restart local v31       #textX:I
    .restart local v33       #width:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v24

    .line 2549
    .local v24, pf:Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;

    move-result-object v21

    .line 2551
    .local v21, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;
    if-eqz v21, :cond_0

    .line 2554
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getScrollInfo()Ljava/util/ArrayList;

    move-result-object v13

    .line 2558
    .local v13, depthScrollInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v12, 0x0

    .line 2559
    .local v12, count:I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 2560
    .local v10, bgPadding:Landroid/graphics/Rect;
    const/high16 v32, 0x40e0

    .line 2561
    .local v32, ticktop:F
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v11, v2

    .line 2562
    .local v11, cellheight:F
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 2563
    .local v29, stringBound:Landroid/graphics/Rect;
    const/4 v2, 0x1

    new-array v0, v2, [F

    move-object/from16 v30, v0

    .line 2566
    .local v30, textWidth:[F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const-string v4, "D"

    const-string v5, "D"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const-string v6, "D"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v30

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2571
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTextWidth:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v2

    neg-int v0, v2

    move/from16 v22, v0

    .line 2572
    .local v22, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mTextWidth:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$3900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v26

    .line 2574
    .local v26, right:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mMoveToIndex:I

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mSelectedIndex:I

    if-gez v2, :cond_3

    .line 2575
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mMoveToIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 2581
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2583
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 2585
    .local v25, res:Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 2586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    aget-object v2, v2, v18

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2585
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 2567
    .end local v18           #i:I
    .end local v22           #left:I
    .end local v25           #res:Ljava/lang/StringBuffer;
    .end local v26           #right:I
    :catch_0
    move-exception v16

    .line 2568
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2578
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v22       #left:I
    .restart local v26       #right:I
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mMoveToIndex:I

    goto :goto_2

    .line 2589
    .restart local v18       #i:I
    .restart local v25       #res:Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2591
    .local v28, strToDraw:Ljava/lang/String;
    div-int/lit8 v2, v33, 0x2

    int-to-float v2, v2

    div-int/lit8 v4, v17, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2592
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 2593
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2596
    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int v2, v22, v2

    const/4 v4, 0x0

    aget v4, v30, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    iget v4, v10, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v4, v11

    add-float v4, v4, v32

    float-to-int v4, v4

    iget v5, v10, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v26

    const/4 v6, 0x0

    aget v6, v30, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    const/high16 v6, 0x4080

    div-float v6, v11, v6

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float v6, v6, v32

    float-to-int v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int v4, v22, v4

    const/4 v5, 0x0

    aget v5, v30, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget v5, v10, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    add-float v5, v5, v32

    float-to-int v5, v5

    iget v6, v10, Landroid/graphics/Rect;->right:I

    add-int v6, v6, v26

    const/4 v7, 0x0

    aget v7, v30, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    const/high16 v7, 0x4080

    div-float v7, v11, v7

    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    sub-float v7, v7, v32

    float-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2607
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2609
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 2610
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    .line 2612
    .local v27, shaderpaint:Landroid/graphics/Paint;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int v2, v22, v2

    const/4 v4, 0x0

    aget v4, v30, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    neg-float v4, v11

    const/high16 v5, 0x4000

    div-float v5, v11, v5

    sub-float/2addr v4, v5

    iget v5, v10, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v26

    const/4 v6, 0x0

    aget v6, v30, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4080

    div-float v6, v11, v6

    sub-float v6, v11, v6

    float-to-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2617
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2618
    .local v3, centerStr:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 2621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_8

    .line 2622
    const/4 v2, 0x1

    new-array v14, v2, [F

    .line 2623
    .local v14, dimmedTextWidth:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v14}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 2624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z
    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$4000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2626
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2628
    const/4 v2, 0x1

    new-array v15, v2, [F

    .line 2629
    .local v15, dimmedTextWidth1:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 2631
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float v6, v2, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2653
    .end local v14           #dimmedTextWidth:[F
    .end local v15           #dimmedTextWidth1:[F
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2656
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2657
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 2633
    .restart local v14       #dimmedTextWidth:[F
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    aget v6, v14, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2635
    const/4 v2, 0x1

    new-array v15, v2, [F

    .line 2636
    .restart local v15       #dimmedTextWidth1:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v15}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 2638
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 2639
    .local v19, lFiString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2641
    .local v20, lSecString:Ljava/lang/String;
    const-string v2, "m"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "w"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "i"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2642
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    aget v6, v14, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    const/4 v6, 0x0

    aget v6, v15, v6

    add-float/2addr v6, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 2644
    :cond_7
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    aget v6, v14, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    const/4 v6, 0x0

    aget v6, v14, v6

    add-float/2addr v6, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 2649
    .end local v14           #dimmedTextWidth:[F
    .end local v15           #dimmedTextWidth1:[F
    .end local v19           #lFiString:Ljava/lang/String;
    .end local v20           #lSecString:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2650
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method setIndexPath(Ljava/lang/String;)V
    .locals 3
    .parameter "indexPath"

    .prologue
    .line 2662
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    .line 2663
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    .line 2664
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2665
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2667
    :cond_0
    return-void
.end method
