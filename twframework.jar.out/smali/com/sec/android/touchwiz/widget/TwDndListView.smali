.class public Lcom/sec/android/touchwiz/widget/TwDndListView;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final BITMAP_ALPHA:I = 0xb3

.field private static final DNDSTARTANIM_FROM_X:F = 1.0f

.field private static final DNDSTARTANIM_FROM_Y:F = 1.0f

.field private static final DNDSTARTANIM_RELATIVE_PIVOT:F = 0.5f

.field private static final DNDSTARTANIM_TO_X:F = 1.08f

.field private static final DNDSTARTANIM_TO_Y:F = 1.08f

.field private static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0xa

.field private static final DND_BASELINE_BOTTOM:I = 0x1

.field private static final DND_BASELINE_CENTER:I = 0x0

.field private static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field private static final DND_TOUCH_STATUS_NON:I = 0x0

.field private static final DND_TOUCH_STATUS_START:I = 0x1

.field private static final MOVEMENT_DOWN:I = 0x0

.field private static final MOVEMENT_INVALID:I = 0x2

.field private static final MOVEMENT_RESISTANCE:F = 0.0f

.field private static final MOVEMENT_UP:I = 0x1

.field private static final SCALEUPDOWNANIM_RESISTANCE:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "TwDndListView"

.field private static final mDraggingReleaseAnimDurationMultiplicator:F = 0.5f

.field private static final mSelectHighlightAnimDuration:I = 0x78


# instance fields
.field private final mDensity:F

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

.field private mDndMode:Z

.field private mDndSwitchBaseLine:I

.field private mDndTouchMode:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragBitmapTop:I

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePadding:Landroid/graphics/Rect;

.field private mDragGrabHandlePosGravity:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mFirstTouchY:I

.field private mListItemSelectionAnimating:Z

.field private mListViewHeight:I

.field private mMovementDirection:I

.field private mPrevTouchY:I

.field private mRetainFirstDragViewPos:I

.field mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

.field private final mScrollBarSize:I

.field private mTempEvent:Landroid/view/MotionEvent;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:I

.field private final mTouchSlop:I

.field private mUserSetDragItemBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    .line 73
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    .line 122
    const/16 v0, 0xff

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    .line 139
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScrollBarSize:I

    .line 154
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    .line 156
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    .line 157
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 159
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 160
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 162
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 163
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 164
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    .line 165
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    .line 166
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    .line 169
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 173
    const/16 v0, 0xb3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 175
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 177
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 181
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchSlop:I

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 186
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setLocalItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;)V

    .line 187
    return-void
.end method

