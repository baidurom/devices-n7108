.class public abstract Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView;
.source "TwAdapterViewAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;,
        Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/touchwiz/widget/TwAdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    .line 63
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRestoreWhichChild:I

    .line 68
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAnimateFirstTime:Z

    .line 74
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mActiveOffset:I

    .line 80
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mMaxNumActiveViews:I

    .line 85
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    .line 95
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStart:I

    .line 100
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowEnd:I

    .line 106
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 126
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 131
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mFirstTime:Z

    .line 137
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    .line 143
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildWidth:I

    .line 144
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildHeight:I

    .line 155
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I

    .line 179
    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 183
    .local v2, resource:I
    if-lez v2, :cond_0

    .line 184
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 189
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 190
    if-lez v2, :cond_1

    .line 191
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 196
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 198
    .local v1, flag:Z
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setAnimateFirstView(Z)V

    .line 200
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->initViewAnimator()V

    .line 206
    return-void

    .line 186
    .end local v1           #flag:Z
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method private addChild(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 568
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 573
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v1, v2, :cond_1

    .line 574
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 575
    .local v0, measureSpec:I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildWidth:I

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildHeight:I

    .line 579
    .end local v0           #measureSpec:I
    :cond_1
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;
    .locals 3
    .parameter "child"

    .prologue
    .line 393
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    .line 394
    .local v1, vm:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;
    iget-object v2, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 398
    .end local v1           #vm:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initViewAnimator()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    .line 213
    return-void
.end method

.method private measureChildren()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 673
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getChildCount()I

    move-result v3

    .line 674
    .local v3, count:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 675
    .local v2, childWidth:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingBottom:I

    sub-int v1, v5, v6

    .line 677
    .local v1, childHeight:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 678
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 679
    .local v0, child:Landroid/view/View;
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 677
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 682
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 3
    .parameter "whichChild"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 299
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 301
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    .line 306
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 308
    .local v0, hasFocus:Z
    :goto_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showOnly(IZ)V

    .line 309
    if-eqz v0, :cond_1

    .line 311
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->requestFocus(I)Z

    .line 314
    .end local v0           #hasFocus:Z
    :cond_1
    return-void

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 302
    :cond_3
    if-gez p1, :cond_0

    .line 303
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v0, v2

    .line 306
    goto :goto_2
.end method


# virtual methods
.method public advance()V
    .locals 0

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showNext()V

    .line 1045
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "relativeIndex"

    .prologue
    .line 324
    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 594
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I

    .line 595
    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 730
    .local v0, dataChanged:Z
    if-eqz v0, :cond_0

    .line 731
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 748
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 749
    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1
    .parameter "numVisibleViews"
    .parameter "activeOffset"

    .prologue
    .line 243
    add-int/lit8 v0, p1, -0x1

    if-le p2, v0, :cond_0

    .line 246
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mMaxNumActiveViews:I

    .line 247
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mActiveOffset:I

    .line 248
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->removeAllViewsInLayout()V

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStart:I

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowEnd:I

    .line 253
    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 403
    .local v0, currentLp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_0

    .line 404
    move-object v1, v0

    .line 407
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1001
    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    .prologue
    .line 1054
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 276
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 277
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    return-object v0

    .line 276
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 282
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 283
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    return-object v0

    .line 282
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mMaxNumActiveViews:I

    goto :goto_0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 3
    .parameter "relativeIndex"

    .prologue
    .line 362
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    .line 363
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->modulo(II)I

    move-result v0

    .line 364
    .local v0, i:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 368
    .end local v0           #i:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getWindowSize()I
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCount()I

    move-result v0

    .line 382
    .local v0, adapterCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    .line 383
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v0, v1

    .line 388
    .end local v0           #adapterCount:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 587
    return-void
.end method

.method modulo(II)I
    .locals 1
    .parameter "pos"
    .parameter "size"

    .prologue
    .line 348
    if-lez p2, :cond_0

    .line 349
    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    .line 351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->checkForAndHandleDataChanged()V

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getChildCount()I

    move-result v2

    .line 756
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 757
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, child:Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 760
    .local v3, childRight:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 762
    .local v1, childBottom:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 756
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 764
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBottom:I
    .end local v3           #childRight:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x100

    const/4 v9, -0x1

    const/high16 v10, -0x8000

    const/4 v7, 0x0

    .line 686
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 687
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 688
    .local v3, heightSpecSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 689
    .local v5, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 691
    .local v2, heightSpecMode:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v8, v9, :cond_2

    const/4 v0, 0x1

    .line 696
    .local v0, haveChildRefSize:Z
    :goto_0
    if-nez v2, :cond_4

    .line 697
    if-eqz v0, :cond_3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingBottom:I

    add-int v3, v8, v9

    .line 710
    :cond_0
    :goto_1
    if-nez v5, :cond_7

    .line 711
    if-eqz v0, :cond_6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingRight:I

    add-int v6, v7, v8

    .line 724
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setMeasuredDimension(II)V

    .line 725
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->measureChildren()V

    .line 726
    return-void

    .end local v0           #haveChildRefSize:Z
    :cond_2
    move v0, v7

    .line 691
    goto :goto_0

    .restart local v0       #haveChildRefSize:Z
    :cond_3
    move v3, v7

    .line 697
    goto :goto_1

    .line 699
    :cond_4
    if-ne v2, v10, :cond_0

    .line 700
    if-eqz v0, :cond_0

    .line 701
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingBottom:I

    add-int v1, v8, v9

    .line 702
    .local v1, height:I
    if-le v1, v3, :cond_5

    .line 703
    or-int/2addr v3, v11

    goto :goto_1

    .line 705
    :cond_5
    move v3, v1

    goto :goto_1

    .end local v1           #height:I
    :cond_6
    move v6, v7

    .line 711
    goto :goto_2

    .line 713
    :cond_7
    if-ne v2, v10, :cond_1

    .line 714
    if-eqz v0, :cond_1

    .line 715
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPaddingRight:I

    add-int v4, v7, v8

    .line 716
    .local v4, width:I
    if-le v4, v6, :cond_8

    .line 717
    or-int/2addr v6, v11

    goto :goto_2

    .line 719
    :cond_8
    move v6, v4

    goto :goto_2
.end method

.method public onRemoteAdapterConnected()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 1007
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eq v1, v2, :cond_2

    .line 1008
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 1010
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->notifyDataSetChanged()V

    .line 1012
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 1016
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRestoreWhichChild:I

    if-le v1, v3, :cond_1

    .line 1017
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 1018
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRestoreWhichChild:I

    .line 1025
    :cond_1
    :goto_0
    return v0

    .line 1021
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v1, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 1023
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 1037
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 816
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;

    .line 817
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 822
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    .line 828
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    .line 829
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRestoreWhichChild:I

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setDisplayedChild(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 810
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 811
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 611
    .local v0, action:I
    const/4 v1, 0x0

    .line 612
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 669
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 614
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 615
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v9}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    .line 618
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$CheckForTap;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 620
    :cond_1
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I

    .line 621
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 629
    .end local v3           #v:Landroid/view/View;
    :pswitch_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I

    if-ne v5, v7, :cond_3

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 631
    .restart local v3       #v:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    .line 632
    .local v4, viewData:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_3

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v9}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 634
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 635
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 636
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    .line 639
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    const/4 v1, 0x1

    .line 658
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #v:Landroid/view/View;
    .end local v4           #viewData:Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;
    :cond_3
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I

    goto :goto_0

    .line 662
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 663
    .restart local v3       #v:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 664
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 666
    :cond_4
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mTouchMode:I

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 8

    .prologue
    .line 411
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_1

    .line 429
    :cond_0
    return-void

    .line 412
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStart:I

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v2, v5, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->modulo(II)I

    move-result v3

    .line 415
    .local v3, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCount()I

    move-result v0

    .line 417
    .local v0, adapterCount:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->modulo(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 419
    .local v4, updatedChild:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 420
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v5, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 422
    .local v1, fl:Landroid/widget/FrameLayout;
    if-eqz v4, :cond_2

    .line 424
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 425
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 412
    .end local v1           #fl:Landroid/widget/FrameLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v2, 0x0

    .line 943
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 947
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    .line 948
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->checkFocus()V

    .line 950
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 951
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;

    .line 952
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 953
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 955
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setFocusable(Z)V

    .line 956
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    .line 957
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showOnly(IZ)V

    .line 958
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 928
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAnimateFirstTime:Z

    .line 929
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .parameter "whichChild"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setDisplayedChild(IZ)V

    .line 295
    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter "inAnimation"

    .prologue
    .line 867
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    .line 868
    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 904
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 905
    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter "outAnimation"

    .prologue
    .line 891
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    .line 892
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 917
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 918
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 972
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 973
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 974
    .local v0, fcNew:Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 976
    .local v1, fcOld:Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    .end local v0           #fcNew:Landroid/content/Intent$FilterComparison;
    .end local v1           #fcOld:Landroid/content/Intent$FilterComparison;
    :goto_0
    return-void

    .line 980
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    .line 982
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mRemoteViewsAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 987
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setDisplayedChild(I)V

    .line 988
    return-void
.end method

.method public showNext()V
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setDisplayedChild(I)V

    .line 338
    return-void
.end method

.method showOnly(IZ)V
    .locals 32
    .parameter "childIndex"
    .parameter "animate"

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v4, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getCount()I

    move-result v11

    .line 455
    .local v11, adapterCount:I
    if-eqz v11, :cond_0

    .line 457
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_3

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v28, v0

    .line 459
    .local v28, viewToRemove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->clearAnimation()V

    .line 461
    move-object/from16 v0, v28

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object/from16 v26, v28

    .line 462
    check-cast v26, Landroid/view/ViewGroup;

    .line 463
    .local v26, vg:Landroid/view/ViewGroup;
    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 467
    .end local v26           #vg:Landroid/view/ViewGroup;
    :cond_2
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 457
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 471
    .end local v28           #viewToRemove:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 472
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mActiveOffset:I

    sub-int v20, p1, v4

    .line 473
    .local v20, newWindowStartUnbounded:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getNumActiveViews()I

    move-result v4

    add-int v4, v4, v20

    add-int/lit8 v18, v4, -0x1

    .line 474
    .local v18, newWindowEndUnbounded:I
    const/4 v4, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 475
    .local v19, newWindowStart:I
    add-int/lit8 v4, v11, -0x1

    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 477
    .local v17, newWindowEnd:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    if-eqz v4, :cond_4

    .line 478
    move/from16 v19, v20

    .line 479
    move/from16 v17, v18

    .line 481
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->modulo(II)I

    move-result v24

    .line 482
    .local v24, rangeStart:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->modulo(II)I

    move-result v23

    .line 484
    .local v23, rangeEnd:I
    const/16 v29, 0x0

    .line 485
    .local v29, wrap:Z
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 486
    const/16 v29, 0x1

    .line 493
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 494
    .local v15, index:Ljava/lang/Integer;
    const/16 v25, 0x0

    .line 495
    .local v25, remove:Z
    if-nez v29, :cond_9

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v24

    if-lt v4, v0, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_9

    .line 496
    :cond_7
    const/16 v25, 0x1

    .line 501
    :cond_8
    :goto_3
    if-eqz v25, :cond_6

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v22, v0

    .line 503
    .local v22, previousView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v21, v0

    .line 505
    .local v21, oldRelativeIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p2

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_2

    .line 497
    .end local v21           #oldRelativeIndex:I
    .end local v22           #previousView:Landroid/view/View;
    :cond_9
    if-eqz v29, :cond_8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v24

    if-ge v4, v0, :cond_8

    .line 498
    const/16 v25, 0x1

    goto :goto_3

    .line 511
    .end local v15           #index:Ljava/lang/Integer;
    .end local v25           #remove:Z
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v19

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_11

    .line 514
    :cond_b
    move/from16 v12, v19

    :goto_4
    move/from16 v0, v17

    if-gt v12, v0, :cond_10

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->modulo(II)I

    move-result v15

    .line 518
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget v0, v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v21, v0

    .line 523
    .restart local v21       #oldRelativeIndex:I
    :goto_5
    sub-int v7, v12, v20

    .line 528
    .local v7, newRelativeIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v14, 0x1

    .line 530
    .local v14, inOldRange:Z
    :goto_6
    if-eqz v14, :cond_e

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v27, v0

    .line 532
    .local v27, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 534
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v27

    move/from16 v3, p2

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 557
    .end local v27           #view:Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 514
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 521
    .end local v7           #newRelativeIndex:I
    .end local v14           #inOldRange:Z
    .end local v21           #oldRelativeIndex:I
    :cond_c
    const/16 v21, -0x1

    .restart local v21       #oldRelativeIndex:I
    goto :goto_5

    .line 528
    .restart local v7       #newRelativeIndex:I
    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    .line 539
    .restart local v14       #inOldRange:Z
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->modulo(II)I

    move-result v8

    .line 540
    .local v8, adapterPosition:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-interface {v4, v8, v5, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 541
    .local v16, newView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4, v8}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v9

    .line 545
    .local v9, itemId:J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v6

    .line 548
    .local v6, fl:Landroid/widget/FrameLayout;
    if-eqz v16, :cond_f

    .line 549
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 551
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$ViewAndMetaData;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 555
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v7, v6, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_7

    .line 559
    .end local v6           #fl:Landroid/widget/FrameLayout;
    .end local v7           #newRelativeIndex:I
    .end local v8           #adapterPosition:I
    .end local v9           #itemId:J
    .end local v14           #inOldRange:Z
    .end local v15           #index:I
    .end local v16           #newView:Landroid/view/View;
    .end local v21           #oldRelativeIndex:I
    :cond_10
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStart:I

    .line 560
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowEnd:I

    .line 561
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 563
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->requestLayout()V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->invalidate()V

    goto/16 :goto_0
.end method

.method public showPrevious()V
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setDisplayedChild(I)V

    .line 345
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 582
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 583
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "view"
    .parameter "animate"

    .prologue
    const/4 v0, -0x1

    .line 266
    if-ne p1, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    if-ne p2, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
