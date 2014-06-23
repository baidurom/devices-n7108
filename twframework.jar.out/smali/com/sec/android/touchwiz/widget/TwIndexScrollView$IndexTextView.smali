.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;
.super Landroid/view/View;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
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

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 1758
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1759
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1749
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1750
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    .line 1760
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->init()V

    .line 1761
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1765
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1766
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1749
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1750
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    .line 1767
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->init()V

    .line 1768
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1732
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1732
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    return p1
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x20500c1

    const v3, 0x20500c0

    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1774
    .local v0, rsrc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->setFocusable(Z)V

    .line 1775
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    .line 1776
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1777
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1778
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x2060009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1779
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1780
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mScale:F

    .line 1782
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1783
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    .line 1784
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    .line 1785
    const v1, 0x2020220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1792
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1794
    return-void

    .line 1787
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    .line 1788
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    .line 1789
    const v1, 0x2020221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method getIndexPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 1797
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    .line 1799
    .local v18, length:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getWidth()I

    move-result v28

    .line 1800
    .local v28, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->getHeight()I

    move-result v14

    .line 1801
    .local v14, height:I
    div-int/lit8 v26, v28, 0x2

    .line 1804
    .local v26, textX:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1809
    .local v8, BGRectPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 1901
    .end local v8           #BGRectPadding:Landroid/graphics/Rect;
    .end local v14           #height:I
    .end local v18           #length:I
    .end local v26           #textX:I
    .end local v28           #width:I
    :cond_0
    :goto_0
    return-void

    .line 1812
    .restart local v8       #BGRectPadding:Landroid/graphics/Rect;
    .restart local v14       #height:I
    .restart local v18       #length:I
    .restart local v26       #textX:I
    .restart local v28       #width:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v19

    .line 1815
    .local v19, pf:Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastDepthScroll()Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;

    move-result-object v16

    .line 1817
    .local v16, lastDepthScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
    if-eqz v16, :cond_0

    .line 1820
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getScrollInfo()Ljava/util/ArrayList;

    move-result-object v12

    .line 1824
    .local v12, depthScrollInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v11, 0x0

    .line 1825
    .local v11, count:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1826
    .local v9, bgPadding:Landroid/graphics/Rect;
    const/high16 v27, 0x40e0

    .line 1827
    .local v27, ticktop:F
    move-object/from16 v0, v19

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v10, v1

    .line 1828
    .local v10, cellheight:F
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 1829
    .local v24, stringBound:Landroid/graphics/Rect;
    const/4 v1, 0x1

    new-array v0, v1, [F

    move-object/from16 v25, v0

    .line 1830
    .local v25, textWidth:[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    const-string v3, "D"

    const-string v4, "D"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-string v5, "D"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 1832
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    neg-int v0, v1

    move/from16 v17, v0

    .line 1833
    .local v17, left:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTextWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v21

    .line 1835
    .local v21, right:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    if-ltz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    if-gez v1, :cond_3

    .line 1836
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1842
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1844
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 1846
    .local v20, res:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    .line 1847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    aget-object v1, v1, v15

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1846
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1839
    .end local v15           #i:I
    .end local v20           #res:Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mMoveToIndex:I

    goto :goto_1

    .line 1850
    .restart local v15       #i:I
    .restart local v20       #res:Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1852
    .local v23, strToDraw:Ljava/lang/String;
    move/from16 v0, v28

    int-to-float v1, v0

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1853
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v11

    .line 1854
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v11

    .line 1855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1857
    iget v1, v9, Landroid/graphics/Rect;->left:I

    sub-int v1, v17, v1

    const/4 v3, 0x0

    aget v3, v25, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iget v3, v9, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v3, v10

    add-float v3, v3, v27

    float-to-int v3, v3

    iget v4, v9, Landroid/graphics/Rect;->right:I

    add-int v4, v4, v21

    const/4 v5, 0x0

    aget v5, v25, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    const/high16 v5, 0x4080

    div-float v5, v10, v5

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float v5, v5, v27

    float-to-int v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int v3, v17, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v9, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v4, v10

    add-float v4, v4, v27

    float-to-int v4, v4

    iget v5, v9, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v21

    const/4 v6, 0x0

    aget v6, v25, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    const/high16 v6, 0x4080

    div-float v6, v10, v6

    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float v6, v6, v27

    float-to-int v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1868
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1870
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v11

    .line 1871
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v11

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 1873
    .local v22, shaderpaint:Landroid/graphics/Paint;
    iget v1, v9, Landroid/graphics/Rect;->left:I

    sub-int v1, v17, v1

    const/4 v3, 0x0

    aget v3, v25, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    neg-float v3, v10

    const/high16 v4, 0x4000

    div-float v4, v10, v4

    sub-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/Rect;->right:I

    add-int v4, v4, v21

    const/4 v5, 0x0

    aget v5, v25, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4080

    div-float v5, v10, v5

    sub-float v5, v10, v5

    float-to-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1878
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1879
    .local v2, centerStr:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedIndex()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mSelectedIndex:I

    .line 1880
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1881
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    .line 1884
    const/4 v1, 0x1

    new-array v13, v1, [F

    .line 1885
    .local v13, dimmedTextWidth:[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v13}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 1886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexTextColorDimmed:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->isRtlLanguage()Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1888
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    aget v1, v13, v1

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1894
    .end local v13           #dimmedTextWidth:[F
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1897
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1898
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1890
    .restart local v13       #dimmedTextWidth:[F
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v5, 0x0

    aget v5, v13, v5

    sub-float/2addr v1, v5

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method setIndexPath(Ljava/lang/String;)V
    .locals 3
    .parameter "indexPath"

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPath:Ljava/lang/String;

    .line 1904
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    .line 1905
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexTextView;->mIndexPathArray:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1908
    :cond_0
    return-void
.end method