.method private checkStartDnd(III)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "childRect"
    .parameter "isDraggedItem"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 816
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 817
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 819
    :cond_0
    return-void

    .line 816
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private findMovedItemIndex(Landroid/graphics/Rect;Z)I
    .locals 4
    .parameter "rect"
    .parameter "down"

    .prologue
    const/4 v1, -0x1

    .line 725
    const/4 v0, -0x1

    .line 726
    .local v0, itemPosition:I
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->positionOfOverLappingView(Landroid/graphics/Rect;Z)I

    move-result v0

    .line 727
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    .line 732
    :cond_0
    :goto_0
    if-eq v0, v1, :cond_2

    .line 735
    .end local v0           #itemPosition:I
    :goto_1
    return v0

    .line 729
    .restart local v0       #itemPosition:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 735
    goto :goto_1
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "childRect"
    .parameter "outGrabHandleRect"

    .prologue
    .line 796
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 798
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 799
    .local v0, drawableHeight:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 800
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 801
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 802
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 804
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 805
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 807
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 809
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :cond_0
    return-void
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 864
    :cond_0
    const/4 v0, 0x1

    .line 866
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculateOffset(II)V
    .locals 10
    .parameter "prevPos"
    .parameter "newPos"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 739
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDividerHeight()I

    move-result v7

    add-int v0, v6, v7

    .line 740
    .local v0, HEIGHT:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 741
    .local v2, curTime:J
    if-le p2, p1, :cond_2

    .line 742
    add-int/lit8 v4, p1, 0x1

    .local v4, i:I
    :goto_0
    if-gt v4, p2, :cond_5

    .line 743
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v4, v6, :cond_0

    .line 742
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 745
    :cond_0
    const/4 v5, 0x0

    .line 746
    .local v5, t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 747
    .local v1, a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v6, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v6, :cond_1

    move-object v5, v1

    .line 748
    check-cast v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 753
    :goto_2
    neg-int v6, v0

    invoke-virtual {v5, v8, v8, v8, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 754
    invoke-virtual {v5, v2, v3, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JI)V

    .line 755
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_1

    .line 750
    :cond_1
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .end local v5           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-direct {v5, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .restart local v5       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    goto :goto_2

    .line 757
    .end local v1           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v4           #i:I
    .end local v5           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_2
    if-ge p2, p1, :cond_5

    .line 758
    move v4, p2

    .restart local v4       #i:I
    :goto_3
    if-ge v4, p1, :cond_5

    .line 759
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v4, v6, :cond_3

    .line 758
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 761
    :cond_3
    const/4 v5, 0x0

    .line 762
    .restart local v5       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    .line 763
    .restart local v1       #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    instance-of v6, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v6, :cond_4

    move-object v5, v1

    .line 764
    check-cast v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .line 768
    :goto_5
    invoke-virtual {v5, v8, v8, v8, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 769
    invoke-virtual {v5, v2, v3, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JI)V

    .line 770
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_4

    .line 766
    :cond_4
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    .end local v5           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    invoke-direct {v5, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .restart local v5       #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    goto :goto_5

    .line 773
    .end local v1           #a:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .end local v4           #i:I
    .end local v5           #t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    :cond_5
    return-void
.end method

.method private startSelectHighlightingAnimation()V
    .locals 7

    .prologue
    const v2, 0x3f8a3d71

    const/high16 v1, 0x3f80

    const/high16 v4, 0x3f00

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 519
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    .line 520
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v4, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v4, v3

    move v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->setScaleUpParameters(FFFFFF)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    const-wide/16 v1, 0x0

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->setAnimationTimings(JI)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 527
    return-void
.end method


# virtual methods
.method protected DrawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 4
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 854
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 855
    .local v1, pos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 856
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 857
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 860
    .end local v0           #index:I
    .end local v1           #pos:I
    :cond_0
    return-void
.end method

.method public OnLocalItemAnimatorEnd()V
    .locals 2

    .prologue
    .line 789
    const-string v0, "TwDndListView"

    const-string v1, "OnLocalItemAnimationStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_0

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 793
    :cond_0
    return-void
.end method

.method protected checkDndGrabHandle(III)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 319
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 320
    const/4 v2, 0x1

    .line 336
    :goto_0
    return v2

    .line 323
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .local v0, childRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 329
    if-eqz v0, :cond_1

    .line 331
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 334
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_0

    .line 336
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 871
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingLeft()I

    move-result v0

    .line 876
    .local v0, draggedItemX:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int v1, v2, v3

    .line 877
    .local v1, draggedItemY:I
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragBitmapTop:I

    .line 879
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-eqz v2, :cond_1

    .line 894
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_0
    :goto_0
    return-void

    .line 882
    .restart local v0       #draggedItemX:I
    .restart local v1       #draggedItemY:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 884
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 885
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 887
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 888
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 890
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 838
    .local v0, index:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 840
    .local v1, pos:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    .line 841
    const/4 v2, 0x0

    .line 845
    .end local v0           #index:I
    .end local v1           #pos:I
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChild2(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 822
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 823
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    if-ne p2, v0, :cond_1

    .line 824
    add-int/lit8 p2, p1, -0x1

    .line 832
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 826
    .restart local p2
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_0

    .line 827
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_2

    .line 828
    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    goto :goto_0

    .line 829
    :cond_2
    add-int/lit8 p2, p1, -0x1

    goto :goto_0
.end method

.method public getDndListener()Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    return-object v0
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 426
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 390
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 414
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 402
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 442
    .local v0, action:I
    if-nez v0, :cond_0

    .line 443
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    .line 445
    :cond_0
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v3

    if-le v3, v2, :cond_9

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 448
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    .line 449
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 451
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->pointToPosition(II)I

    move-result v1

    .line 452
    .local v1, itemPosition:I
    if-ne v1, v5, :cond_1

    .line 453
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 513
    .end local v1           #itemPosition:I
    :goto_0
    return v2

    .line 456
    .restart local v1       #itemPosition:I
    :cond_1
    if-ltz v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkStartDnd(III)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 461
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 462
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 465
    :cond_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 466
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 467
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 469
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 470
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    const/high16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 471
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v3, :cond_3

    .line 473
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStart()V

    .line 476
    :cond_3
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    if-nez v3, :cond_5

    .line 477
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 478
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 484
    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragViewAlpha(I)V

    .line 485
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 487
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 488
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 489
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    .line 491
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->startSelectHighlightingAnimation()V

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    goto/16 :goto_0

    .line 501
    :cond_7
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 502
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 503
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 504
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 505
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    .line 506
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 509
    :cond_8
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 513
    .end local v1           #itemPosition:I
    :cond_9
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    if-nez v15, :cond_1

    .line 540
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    .line 708
    :goto_0
    return v15

    .line 543
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 545
    .local v1, action:I
    const/4 v15, 0x2

    if-ne v1, v15, :cond_12

    .line 546
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 550
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v15

    if-nez v15, :cond_2

    .line 551
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 552
    .local v4, distance:I
    int-to-float v15, v4

    const/high16 v16, 0x4120

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    .line 553
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    .line 556
    .end local v4           #distance:I
    :cond_2
    const/4 v8, 0x0

    .line 557
    .local v8, needUpdateDirectionalChange:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 558
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 559
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 575
    :cond_3
    :goto_1
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 577
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 579
    .local v9, prevDestPosition:I
    const/4 v3, 0x0

    .line 581
    .local v3, delta:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    if-nez v15, :cond_10

    .line 582
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    if-nez v15, :cond_e

    .line 584
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 585
    .local v10, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v10, Landroid/graphics/Rect;->left:I

    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v10, Landroid/graphics/Rect;->right:I

    .line 588
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->top:I

    .line 589
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(Landroid/graphics/Rect;Z)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getBottom()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 592
    .local v2, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 593
    .local v13, temp:Landroid/view/View;
    if-eqz v13, :cond_4

    .line 594
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    sub-int/2addr v2, v15

    .line 597
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-le v15, v2, :cond_5

    .line 598
    const/high16 v15, -0x3ee0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v3, v15

    .line 629
    .end local v2           #bottom:I
    .end local v13           #temp:Landroid/view/View;
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->updateDirectionChange()V

    .line 633
    :cond_6
    const/4 v7, 0x0

    .line 636
    .local v7, needToInvalidate:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    if-eq v9, v15, :cond_7

    .line 637
    const/4 v7, 0x1

    .line 638
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->recalculateOffset(II)V

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 642
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_8

    .line 643
    const/4 v7, 0x1

    .line 646
    :cond_8
    if-eqz v3, :cond_9

    .line 647
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 648
    .local v11, savedBlockExcessScroll:Z
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 650
    const/4 v12, 0x0

    .line 665
    .local v12, savedEnableBounce:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->trackMotionScroll(II)Z

    .line 668
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 671
    .end local v11           #savedBlockExcessScroll:Z
    .end local v12           #savedEnableBounce:Z
    :cond_9
    if-eqz v7, :cond_a

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 708
    .end local v3           #delta:I
    .end local v7           #needToInvalidate:Z
    .end local v8           #needUpdateDirectionalChange:Z
    .end local v9           #prevDestPosition:I
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_a
    :goto_3
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 561
    .restart local v8       #needUpdateDirectionalChange:Z
    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    goto/16 :goto_1

    .line 563
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    if-nez v15, :cond_d

    .line 564
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 565
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 566
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 568
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 569
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    .line 570
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 571
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 601
    .restart local v3       #delta:I
    .restart local v9       #prevDestPosition:I
    :cond_e
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 602
    .restart local v10       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v10, Landroid/graphics/Rect;->left:I

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v10, Landroid/graphics/Rect;->right:I

    .line 605
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->top:I

    .line 607
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(Landroid/graphics/Rect;Z)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingTop()I

    move-result v16

    add-int v14, v15, v16

    .line 610
    .local v14, top:I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 611
    .restart local v13       #temp:Landroid/view/View;
    if-eqz v13, :cond_f

    .line 612
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    .line 615
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-ge v15, v14, :cond_5

    .line 616
    const/high16 v15, 0x4120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v3, v15

    goto/16 :goto_2

    .line 618
    .end local v10           #rect:Landroid/graphics/Rect;
    .end local v13           #temp:Landroid/view/View;
    .end local v14           #top:I
    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 619
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 620
    .restart local v10       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 621
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v10, Landroid/graphics/Rect;->left:I

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v10, Landroid/graphics/Rect;->right:I

    .line 623
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iput v15, v10, Landroid/graphics/Rect;->top:I

    .line 624
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemIndex(Landroid/graphics/Rect;Z)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    goto/16 :goto_2

    .line 626
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_11
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Current DndSwitchArea is not acceptable"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 675
    .end local v3           #delta:I
    .end local v8           #needUpdateDirectionalChange:Z
    .end local v9           #prevDestPosition:I
    :cond_12
    const/4 v15, 0x1

    if-eq v1, v15, :cond_13

    const/4 v15, 0x3

    if-ne v1, v15, :cond_a

    .line 677
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 678
    .local v5, dragView:Landroid/view/View;
    if-nez v5, :cond_14

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 679
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragBitmapTop:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 680
    .local v6, height:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    .line 682
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 683
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 685
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-nez v15, :cond_16

    if-eqz v6, :cond_16

    .line 686
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwDndListView;->positionDragingObject(I)V

    .line 688
    :cond_16
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    .line 689
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    .line 690
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    .line 692
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    .line 693
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    .line 694
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    .line 695
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mMovementDirection:I

    .line 696
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    .line 697
    const/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListViewHeight:I

    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_17

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 700
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 703
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v15, :cond_18

    .line 704
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v15}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    .line 706
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    goto/16 :goto_3
.end method

.method public positionDragingObject(I)V
    .locals 5
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 713
    .local v0, curTime:J
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 714
    .local v2, t:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
    neg-int v3, p1

    invoke-virtual {v2, v4, v4, v3, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 716
    const/high16 v3, 0x3f00

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setAnimationTimings(JF)V

    .line 718
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    .line 719
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    .line 721
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    .line 722
    return-void
.end method

.method public setDndBaseLine(I)V
    .locals 1
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 222
    if-nez p1, :cond_1

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    if-ne p1, v0, :cond_0

    .line 225
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    goto :goto_0
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0

    .line 286
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    goto :goto_0
.end method

.method public setDndMode(Z)V
    .locals 2
    .parameter "dndMode"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    .line 207
    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    .line 211
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    goto :goto_0
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 355
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 377
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 378
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 380
    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 363
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    .line 364
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    .line 268
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateDirectionChange()V
    .locals 3

    .prologue
    .line 530
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    if-ne v0, v1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    .line 533
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    .line 535
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    goto :goto_0
.end method
