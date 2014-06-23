.class Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;
.super Landroid/widget/FrameLayout;
.source "TwTabWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalTabScrollView"
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "HorizontalTabScrollView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsFlinging:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    .line 258
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 385
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 388
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 407
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 421
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    .line 437
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    .line 259
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->initScrollView()V

    .line 260
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setFocusable(Z)V

    .line 262
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 533
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 536
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 538
    .end local v1           #childWidth:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1544
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1545
    :cond_0
    const/4 p1, 0x0

    .line 1550
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1547
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1548
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1148
    if-eqz p1, :cond_0

    .line 1149
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private doSelectNewTab()V
    .locals 10

    .prologue
    .line 312
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 315
    .local v2, indicator:Landroid/view/View;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 316
    .local v4, rc:Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 319
    invoke-virtual {p0, v2, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 321
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v5

    .line 324
    .local v5, scrollDelta:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 326
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->scrollToTab(I)V

    .line 372
    :goto_0
    return-void

    .line 330
    :cond_0
    const/high16 v3, -0x8000

    .line 332
    .local v3, newSelectionIndex:I
    if-lez v5, :cond_3

    .line 335
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 336
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    .line 338
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 339
    invoke-virtual {p0, v6, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 340
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 343
    .local v0, delta:I
    if-gtz v0, :cond_2

    .line 344
    add-int/lit8 v3, v1, 0x1

    .line 365
    .end local v0           #delta:I
    .end local v6           #v:Landroid/view/View;
    :cond_1
    :goto_2
    const/high16 v7, -0x8000

    if-eq v3, v7, :cond_5

    .line 366
    const-string v7, "HorizontalTabScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doSelectNewTab(). new selection:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 335
    .restart local v0       #delta:I
    .restart local v6       #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 351
    .end local v0           #delta:I
    .end local v1           #i:I
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    add-int/lit8 v1, v7, 0x1

    .restart local v1       #i:I
    :goto_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 352
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    .line 354
    .restart local v6       #v:Landroid/view/View;
    invoke-virtual {v6, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 355
    invoke-virtual {p0, v6, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 356
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 358
    .restart local v0       #delta:I
    if-ltz v0, :cond_4

    .line 359
    add-int/lit8 v3, v1, -0x1

    .line 360
    goto :goto_2

    .line 351
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 369
    .end local v0           #delta:I
    .end local v6           #v:Landroid/view/View;
    :cond_5
    const-string v7, "HorizontalTabScrollView"

    const-string v8, "doSelectNewTab(). failed to find new selection"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 891
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 892
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 901
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 903
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 904
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 905
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 906
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 907
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 909
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 915
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 918
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 920
    move-object v1, v5

    .line 921
    move v3, v7

    .line 904
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 915
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 923
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 927
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 928
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 934
    move-object v1, v5

    goto :goto_2

    .line 923
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 937
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 939
    move-object v1, v5

    .line 940
    const/4 v3, 0x1

    goto :goto_2

    .line 941
    :cond_7
    if-eqz v6, :cond_0

    .line 946
    move-object v1, v5

    goto :goto_2

    .line 953
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 861
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 862
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 864
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 870
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 483
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    .line 484
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setFocusable(Z)V

    .line 485
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 486
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setWillNotDraw(Z)V

    .line 487
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 488
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTouchSlop:I

    .line 489
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMinimumVelocity:I

    .line 490
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMaximumVelocity:I

    .line 491
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1127
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1484
    if-ne p1, p2, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return v1

    .line 1488
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1489
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1136
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScrollEndDetected()V
    .locals 6

    .prologue
    .line 292
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v5

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, indicator:Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .local v2, rc:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 299
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 301
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 303
    .local v3, scrollDelta:I
    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 305
    .local v1, newSelectionNeeded:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doSelectNewTab()V

    .line 308
    :cond_0
    return-void

    .line 303
    .end local v1           #newSelectionNeeded:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1036
    const/4 v4, 0x1

    .line 1038
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v6

    .line 1039
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v0

    .line 1040
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1041
    .local v1, containerRight:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_2

    move v3, v7

    .line 1043
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1044
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1045
    move-object v5, p0

    .line 1048
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1049
    const/4 v4, 0x0

    .line 1055
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1056
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1057
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1060
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 1041
    goto :goto_0

    .line 1051
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1052
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1051
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1278
    if-nez p1, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1284
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1286
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1288
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1289
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1302
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1303
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1304
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1305
    if-eqz p2, :cond_2

    .line 1306
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    .line 1311
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1303
    goto :goto_0

    .line 1308
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 500
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 509
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 527
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1073
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1075
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1077
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1079
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1080
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1081
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1082
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1083
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    .line 1084
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1107
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1115
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 1116
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->requestFocus()Z

    .line 1117
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 1119
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1087
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1089
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1090
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    .line 1101
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1104
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_0

    .line 1091
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1093
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1095
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1097
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1098
    sub-int v6, v1, v5

    goto :goto_1

    .line 1104
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 1194
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1229
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1246
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 1247
    .local v1, oldX:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    .line 1248
    .local v2, oldY:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1249
    .local v3, x:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1250
    .local v4, y:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1251
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1252
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 1253
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    .line 1258
    .end local v0           #child:Landroid/view/View;
    :goto_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    if-eq v2, v5, :cond_1

    .line 1259
    :cond_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollChanged(IIII)V

    .line 1263
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->postInvalidate()V

    .line 1270
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    :goto_1
    return-void

    .line 1255
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_3
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 1256
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    goto :goto_0

    .line 1265
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    if-eqz v5, :cond_2

    .line 1266
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 1267
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollEndDetected()V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 8
    .parameter "rect"

    .prologue
    const/4 v6, 0x0

    .line 1323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_1

    move v4, v6

    .line 1380
    :cond_0
    :goto_0
    return v4

    .line 1325
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v5

    .line 1326
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v2

    .line 1327
    .local v2, screenLeft:I
    add-int v3, v2, v5

    .line 1344
    .local v3, screenRight:I
    const/4 v4, 0x0

    .line 1346
    .local v4, scrollXDelta:I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v3, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v2, :cond_3

    .line 1351
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v5, :cond_2

    .line 1353
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    add-int/2addr v4, v7

    .line 1360
    :goto_1
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1361
    .local v1, right:I
    sub-int v0, v1, v3

    .line 1362
    .local v0, distanceToRight:I
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1364
    goto :goto_0

    .line 1356
    .end local v0           #distanceToRight:I
    .end local v1           #right:I
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    add-int/2addr v4, v7

    goto :goto_1

    .line 1364
    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, v2, :cond_0

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-ge v6, v3, :cond_0

    .line 1369
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 1371
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v6

    sub-int/2addr v4, v6

    .line 1378
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    neg-int v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 1374
    :cond_4
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v6

    sub-int/2addr v4, v6

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 638
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 639
    const/4 v1, 0x1

    .line 641
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 653
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 655
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 658
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 659
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 661
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 690
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 667
    :cond_2
    const/4 v1, 0x0

    .line 668
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 669
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 690
    goto :goto_0

    .line 671
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 672
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 674
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->fullScroll(I)Z

    move-result v1

    .line 676
    goto :goto_1

    .line 678
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 679
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 681
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->fullScroll(I)Z

    move-result v1

    .line 683
    goto :goto_1

    .line 685
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 669
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityX"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 1500
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int v12, v0, v1

    .line 1502
    .local v12, width:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1504
    .local v11, right:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    sub-int v6, v11, v12

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1505
    iput-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 1507
    if-lez p1, :cond_3

    move v9, v13

    .line 1509
    .local v9, movingRight:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1512
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_0

    .line 1513
    move-object v10, p0

    .line 1516
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    iput-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1519
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1522
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->invalidate()V

    .line 1524
    .end local v9           #movingRight:Z
    .end local v10           #newFocused:Landroid/view/View;
    .end local v11           #right:I
    .end local v12           #width:I
    :cond_2
    return-void

    .restart local v11       #right:I
    .restart local v12       #width:I
    :cond_3
    move v9, v4

    .line 1507
    goto :goto_0

    .line 1516
    .restart local v9       #movingRight:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1005
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1006
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    .line 1008
    .local v3, width:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1009
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1011
    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 1013
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1014
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1015
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1016
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1020
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 1005
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 446
    const/4 v1, 0x0

    .line 454
    :goto_0
    return v1

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 450
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 451
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 454
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 478
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mRight:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 460
    const/4 v3, 0x0

    .line 470
    :goto_0
    return v3

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 464
    .local v0, length:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 465
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 466
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 467
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 470
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1205
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1208
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1210
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1211
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1216
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1218
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1221
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1224
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1225
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 375
    const-string v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->requestFocus()Z

    .line 380
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 707
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 760
    :goto_0
    return v3

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 712
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    move v3, v4

    .line 713
    goto :goto_0

    .line 716
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 718
    .local v1, x:F
    packed-switch v0, :pswitch_data_0

    .line 760
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 729
    :pswitch_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 730
    .local v2, xDiff:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTouchSlop:I

    if-le v2, v5, :cond_2

    .line 731
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    .line 732
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 734
    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    goto :goto_1

    .line 739
    .end local v2           #xDiff:I
    :pswitch_1
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    .line 746
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 752
    :pswitch_2
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1450
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 1453
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1456
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1459
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollTo(II)V

    .line 1460
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 583
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 584
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 583
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 588
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 599
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 600
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 601
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 604
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 606
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    if-nez v7, :cond_3

    .line 632
    :cond_2
    :goto_2
    return-void

    .line 610
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 611
    .local v6, widthMode:I
    if-eqz v6, :cond_2

    .line 615
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 616
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 617
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getMeasuredWidth()I

    move-result v5

    .line 618
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ge v7, v5, :cond_4

    .line 619
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 621
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 623
    .local v1, childHeightMeasureSpec:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v7

    .line 624
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v5, v7

    .line 625
    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 627
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 631
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #width:I
    :cond_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->rescheduleSelectCurrentItem()V

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1410
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1411
    const/16 p1, 0x42

    .line 1416
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1421
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1429
    :cond_1
    :goto_2
    return v1

    .line 1412
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1413
    const/16 p1, 0x11

    goto :goto_0

    .line 1416
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1425
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1429
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1464
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1466
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1467
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mRight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1472
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1473
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1474
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1475
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1476
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v9

    if-eqz v9, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v7

    .line 772
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 776
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_2

    .line 777
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 779
    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 782
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 784
    .local v6, x:F
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v7, v8

    .line 834
    goto :goto_0

    .line 790
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_4

    .line 791
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 794
    :cond_4
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 797
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    goto :goto_1

    .line 801
    :pswitch_1
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    sub-float/2addr v9, v6

    float-to-int v2, v9

    .line 802
    .local v2, deltaX:I
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    .line 804
    if-gez v2, :cond_5

    .line 805
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-lez v9, :cond_3

    .line 806
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_1

    .line 808
    :cond_5
    if-lez v2, :cond_3

    .line 809
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 810
    .local v4, rightEdge:I
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int/2addr v9, v10

    sub-int v1, v9, v4

    .line 811
    .local v1, availableToScroll:I
    if-lez v1, :cond_3

    .line 812
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p0, v9, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_1

    .line 817
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v4           #rightEdge:I
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 818
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 819
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    float-to-int v3, v9

    .line 821
    .local v3, initialVelocity:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMinimumVelocity:I

    if-le v9, v10, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 822
    neg-int v7, v3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->fling(I)V

    .line 823
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 829
    :goto_2
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_3

    .line 830
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 831
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 825
    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 826
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollEndDetected()V

    goto :goto_2

    .line 784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 969
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 970
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    .line 972
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 973
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 974
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 975
    .local v0, count:I
    if-lez v0, :cond_0

    .line 976
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 977
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 978
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 987
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 989
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 969
    goto :goto_0

    .line 982
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 983
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 984
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1385
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1386
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1387
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1393
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1394
    return-void

    .line 1390
    :cond_1
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1436
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1439
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 1445
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1446
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1534
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1535
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result p1

    .line 1536
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result p2

    .line 1537
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1538
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1541
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public scrollToTabView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 267
    if-nez p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v0, rc:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 276
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 278
    .local v1, scrollDelta:I
    if-eqz v1, :cond_0

    .line 282
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 559
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->requestLayout()V

    .line 562
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    .line 577
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1164
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1165
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1166
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1167
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->invalidate()V

    .line 1174
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastScroll:J

    .line 1175
    return-void

    .line 1169
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1170
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1172
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1184
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    .line 1185
    return-void
.end method
