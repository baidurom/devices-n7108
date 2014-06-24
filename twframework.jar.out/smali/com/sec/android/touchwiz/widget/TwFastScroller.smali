.class Lcom/sec/android/touchwiz/widget/TwFastScroller;
.super Ljava/lang/Object;
.source "TwFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final ATTRS:[I = null

.field private static final DEFAULT_STATES:[I = null

.field private static final FADE_TIMEOUT:I = 0x5dc

.field private static MIN_PAGES:I = 0x0

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PRESSED_STATES:[I = null

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private mChangedBounds:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbY:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->MIN_PAGES:I

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->PRESSED_STATES:[I

    .line 61
    new-array v0, v2, [I

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->DEFAULT_STATES:[I

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mItemCount:I

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 131
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .line 132
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->init(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwFastScroller;)Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 650
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 651
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 652
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 653
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 465
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 466
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 467
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 468
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    .line 469
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 471
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 472
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 473
    .local v1, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 474
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 475
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 476
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    .line 491
    :cond_1
    :goto_0
    return-void

    .line 479
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 480
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 481
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 482
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    .line 483
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 484
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 487
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 488
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private getThumbPositionForListPosition(III)I
    .locals 16
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    .line 608
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getSectionsFromIndexer()V

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_4

    .line 611
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    sub-int/2addr v13, v14

    mul-int v13, v13, p1

    sub-int v14, p3, p2

    div-int v8, v13, v14

    .line 645
    :cond_3
    :goto_0
    return v8

    .line 615
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    sub-int p1, p1, v13

    .line 616
    if-gez p1, :cond_5

    .line 617
    const/4 v8, 0x0

    goto :goto_0

    .line 619
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    sub-int p3, p3, v13

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    sub-int v12, v13, v14

    .line 623
    .local v12, trackHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    .line 624
    .local v9, section:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 625
    .local v11, sectionPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 626
    .local v5, nextSectionPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v13

    .line 627
    .local v10, sectionCount:I
    sub-int v7, v5, v11

    .line 629
    .local v7, positionsInSection:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 630
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_6

    const/4 v2, 0x0

    .line 632
    .local v2, incrementalPos:F
    :goto_1
    int-to-float v13, v11

    sub-float v13, v2, v13

    int-to-float v14, v7

    div-float v6, v13, v14

    .line 633
    .local v6, posWithinSection:F
    int-to-float v13, v9

    add-float/2addr v13, v6

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v12

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 638
    .local v8, result:I
    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    .line 639
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 640
    .local v3, lastChild:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 642
    .local v4, lastItemVisible:F
    int-to-float v13, v8

    sub-int v14, v12, v8

    int-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v8, v13

    goto/16 :goto_0

    .line 630
    .end local v2           #incrementalPos:F
    .end local v3           #lastChild:Landroid/view/View;
    .end local v4           #lastItemVisible:F
    .end local v6           #posWithinSection:F
    .end local v8           #result:I
    :cond_6
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v2, v13, v14

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/sec/android/touchwiz/widget/TwFastScroller;->ATTRS:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 238
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 242
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPosition:I

    .line 244
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    .line 246
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getSectionsFromIndexer()V

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    .line 250
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 251
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;-><init>(Lcom/sec/android/touchwiz/widget/TwFastScroller;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    .line 252
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 253
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 255
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 258
    .local v1, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 259
    .local v2, textColorNormal:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 264
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6, v4, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSizeChanged(IIII)V

    .line 267
    :cond_0
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    .line 268
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->refreshDrawableState()V

    .line 270
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mMatchDragPosition:Z

    .line 275
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollbarPosition(I)V

    .line 276
    return-void

    :cond_1
    move v3, v4

    .line 272
    goto :goto_0
.end method

.method private refreshDrawableState()V
    .locals 3

    .prologue
    .line 150
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->PRESSED_STATES:[I

    .line 152
    .local v0, state:[I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 158
    :cond_1
    return-void

    .line 150
    .end local v0           #state:[I
    :cond_2
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->DEFAULT_STATES:[I

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v0

    .line 208
    .local v0, viewWidth:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    return-void

    .line 211
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scrollTo(F)V
    .locals 22
    .parameter "position"

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v2

    .line 499
    .local v2, count:I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    .line 500
    const/high16 v19, 0x3f80

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4100

    div-float v7, v19, v20

    .line 501
    .local v7, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 503
    .local v17, sections:[Ljava/lang/Object;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 504
    move-object/from16 v0, v17

    array-length v9, v0

    .line 505
    .local v9, nSections:I
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v15, v0

    .line 506
    .local v15, section:I
    if-lt v15, v9, :cond_0

    .line 507
    add-int/lit8 v15, v9, -0x1

    .line 509
    :cond_0
    move v3, v15

    .line 510
    .local v3, exactSection:I
    move/from16 v16, v15

    .line 511
    .local v16, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 518
    .local v8, index:I
    move v10, v2

    .line 519
    .local v10, nextIndex:I
    move v13, v8

    .line 520
    .local v13, prevIndex:I
    move v14, v15

    .line 521
    .local v14, prevSection:I
    add-int/lit8 v12, v15, 0x1

    .line 523
    .local v12, nextSection:I
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v15, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 528
    :cond_1
    if-ne v10, v8, :cond_3

    .line 530
    :cond_2
    if-lez v15, :cond_3

    .line 531
    add-int/lit8 v15, v15, -0x1

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 533
    if-eq v13, v8, :cond_4

    .line 534
    move v14, v15

    .line 535
    move/from16 v16, v15

    .line 550
    :cond_3
    :goto_0
    add-int/lit8 v11, v12, 0x1

    .line 552
    .local v11, nextNextSection:I
    :goto_1
    if-ge v11, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v10, :cond_5

    .line 553
    add-int/lit8 v11, v11, 0x1

    .line 554
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 537
    .end local v11           #nextNextSection:I
    :cond_4
    if-nez v15, :cond_2

    .line 540
    const/16 v16, 0x0

    .line 541
    goto :goto_0

    .line 559
    .restart local v11       #nextNextSection:I
    :cond_5
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v6, v19, v20

    .line 560
    .local v6, fPrev:F
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 561
    .local v5, fNext:F
    if-ne v14, v3, :cond_8

    sub-float v19, p1, v6

    cmpg-float v19, v19, v7

    if-gez v19, :cond_8

    .line 562
    move v8, v13

    .line 568
    :goto_2
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    add-int/lit8 v8, v2, -0x1

    .line 570
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 572
    .local v4, expList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectionFromTop(II)V

    .line 596
    .end local v3           #exactSection:I
    .end local v4           #expList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    :goto_3
    if-ltz v16, :cond_10

    .line 597
    aget-object v19, v17, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionText:Ljava/lang/String;

    .line 598
    .local v18, text:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :cond_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDrawOverlay:Z

    .line 603
    .end local v18           #text:Ljava/lang/String;
    :goto_5
    return-void

    .line 564
    .restart local v3       #exactSection:I
    .restart local v5       #fNext:F
    .restart local v6       #fPrev:F
    .restart local v9       #nSections:I
    .restart local v10       #nextIndex:I
    .restart local v11       #nextNextSection:I
    .restart local v12       #nextSection:I
    .restart local v13       #prevIndex:I
    .restart local v14       #prevSection:I
    .restart local v15       #section:I
    :cond_8
    sub-int v19, v10, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v20, p1, v6

    mul-float v19, v19, v20

    sub-float v20, v5, v6

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v13, v19

    goto/16 :goto_2

    .line 574
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 577
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto/16 :goto_3

    .line 580
    .end local v3           #exactSection:I
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v8           #index:I
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    .end local v16           #sectionIndex:I
    :cond_b
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v8, v0

    .line 582
    .restart local v8       #index:I
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_c

    add-int/lit8 v8, v2, -0x1

    .line 584
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 586
    .restart local v4       #expList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectionFromTop(II)V

    .line 593
    .end local v4           #expList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    :goto_6
    const/16 v16, -0x1

    .restart local v16       #sectionIndex:I
    goto/16 :goto_3

    .line 588
    .end local v16           #sectionIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 591
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_6

    .line 598
    .restart local v16       #sectionIndex:I
    .restart local v18       #text:Ljava/lang/String;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 601
    .end local v18           #text:Ljava/lang/String;
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 221
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    .line 231
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mChangedBounds:Z

    .line 232
    return-void

    .line 228
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    .line 229
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    move/from16 v21, v0

    .line 294
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v20

    .line 295
    .local v20, viewWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    .line 297
    .local v13, scrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;
    const/4 v5, -0x1

    .line 298
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 299
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->getAlpha()I

    move-result v5

    .line 300
    const/16 v22, 0x68

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    mul-int/lit8 v23, v5, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 303
    :cond_2
    const/4 v9, 0x0

    .line 304
    .local v9, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 313
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mChangedBounds:Z

    .line 317
    .end local v9           #left:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 319
    .local v14, thumbBounds:Landroid/graphics/Rect;
    iget v9, v14, Landroid/graphics/Rect;->left:I

    .line 320
    .restart local v9       #left:I
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v8, v22, 0x2

    .line 321
    .local v8, halfThumbHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 322
    .local v18, trackWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v9

    div-int/lit8 v23, v18, 0x2

    sub-int v17, v22, v23

    .line 323
    .local v17, trackLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v24

    sub-int v24, v24, v8

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    .end local v8           #halfThumbHeight:I
    .end local v9           #left:I
    .end local v14           #thumbBounds:Landroid/graphics/Rect;
    .end local v17           #trackLeft:I
    .end local v18           #trackWidth:I
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    const/16 v22, 0x0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDrawOverlay:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPosition:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 335
    const/4 v9, 0x0

    .line 336
    .restart local v9       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 340
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 349
    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 352
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 353
    .local v11, pos:Landroid/graphics/RectF;
    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->left:F

    .line 354
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->right:F

    .line 355
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->top:F

    .line 356
    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 362
    .end local v9           #left:I
    .end local v11           #pos:Landroid/graphics/RectF;
    .end local v16           #top:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 364
    .local v10, paint:Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v6

    .line 365
    .local v6, descent:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 366
    .local v12, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 367
    .local v15, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 368
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v7, v22, 0x2

    .line 369
    .local v7, hOff:I
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v19, v22, 0x2

    .line 370
    .local v19, vOff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x4

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 307
    .end local v6           #descent:F
    .end local v7           #hOff:I
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v12           #rectF:Landroid/graphics/RectF;
    .end local v15           #tmpRect:Landroid/graphics/Rect;
    .end local v19           #vOff:I
    .restart local v9       #left:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v22, v0

    mul-int v22, v22, v5

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xd0

    move/from16 v22, v0

    sub-int v9, v20, v22

    .line 308
    goto/16 :goto_1

    .line 310
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v23, v0

    mul-int v23, v23, v5

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xd0

    move/from16 v23, v0

    add-int v9, v22, v23

    goto/16 :goto_1

    .line 344
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2

    .line 373
    .end local v9           #left:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 374
    if-nez v5, :cond_7

    .line 375
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 376
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 379
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    move/from16 v24, v0

    add-int v24, v24, v21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getSectionsFromIndexer()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, inTrack:Z
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPosition:I

    packed-switch v3, :pswitch_data_0

    .line 736
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 744
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 736
    goto :goto_0

    .line 739
    :pswitch_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 744
    goto :goto_1

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 656
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 659
    const/4 v0, 0x1

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onItemCountChanged(II)V
    .locals 1
    .parameter "oldCount"
    .parameter "newCount"

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLongList:Z

    .line 414
    :cond_0
    return-void
.end method

.method onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 420
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mItemCount:I

    .line 421
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Lcom/sec/android/touchwiz/widget/TwFastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLongList:Z

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    .line 424
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLongList:Z

    .line 426
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLongList:Z

    if-nez v0, :cond_4

    .line 427
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 451
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 421
    goto :goto_0

    .line 432
    :cond_4
    sub-int v0, p4, p3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-eq v0, v4, :cond_5

    .line 433
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getThumbPositionForListPosition(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    .line 435
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_5

    .line 436
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->resetThumbPos()V

    .line 437
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mChangedBounds:Z

    .line 440
    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    .line 441
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_2

    .line 444
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mVisibleItem:I

    .line 445
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-eq v0, v4, :cond_2

    .line 446
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 447
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    if-nez v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 495
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 386
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 390
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 399
    .local v0, pos:Landroid/graphics/RectF;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 400
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 401
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 402
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 403
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    .end local v0           #pos:Landroid/graphics/RectF;
    :cond_1
    return-void

    .line 393
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "me"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 666
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-nez v6, :cond_1

    .line 727
    :cond_0
    :goto_0
    return v4

    .line 670
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 672
    .local v0, action:I
    if-nez v0, :cond_4

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInside(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 674
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 675
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v4, :cond_2

    .line 676
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getSectionsFromIndexer()V

    .line 678
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v4, :cond_3

    .line 679
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 680
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 683
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->cancelFling()V

    move v4, v5

    .line 684
    goto :goto_0

    .line 686
    :cond_4
    if-ne v0, v5, :cond_7

    .line 687
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-ne v6, v8, :cond_0

    .line 688
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v6, :cond_6

    .line 692
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 693
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 695
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 696
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHandler:Landroid/os/Handler;

    .line 697
    .local v1, handler:Landroid/os/Handler;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 698
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    if-nez v4, :cond_5

    .line 699
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 702
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .end local v1           #handler:Landroid/os/Handler;
    :cond_6
    move v4, v5

    .line 704
    goto :goto_0

    .line 706
    :cond_7
    if-ne v0, v7, :cond_0

    .line 707
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-ne v6, v8, :cond_0

    .line 708
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v3

    .line 710
    .local v3, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    sub-int/2addr v4, v6

    add-int/lit8 v2, v4, 0xa

    .line 711
    .local v2, newThumbY:I
    if-gez v2, :cond_9

    .line 712
    const/4 v2, 0x0

    .line 716
    :cond_8
    :goto_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v7, :cond_a

    move v4, v5

    .line 717
    goto/16 :goto_0

    .line 713
    :cond_9
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    add-int/2addr v4, v2

    if-le v4, v3, :cond_8

    .line 714
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    sub-int v2, v3, v4

    goto :goto_1

    .line 719
    :cond_a
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    .line 721
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    if-eqz v4, :cond_b

    .line 722
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    int-to-float v4, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->scrollTo(F)V

    :cond_b
    move v4, v5

    .line 724
    goto/16 :goto_0
.end method

.method public setAlwaysShow(Z)V
    .locals 4
    .parameter "alwaysShow"

    .prologue
    const/4 v2, 0x2

    .line 136
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    .line 137
    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-ne v0, v2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 161
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPosition:I

    .line 162
    packed-switch p1, :pswitch_data_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    .line 198
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->refreshDrawableState()V

    .line 199
    return-void

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    goto :goto_0

    .line 185
    :pswitch_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->resetThumbPos()V

    .line 190
    :cond_0
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 193
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v0

    .line 194
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbY:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 280
    return-void
.end method
