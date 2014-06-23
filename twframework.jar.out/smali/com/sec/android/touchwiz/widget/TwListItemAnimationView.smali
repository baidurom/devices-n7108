.class public Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwListItemAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWAnimation;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnProgressPopupListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;,
        Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;
    }
.end annotation


# instance fields
.field private final TOTAL_ANIM_TIME:I

.field private firstPosition:I

.field public isMoveFlag:Z

.field private lasPosition:I

.field private listCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field private loopIndex:I

.field private mAnimationCount:I

.field public mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

.field public mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

.field protected mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

.field protected mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

.field protected mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

.field protected mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

.field protected mContext:Landroid/content/Context;

.field protected mIsCheckGlobalAnimationEffect:Z

.field protected mIsWindowFocusChanged:Z

.field protected mListAdapter:Landroid/widget/ListAdapter;

.field private mStartAnimTime:J

.field protected mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

.field protected mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

.field protected mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

.field public moveView:Landroid/view/View;

.field public movedPosition:I

.field public movedYCoordinate:I

.field public moving_down:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 49
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 54
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 55
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 56
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 58
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 61
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    .line 62
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    .line 63
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    .line 72
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    .line 74
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    .line 444
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 461
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 478
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 78
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 49
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 54
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 55
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 56
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 58
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 61
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    .line 62
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    .line 63
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    .line 72
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    .line 74
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    .line 444
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 461
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 478
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 83
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 49
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    .line 54
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 55
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 56
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 58
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 59
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 61
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->moveView:Landroid/view/View;

    .line 62
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedPosition:I

    .line 63
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->movedYCoordinate:I

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->isMoveFlag:Z

    .line 72
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationCount:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mStartAnimTime:J

    .line 74
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->TOTAL_ANIM_TIME:I

    .line 444
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 461
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 478
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 88
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userInitListView(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->firstPosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->lasPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private setCoordinates()V
    .locals 5

    .prologue
    .line 223
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->listCoordinates:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v2

    .line 225
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 226
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 228
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    .line 229
    .local v1, coord:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->setTop(I)V

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->setBottom(I)V

    .line 231
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->listCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v1           #coord:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userGetUseOverscrollEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userIsThisAnimatingForOverscrollListItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userRunningAnimationEffectForOverscrollListItem(Landroid/graphics/Canvas;)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 255
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 258
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 262
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;->userRelease()V

    .line 156
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userRelease()V

    .line 161
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRelease()V

    .line 166
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRelease()V

    .line 171
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRelease()V

    .line 176
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userRelease()V

    .line 181
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 184
    :cond_5
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->onDetachedFromWindow()V

    .line 185
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddItem(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userRunningAnimationEffectForDeleteItems(Landroid/graphics/Canvas;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userRunningAnimationEffectForShowHeaderAndViewOfListItem(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userRunningAnimationEffectForAddLastItem()V

    .line 150
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;->userSetWidthMeasureSpec(I)V

    .line 189
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onMeasure(II)V

    .line 190
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsWindowFocusChanged:Z

    .line 126
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    .line 127
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mListAdapter:Landroid/widget/ListAdapter;

    .line 113
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "divider"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDividerHeight(I)V

    .line 122
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 238
    new-instance p1, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;

    .end local p1
    invoke-direct {p1, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    .line 249
    .restart local p1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 250
    return-void
.end method

.method public userCancelAnimationEffect()V
    .locals 0

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForOverscrollListItem()V

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForDeleteItems()V

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForAddItem()V

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userCancelAnimationEffectForShowHeaderAndViewOfListItem()V

    .line 274
    return-void
.end method

.method public userCancelAnimationEffectForAddItem()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userCancelAnimationEffectForAddItem()V

    .line 347
    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userCancelAnimationEffectForDeleteItems()V

    .line 316
    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForOverscrollListItem()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userCancelAnimationEffectForOverscrollListItem()V

    .line 284
    :cond_0
    return-void
.end method

.method public userCancelAnimationEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userCancelAnimationEffectForShowHeaderAndViewOfListItem()V

    .line 388
    :cond_0
    return-void
.end method

.method public userGetChildViewOnScreenByPosition(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v1

    .line 392
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 393
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 394
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 395
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userSetOnScreenWithBorderCrossedItemByIndex(I)V

    .line 399
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 392
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v2           #view:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public userGetTimeIntervalAlphaEffectForAddItem()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userGetTimeIntervalAlphaEffectForAddItem()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalAlphaEffectForDeleteItems()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userGetTimeIntervalAlphaEffectForDeleteItems()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForDeleteItems()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userGetTimeIntervalTransferEffectForDeleteItems()I

    move-result v0

    goto :goto_0
.end method

.method public userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 359
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userGetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem()I

    move-result v0

    goto :goto_0
.end method

.method public userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V
    .locals 1
    .parameter "headerViews"
    .parameter "moveViewResourceIds"
    .parameter "showViewResorceIds"
    .parameter "movingViewLength"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userInitAnimationEffectForShowHeaderAndViewOfListItem([Landroid/view/View;[I[II)V

    .line 354
    :cond_0
    return-void
.end method

.method protected userInitListView(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mChildrenViewMgr:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$ChildrenViewMgr;

    .line 96
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    .line 97
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    .line 98
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    .line 99
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    .line 101
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;-><init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItemsProgressPopup:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$TWProgressPopup;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->setDividerHeight(I)V

    .line 105
    return-void
.end method

.method public userIsAnimationEffect()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mIsCheckGlobalAnimationEffect:Z

    return v0
.end method

.method public userIsShownForShowHeaderAndViewOfListItem()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userIsShownForShowHeaderAndViewOfListItem()Z

    move-result v0

    goto :goto_0
.end method

.method public userSetOnAnimationEffectForAddItemListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;)V
    .locals 0
    .parameter "userOnAnimationEffectForAddItemListener"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForAddItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForAddItemListener;

    .line 466
    return-void
.end method

.method public userSetOnAnimationEffectForDeleteItemsListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;)V
    .locals 0
    .parameter "userOnAnimationEffectForDeleteItemsListener"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForDeleteItemsListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForDeleteItemsListener;

    .line 449
    return-void
.end method

.method public userSetOnAnimationEffectForShowHeaderAndViewOfListItemListener(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;)V
    .locals 0
    .parameter "userOnAnimationEffectForShowHeaderAndViewOfListItemListener"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mUserOnAnimationEffectForShowHeaderAndViewOfListItemListener:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$userOnAnimationEffectForShowHeaderAndViewOfListItemListener;

    .line 483
    return-void
.end method

.method protected userSetOnScreenWithBorderCrossedItemByIndex(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 428
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v2

    .line 429
    .local v2, size:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 431
    .local v1, offsetY:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 432
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0           #i:I
    .end local v1           #offsetY:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 437
    .restart local v1       #offsetY:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 438
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    .end local v0           #i:I
    .end local v1           #offsetY:I
    :cond_1
    return-void
.end method

.method protected userSetOnScreenWithBorderCrossedItemByMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 405
    const/4 v0, -0x1

    .line 406
    .local v0, clickedItemIndex:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 407
    .local v2, rc:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildCount()I

    move-result v3

    .line 408
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 409
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 410
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 412
    move v0, v1

    .line 417
    .end local v4           #view:Landroid/view/View;
    :cond_0
    if-gez v0, :cond_3

    .line 423
    .end local v0           #clickedItemIndex:I
    .end local v1           #i:I
    .end local v2           #rc:Landroid/graphics/Rect;
    .end local v3           #size:I
    :cond_1
    :goto_1
    return-void

    .line 408
    .restart local v0       #clickedItemIndex:I
    .restart local v1       #i:I
    .restart local v2       #rc:Landroid/graphics/Rect;
    .restart local v3       #size:I
    .restart local v4       #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v4           #view:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->userSetOnScreenWithBorderCrossedItemByIndex(I)V

    goto :goto_1
.end method

.method public userSetTimeIntervalAlphaEffectForAddItem(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userSetTimeIntervalAlphaEffectForAddItem(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public userSetTimeIntervalAlphaEffectForDeleteItems(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userSetTimeIntervalAlphaEffectForDeleteItems(I)V

    .line 300
    :cond_0
    return-void
.end method

.method public userSetTimeIntervalTransferEffectForDeleteItems(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userSetTimeIntervalTransferEffectForDeleteItems(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userSetTimeIntervalTransferEffectForShowHeaderAndViewOfListItem(I)V

    .line 367
    :cond_0
    return-void
.end method

.method public userSetUseAnimationEffectForOverscrollListItem(Z)V
    .locals 1
    .parameter "isUseOverscrollEffect"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForOverscrollListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForOverscrollListItem;->userSetUseOverscrollEffect(Z)V

    .line 279
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddFirstItem()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddFirstItem()V

    .line 321
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddItem(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForAddLastItem()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForAddItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForAddItem;->userStartAnimationEffectForAddLastItem()V

    .line 326
    :cond_0
    return-void
.end method

.method public userStartAnimationEffectForDeleteItems([I)V
    .locals 1
    .parameter "selectedIndeces"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForDeleteItems:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForDeleteItems;->userStartAnimationEffectForDeleteItems([I)V

    .line 289
    :cond_0
    return-void
.end method

.method public userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStartAnimationHideEffectForShowHeaderAndViewOfListItem()V

    .line 383
    :cond_0
    return-void
.end method

.method public userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;->mAnimationEffectForShowHeaderAndViewOfListItem:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$AnimationEffectForShowHeaderAndViewOfListItem;->userStartAnimationShowEffectForShowHeaderAndViewOfListItem()V

    .line 378
    :cond_0
    return-void
.end method
