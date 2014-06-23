.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsListView;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView;
.source "TwAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/touchwiz/widget/TwAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final DEBUG_BOUNCE:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final LANDSCAPE_ROTATION_LEFT_TILT_MOTION:I = 0x3

.field private static final LANDSCAPE_ROTATION_RIGHT_TILT_MOTION:I = 0x2

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PORTRAIT_TILT_MOTION:I = 0x1

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "TwAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static mCurrentOrientationMode:I


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private isActionScroll:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field protected final mBounceEnabled:Z

.field protected mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHasWindowFocusForMotion:Z

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoverTopAreaHeight:I

.field mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field private mIsDoubleTapDone:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field protected mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

.field protected mNeedToInvalidateParent:Z

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

.field private mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTiltMotionEnable:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    sput v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCurrentOrientationMode:I

    .line 155
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1076
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;)V

    .line 130
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    .line 132
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 134
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTiltMotionEnable:Z

    .line 136
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 138
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 286
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 319
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 341
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 347
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 357
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 362
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 368
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 373
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 378
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 383
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 388
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 393
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 399
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 449
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 482
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 520
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 541
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 543
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 571
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 575
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 579
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 586
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 588
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 638
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 663
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 665
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 675
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 723
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 762
    const/16 v1, 0x1e

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 764
    const/16 v1, 0x32

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 770
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    .line 772
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    .line 774
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 776
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I

    .line 778
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 780
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 785
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 790
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 795
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 800
    const/16 v1, 0xc

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    .line 805
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 810
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 906
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 915
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 923
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 926
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 927
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 4174
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4175
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4871
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 8141
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8217
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 1077
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 1079
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 1080
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1081
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 1082
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1087
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1088
    const-string v1, "TwAbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 1095
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1098
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1099
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1102
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    .line 132
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 134
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTiltMotionEnable:Z

    .line 136
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 138
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 286
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 319
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 341
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 347
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 357
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 362
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 368
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 373
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 378
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 383
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 388
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 393
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 399
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 449
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 482
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 520
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 541
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 543
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 571
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 575
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 579
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 586
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 588
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 638
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 663
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 665
    const/4 v13, 0x1

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 675
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 723
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 762
    const/16 v13, 0x1e

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    .line 764
    const/16 v13, 0x32

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    .line 770
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    .line 772
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    .line 774
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 776
    const/16 v13, 0x12c

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I

    .line 778
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 780
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 785
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 790
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 795
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 800
    const/16 v13, 0xc

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    .line 805
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 810
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 906
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 915
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 923
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 926
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 927
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 4174
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4175
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4871
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 8141
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$4;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8217
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 1105
    sget-object v13, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1108
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1109
    .local v5, d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 1110
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    :cond_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 1116
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1117
    .local v10, stackFromBottom:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setStackFromBottom(Z)V

    .line 1119
    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1120
    .local v8, scrollingCacheEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1122
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 1123
    .local v12, useTextFilter:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTextFilterEnabled(Z)V

    .line 1125
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1127
    .local v11, transcriptMode:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTranscriptMode(I)V

    .line 1129
    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 1130
    .local v4, color:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCacheColorHint(I)V

    .line 1132
    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1133
    .local v7, enableFastScroll:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 1135
    const/16 v13, 0x9

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1136
    .local v9, smoothScrollbar:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1138
    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChoiceMode(I)V

    .line 1139
    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1143
    const/16 v13, 0x2d

    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v13, :cond_1

    .line 1156
    const-string v13, "TwAbsListView"

    const-string v14, "Get MotionRecognitionManager"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-string v13, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1161
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.sec.feature.hovering_ui"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    .line 1163
    return-void

    .line 1145
    :catch_0
    move-exception v6

    .line 1146
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1147
    const-string v13, "TwAbsListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexOutOfBoundsException occured: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2282
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDoubleTapDone:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$5302(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$5402(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$5802(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$5900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$6100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$6200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    return-object v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7443
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 7444
    const/4 v2, 0x1

    .line 7462
    :cond_0
    return v2

    .line 7445
    :cond_1
    const/4 v2, 0x1

    .line 7447
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7448
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7449
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7450
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7451
    const/4 v2, 0x0

    .line 7452
    const-string v4, "TwAbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7455
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 7456
    const/4 v2, 0x0

    .line 7457
    const-string v4, "TwAbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7448
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6294
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6295
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6310
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6311
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1529
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 1530
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return v1

    .line 1532
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 1533
    goto :goto_0

    .line 1535
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6286
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 6287
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6288
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 6289
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    .line 6291
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 7217
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 7218
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7219
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7220
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 7222
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090135

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 7227
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 7229
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7230
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7231
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7232
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7233
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7234
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7235
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7236
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7237
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7238
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7239
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7240
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7242
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 7243
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301e1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7247
    :goto_0
    return-void

    .line 7245
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301e2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 6984
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 6985
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6987
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2993
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2995
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2996
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2998
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7466
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    .line 7467
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 7468
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 7470
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 7031
    sparse-switch p2, :sswitch_data_0

    .line 7064
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7033
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7034
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7035
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7036
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7068
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 7069
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 7070
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7039
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7040
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7041
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7042
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7043
    .restart local v1       #dY:I
    goto :goto_0

    .line 7045
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7046
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7047
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7048
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7049
    .restart local v1       #dY:I
    goto :goto_0

    .line 7051
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7052
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7053
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7054
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7055
    .restart local v1       #dY:I
    goto :goto_0

    .line 7058
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7059
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7060
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7061
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7062
    .restart local v1       #dY:I
    goto :goto_0

    .line 7031
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1168
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setClickable(Z)V

    .line 1169
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFocusableInTouchMode(Z)V

    .line 1170
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setWillNotDraw(Z)V

    .line 1171
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1172
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1174
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 1175
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    .line 1176
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    .line 1177
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    .line 1178
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    .line 1179
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    .line 1181
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    .line 1183
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 1184
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 1188
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1189
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    const-string v2, "android.widget.AbsListView"

    const-wide/16 v4, 0x6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1192
    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4988
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4989
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4993
    :goto_0
    return-void

    .line 4991
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4996
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4997
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4999
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 8648
    const-string v0, "TwAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8649
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 5103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5104
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5105
    .local v1, pointerId:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 5109
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 5110
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5112
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 5113
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5118
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 5120
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 5109
    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7003
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7004
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7005
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLocationOnScreen([I)V

    .line 7008
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7009
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7010
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7015
    :goto_0
    return-void

    .line 7013
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2897
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 5002
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5003
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5006
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 3

    .prologue
    .line 8177
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->log(Ljava/lang/String;)V

    .line 8185
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8186
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 8189
    :cond_0
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 8122
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8123
    .local v1, size:I
    if-lez v1, :cond_2

    .line 8125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8126
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8127
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 8128
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8134
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 8125
    .restart local v0       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8132
    .end local v2           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 8134
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30
    .parameter "y"

    .prologue
    .line 3768
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v29, p1, v3

    .line 3769
    .local v29, rawDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    sub-int v17, v29, v3

    .line 3770
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3772
    .local v18, incrementalDeltaY:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 3780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3782
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3785
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3791
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_1

    .line 3793
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3794
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3795
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3800
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 3801
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3810
    .local v19, motionIndex:I
    :goto_1
    const/16 v22, 0x0

    .line 3811
    .local v22, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3812
    .local v21, motionView:Landroid/view/View;
    if-eqz v21, :cond_2

    .line 3813
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3817
    :cond_2
    const/16 v16, 0x0

    .line 3818
    .local v16, atEdge:Z
    if-eqz v18, :cond_3

    .line 3819
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3823
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3824
    if-eqz v21, :cond_7

    .line 3827
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3828
    .local v23, motionViewRealTop:I
    if-eqz v16, :cond_6

    .line 3831
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3833
    .local v5, overscroll:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3834
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3841
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3842
    .local v27, overscrollMode:I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3844
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 3845
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3846
    if-lez v29, :cond_b

    .line 3847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3859
    .end local v5           #overscroll:I
    .end local v27           #overscrollMode:I
    :cond_6
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3860
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3862
    .end local v23           #motionViewRealTop:I
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 3931
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    :cond_8
    :goto_3
    return-void

    .end local v18           #incrementalDeltaY:I
    :cond_9
    move/from16 v18, v17

    .line 3770
    goto/16 :goto_0

    .line 3807
    .restart local v18       #incrementalDeltaY:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19       #motionIndex:I
    goto/16 :goto_1

    .line 3851
    .restart local v5       #overscroll:I
    .restart local v16       #atEdge:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v22       #motionViewPrevTop:I
    .restart local v23       #motionViewRealTop:I
    .restart local v27       #overscrollMode:I
    :cond_b
    if-gez v29, :cond_6

    .line 3852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_2

    .line 3864
    .end local v5           #overscroll:I
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    .end local v23           #motionViewRealTop:I
    .end local v27           #overscrollMode:I
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 3865
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v26, v0

    .line 3867
    .local v26, oldScroll:I
    sub-int v25, v26, v18

    .line 3868
    .local v25, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_15

    const/16 v24, 0x1

    .line 3870
    .local v24, newDirection:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    if-nez v3, :cond_d

    .line 3871
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 3874
    :cond_d
    move/from16 v0, v18

    neg-int v8, v0

    .line 3875
    .local v8, overScrollDistance:I
    if-gez v25, :cond_e

    if-gez v26, :cond_f

    :cond_e
    if-lez v25, :cond_16

    if-gtz v26, :cond_16

    .line 3876
    :cond_f
    move/from16 v0, v26

    neg-int v8, v0

    .line 3877
    add-int v18, v18, v8

    .line 3882
    :goto_5
    if-eqz v8, :cond_12

    .line 3883
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3885
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3886
    .restart local v27       #overscrollMode:I
    if-eqz v27, :cond_10

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3888
    :cond_10
    if-lez v29, :cond_17

    .line 3889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3899
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3903
    .end local v27           #overscrollMode:I
    :cond_12
    if-eqz v18, :cond_14

    .line 3905
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3906
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentIfNeeded()V

    .line 3910
    if-eqz v18, :cond_13

    .line 3911
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    .line 3914
    :cond_13
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3919
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 3921
    .local v20, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3922
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3923
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 3924
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3925
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 3927
    .end local v20           #motionPosition:I
    .end local v21           #motionView:Landroid/view/View;
    :cond_14
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 3928
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3868
    .end local v8           #overScrollDistance:I
    .end local v24           #newDirection:I
    :cond_15
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 3879
    .restart local v8       #overScrollDistance:I
    .restart local v24       #newDirection:I
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3893
    .restart local v27       #overscrollMode:I
    :cond_17
    if-gez v29, :cond_11

    .line 3894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_6

    .line 3923
    .end local v27           #overscrollMode:I
    .restart local v20       #motionPosition:I
    .restart local v21       #motionView:Landroid/view/View;
    :cond_18
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 6994
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6995
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 6996
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 6998
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkFocus()V

    .line 7000
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3726
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 3727
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3728
    .local v1, distance:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v6, :cond_4

    move v4, v8

    .line 3729
    .local v4, overscroll:Z
    :goto_0
    if-nez v4, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_7

    .line 3730
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 3731
    if-eqz v4, :cond_5

    .line 3732
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3733
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3738
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3744
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 3745
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3747
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3748
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3749
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 3750
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3752
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 3756
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3757
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 3758
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3760
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 3764
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 3728
    goto :goto_0

    .line 3735
    .restart local v4       #overscroll:Z
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3736
    if-lez v0, :cond_6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    :goto_3
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 3764
    goto :goto_2
.end method

.method private unregisterMotionListener()V
    .locals 2

    .prologue
    .line 8195
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->log(Ljava/lang/String;)V

    .line 8196
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8197
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 8199
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1978
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1980
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1699
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1700
    packed-switch p2, :pswitch_data_0

    .line 1714
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1715
    :cond_1
    :goto_0
    return-void

    .line 1702
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1703
    .local v0, focusable:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1704
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #focusable:Landroid/view/View;
    :cond_2
    move-object v0, p0

    .line 1702
    goto :goto_1

    .line 1708
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isAccessibilityFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1709
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1700
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5127
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    .line 5128
    .local v2, count:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5129
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5131
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 5142
    :cond_0
    return-void

    .line 5135
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5136
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5137
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5138
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5140
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 7327
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 7289
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 7207
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 7348
    instance-of v0, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1335
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1336
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 7253
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7254
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 7256
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7257
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 7260
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2371
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 2372
    .local v1, count:I
    if-lez v1, :cond_2

    .line 2373
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_3

    .line 2374
    mul-int/lit8 v2, v1, 0x64

    .line 2376
    .local v2, extent:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2377
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2378
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2379
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2380
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 2383
    :cond_0
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2384
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2385
    .local v0, bottom:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2386
    if-lez v3, :cond_1

    .line 2387
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v7

    sub-int v7, v0, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v3

    sub-int/2addr v2, v7

    .line 2394
    :cond_1
    move v4, v2

    .line 2414
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return v4

    .line 2411
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 2419
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2420
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2421
    .local v0, childCount:I
    if-ltz v2, :cond_4

    if-lez v0, :cond_4

    .line 2425
    const/4 v5, 0x0

    .line 2426
    .local v5, retVal:I
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v9, :cond_1

    .line 2427
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2428
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2429
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2430
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2431
    mul-int/lit8 v9, v2, 0x64

    mul-int/lit8 v10, v6, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2464
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v5

    .line 2453
    .restart local v5       #retVal:I
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 2454
    .local v1, count:I
    if-nez v2, :cond_2

    .line 2455
    const/4 v4, 0x0

    .line 2461
    .local v4, index:I
    :goto_1
    int-to-float v8, v2

    int-to-float v9, v0

    int-to-float v10, v4

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v5, v8

    goto :goto_0

    .line 2456
    .end local v4           #index:I
    :cond_2
    add-int v8, v2, v0

    if-ne v8, v1, :cond_3

    .line 2457
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 2459
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v8, v0, 0x2

    add-int v4, v2, v8

    .restart local v4       #index:I
    goto :goto_1

    .end local v1           #count:I
    .end local v4           #index:I
    .end local v5           #retVal:I
    :cond_4
    move v5, v8

    .line 2464
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2470
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2471
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2472
    .local v0, result:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2474
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2479
    :cond_0
    :goto_0
    return v0

    .line 2477
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 6768
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6770
    const/4 v7, 0x0

    .line 6771
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 6772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 6773
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6775
    .local v3, lastPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 6776
    .local v11, lastPosId:J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 6778
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 6779
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6780
    .local v9, end:I
    const/4 v10, 0x0

    .line 6781
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 6782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 6783
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 6784
    const/4 v10, 0x1

    .line 6785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6786
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6791
    .end local v13           #searchId:J
    :cond_0
    if-nez v10, :cond_1

    .line 6792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6793
    add-int/lit8 v8, v8, -0x1

    .line 6794
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 6795
    const/4 v7, 0x1

    .line 6796
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 6797
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6771
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 6781
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6802
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 6806
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 6807
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 6809
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 3380
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7502
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 4179
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4181
    .local v0, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 4182
    .local v3, cd:Landroid/content/ClipDescription;
    if-eqz v3, :cond_0

    const-string v12, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 4183
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    .line 4339
    :goto_0
    return v12

    .line 4187
    :cond_1
    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    .line 4188
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v12, :cond_2

    .line 4189
    const/4 v12, 0x1

    const/high16 v13, 0x41c8

    iget-object v14, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    .line 4193
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 4196
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 4197
    .local v10, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 4198
    .local v11, y:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    .line 4199
    .local v5, childCount:I
    const/4 v6, 0x0

    .line 4200
    .local v6, contentBottom:I
    const/4 v8, 0x0

    .line 4201
    .local v8, lastChildBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v7

    .line 4205
    .local v7, count:I
    if-eqz v5, :cond_5

    .line 4206
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    .line 4210
    :cond_5
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v12, v7

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v12, v13, :cond_f

    const/4 v1, 0x1

    .line 4212
    .local v1, canScrollDown:Z
    :goto_1
    if-nez v1, :cond_7

    if-lez v7, :cond_7

    .line 4213
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4214
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget-object v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v13

    iget-object v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_10

    :cond_6
    const/4 v1, 0x1

    .line 4219
    .end local v4           #child:Landroid/view/View;
    :cond_7
    :goto_2
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v12, :cond_11

    const/4 v2, 0x1

    .line 4221
    .local v2, canScrollUp:Z
    :goto_3
    if-nez v2, :cond_8

    .line 4222
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_8

    .line 4223
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4224
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v12, v13, :cond_12

    const/4 v2, 0x1

    .line 4229
    .end local v4           #child:Landroid/view/View;
    :cond_8
    :goto_4
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-le v11, v12, :cond_9

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v11, v12, :cond_a

    :cond_9
    if-lez v10, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getRight()I

    move-result v12

    if-gt v10, v12, :cond_a

    if-nez v2, :cond_13

    if-nez v1, :cond_13

    .line 4232
    :cond_a
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4233
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4236
    :cond_b
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    if-eqz v12, :cond_d

    .line 4237
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4240
    :cond_d
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4241
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4242
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4245
    const/4 v12, 0x2

    if-ne v0, v12, :cond_e

    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_e

    .line 4246
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4247
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4250
    :cond_e
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4210
    .end local v1           #canScrollDown:Z
    .end local v2           #canScrollUp:Z
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 4214
    .restart local v1       #canScrollDown:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_10
    const/4 v1, 0x0

    goto :goto_2

    .line 4219
    .end local v4           #child:Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    goto :goto_3

    .line 4224
    .restart local v2       #canScrollUp:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto :goto_4

    .line 4254
    .end local v4           #child:Landroid/view/View;
    :cond_13
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-nez v12, :cond_14

    .line 4255
    new-instance v12, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    .line 4257
    :cond_14
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_15

    .line 4258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4260
    :cond_15
    packed-switch v0, :pswitch_data_0

    .line 4339
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4262
    :pswitch_0
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4263
    if-ltz v11, :cond_17

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v12, :cond_17

    .line 4265
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4266
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4269
    .local v9, msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4270
    const/4 v12, 0x2

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4271
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4273
    .end local v9           #msg:Landroid/os/Message;
    :cond_17
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v11, v12, :cond_16

    if-gt v11, v6, :cond_16

    .line 4275
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4276
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4278
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4279
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4280
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4281
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4287
    .end local v9           #msg:Landroid/os/Message;
    :pswitch_1
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_18

    .line 4288
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4291
    :cond_18
    if-ltz v11, :cond_19

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v12, :cond_19

    .line 4293
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4294
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4296
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4297
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4298
    const/4 v12, 0x2

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4299
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4301
    .end local v9           #msg:Landroid/os/Message;
    :cond_19
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v11, v12, :cond_16

    if-gt v11, v6, :cond_16

    .line 4303
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4304
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4306
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4307
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4308
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4309
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4316
    .end local v9           #msg:Landroid/os/Message;
    :pswitch_2
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_1a

    .line 4317
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4318
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4324
    :cond_1a
    :pswitch_3
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 4325
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4327
    :cond_1b
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDragScrolled:Z

    .line 4329
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4330
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4331
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4332
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4260
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 2901
    const/4 v2, 0x0

    .line 2902
    .local v2, saveCount:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2903
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2904
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2905
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    .line 2906
    .local v3, scrollX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 2907
    .local v4, scrollY:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2909
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 2912
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 2913
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 2914
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2917
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2919
    if-eqz v1, :cond_2

    .line 2920
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2923
    :cond_2
    if-eqz v0, :cond_3

    .line 2924
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2925
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 2927
    :cond_3
    return-void

    .line 2902
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 3998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "pen_hovering"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v9, 0x1

    .line 3999
    .local v9, isHoveringOn:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "pen_hovering_list_scroll"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v8, 0x1

    .line 4001
    .local v8, isHoverListScrollOn:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    if-nez v14, :cond_0

    .line 4002
    new-instance v14, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    .line 4004
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isHoveringUIEnabled:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    if-eqz v14, :cond_1

    if-eqz v9, :cond_1

    if-nez v8, :cond_4

    .line 4005
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 4169
    :goto_2
    return v14

    .line 3998
    .end local v8           #isHoverListScrollOn:Z
    .end local v9           #isHoveringOn:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 3999
    .restart local v9       #isHoveringOn:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 4008
    .restart local v8       #isHoverListScrollOn:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 4009
    .local v12, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 4010
    .local v13, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v4

    .line 4011
    .local v4, childCount:I
    const/4 v5, 0x0

    .line 4012
    .local v5, contentBottom:I
    const/4 v10, 0x0

    .line 4013
    .local v10, lastChildBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    .line 4017
    .local v6, count:I
    if-eqz v4, :cond_5

    .line 4018
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    .line 4022
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_e

    const/4 v1, 0x1

    .line 4024
    .local v1, canScrollDown:Z
    :goto_3
    if-nez v1, :cond_6

    if-lez v6, :cond_6

    .line 4025
    add-int/lit8 v14, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4026
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-le v14, v15, :cond_f

    const/4 v1, 0x1

    .line 4030
    .end local v3           #child:Landroid/view/View;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v14, :cond_10

    const/4 v2, 0x1

    .line 4032
    .local v2, canScrollUp:Z
    :goto_5
    if-nez v2, :cond_7

    .line 4033
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_7

    .line 4034
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4035
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-ge v14, v15, :cond_11

    const/4 v2, 0x1

    .line 4039
    .end local v3           #child:Landroid/view/View;
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    if-le v13, v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    sub-int v14, v5, v14

    if-lt v13, v14, :cond_a

    :cond_8
    if-lez v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_a

    if-nez v2, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    .line 4042
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 4043
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4045
    const/4 v14, 0x1

    const/4 v15, -0x1

    :try_start_0
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4051
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    if-eqz v14, :cond_d

    .line 4052
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4054
    const/4 v14, 0x1

    const/4 v15, -0x1

    :try_start_1
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4060
    :cond_d
    :goto_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4061
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4062
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4064
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 4022
    .end local v1           #canScrollDown:Z
    .end local v2           #canScrollUp:Z
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 4026
    .restart local v1       #canScrollDown:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 4030
    .end local v3           #child:Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 4035
    .restart local v2       #canScrollUp:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    .line 4046
    .end local v3           #child:Landroid/view/View;
    :catch_0
    move-exception v7

    .line 4047
    .local v7, e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4055
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 4056
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4067
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v14, :cond_13

    .line 4068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4070
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 4169
    :cond_14
    :goto_9
    :pswitch_0
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 4072
    :pswitch_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4074
    if-ltz v13, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    if-gt v13, v14, :cond_15

    .line 4076
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_14

    .line 4077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4079
    const/16 v14, 0xb

    const/4 v15, -0x1

    :try_start_2
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4083
    :goto_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4084
    .local v11, msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4085
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 4080
    .end local v11           #msg:Landroid/os/Message;
    :catch_2
    move-exception v7

    .line 4081
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4088
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_15
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    sub-int v14, v5, v14

    if-lt v13, v14, :cond_14

    if-gt v13, v5, :cond_14

    .line 4090
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_14

    .line 4091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4093
    const/16 v14, 0xf

    const/4 v15, -0x1

    :try_start_3
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4097
    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4098
    .restart local v11       #msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4099
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 4094
    .end local v11           #msg:Landroid/os/Message;
    :catch_3
    move-exception v7

    .line 4095
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4107
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v14, :cond_16

    .line 4108
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4109
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4110
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 4113
    :cond_16
    if-ltz v13, :cond_18

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverTopAreaHeight:I

    if-gt v13, v14, :cond_18

    .line 4115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_14

    .line 4116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4117
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_17

    .line 4119
    const/16 v14, 0xb

    const/4 v15, -0x1

    :try_start_4
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4124
    :cond_17
    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4125
    .restart local v11       #msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4126
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 4120
    .end local v11           #msg:Landroid/os/Message;
    :catch_4
    move-exception v7

    .line 4121
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4129
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_18
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverBottomAreaHeight:I

    sub-int v14, v5, v14

    if-lt v13, v14, :cond_14

    if-gt v13, v5, :cond_14

    .line 4131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_14

    .line 4132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4134
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_19

    .line 4136
    const/16 v14, 0xf

    const/4 v15, -0x1

    :try_start_5
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4141
    :cond_19
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 4142
    .restart local v11       #msg:Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 4143
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollDirection:I

    .line 4144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    invoke-virtual {v14, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 4137
    .end local v11           #msg:Landroid/os/Message;
    :catch_5
    move-exception v7

    .line 4138
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4150
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 4151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4155
    :cond_1a
    const/4 v14, 0x1

    const/4 v15, -0x1

    :try_start_6
    invoke-static {v14, v15}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4160
    :goto_e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverRecognitionStartTime:I

    .line 4161
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollStartTime:I

    .line 4162
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsHoverOverscrolled:Z

    .line 4163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    .line 4164
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 4156
    :catch_6
    move-exception v7

    .line 4157
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v14, "TwAbsListView"

    const-string v15, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4070
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 3587
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 4896
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4913
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v6, :cond_3

    .line 4914
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 4915
    .local v4, scrollY:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4916
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4917
    .local v2, restoreCount:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 4918
    .local v1, leftPadding:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 4919
    .local v3, rightPadding:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 4929
    .local v5, width:I
    int-to-float v6, v1

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4933
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 4934
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4935
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4937
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4939
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v5           #width:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 4940
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4941
    .restart local v2       #restoreCount:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 4942
    .restart local v1       #leftPadding:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 4943
    .restart local v3       #rightPadding:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 4944
    .restart local v5       #width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v0

    .line 4954
    .local v0, height:I
    neg-int v6, v5

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4957
    const/high16 v6, 0x4334

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4958
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6, v5, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 4959
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4960
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4962
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4965
    .end local v0           #height:I
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v4           #scrollY:I
    .end local v5           #width:I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v6, :cond_4

    .line 4966
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 4967
    .restart local v4       #scrollY:I
    if-eqz v4, :cond_5

    .line 4969
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4970
    .restart local v2       #restoreCount:I
    int-to-float v6, v4

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4971
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 4972
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4977
    .end local v2           #restoreCount:I
    .end local v4           #scrollY:I
    :cond_4
    :goto_0
    return-void

    .line 4974
    .restart local v4       #scrollY:I
    :cond_5
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3109
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->drawableStateChanged()V

    .line 3110
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3111
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8203
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unregisterMotionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8205
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8207
    return-void

    .line 8205
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 6619
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 6620
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 6625
    :cond_0
    :goto_0
    return v1

    .line 6624
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v1

    .line 6625
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "child"
    .parameter "descendant"

    .prologue
    .line 1834
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 1835
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1836
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1838
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 1719
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 10
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 1724
    packed-switch p2, :pswitch_data_0

    .line 1826
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 1727
    :pswitch_0
    if-ne p1, p0, :cond_2

    .line 1728
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 1729
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 1730
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1731
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1729
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1735
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-super {p0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1738
    .end local v1           #childCount:I
    .end local v5           #i:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1739
    .local v4, currentPosition:I
    if-ltz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v9

    if-lt v4, v9, :cond_4

    .line 1740
    :cond_3
    invoke-super {p0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1743
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1744
    .local v2, currentItem:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    .line 1745
    instance-of v9, v2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_5

    move-object v3, v2

    .line 1746
    check-cast v3, Landroid/view/ViewGroup;

    .line 1747
    .local v3, currentItemGroup:Landroid/view/ViewGroup;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, v3, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 1749
    .local v6, nextFocus:Landroid/view/View;
    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, p1, :cond_5

    move-object v0, v6

    .line 1751
    goto :goto_0

    .line 1756
    .end local v3           #currentItemGroup:Landroid/view/ViewGroup;
    .end local v6           #nextFocus:Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    add-int/lit8 v7, v9, 0x1

    .line 1757
    .local v7, nextPosition:I
    move v5, v7

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 1758
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1759
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 1757
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1764
    .end local v0           #child:Landroid/view/View;
    :cond_6
    invoke-super {p0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1769
    .end local v2           #currentItem:Landroid/view/View;
    .end local v4           #currentPosition:I
    .end local v5           #i:I
    .end local v7           #nextPosition:I
    :pswitch_1
    if-ne p1, p0, :cond_9

    .line 1770
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 1771
    .restart local v1       #childCount:I
    add-int/lit8 v5, v1, -0x1

    .restart local v5       #i:I
    :goto_3
    if-ltz v5, :cond_8

    .line 1772
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1773
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7

    .line 1774
    invoke-super {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1771
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1777
    .end local v0           #child:Landroid/view/View;
    :cond_8
    invoke-super {p0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1780
    .end local v1           #childCount:I
    .end local v5           #i:I
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1781
    .restart local v4       #currentPosition:I
    if-ltz v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v9

    if-lt v4, v9, :cond_b

    .line 1782
    :cond_a
    invoke-super {p0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1785
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1790
    .restart local v2       #currentItem:Landroid/view/View;
    if-ne v2, p1, :cond_e

    .line 1791
    const/4 v2, 0x0

    .line 1792
    const/4 p1, 0x0

    .line 1794
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    add-int/lit8 v8, v9, -0x1

    .line 1795
    .local v8, previousPosition:I
    move v5, v8

    .restart local v5       #i:I
    :goto_4
    if-ltz v5, :cond_c

    .line 1796
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1797
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_d

    .line 1798
    move-object v2, v0

    .line 1802
    .end local v0           #child:Landroid/view/View;
    :cond_c
    if-nez v2, :cond_e

    move-object v0, p0

    .line 1803
    goto/16 :goto_0

    .line 1795
    .restart local v0       #child:Landroid/view/View;
    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 1807
    .end local v0           #child:Landroid/view/View;
    .end local v5           #i:I
    .end local v8           #previousPosition:I
    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_10

    .line 1809
    instance-of v9, v2, Landroid/view/ViewGroup;

    if-eqz v9, :cond_f

    move-object v3, v2

    .line 1810
    check-cast v3, Landroid/view/ViewGroup;

    .line 1811
    .restart local v3       #currentItemGroup:Landroid/view/ViewGroup;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, v3, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 1813
    .restart local v6       #nextFocus:Landroid/view/View;
    if-eqz v6, :cond_f

    if-eq v6, v3, :cond_f

    if-eq v6, p1, :cond_f

    move-object v0, v6

    .line 1815
    goto/16 :goto_0

    .end local v3           #currentItemGroup:Landroid/view/ViewGroup;
    .end local v6           #nextFocus:Landroid/view/View;
    :cond_f
    move-object v0, v2

    .line 1820
    goto/16 :goto_0

    .line 1823
    :cond_10
    invoke-super {p0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1724
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 7338
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 7343
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2513
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 2514
    .local v1, count:I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2515
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 2535
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 2518
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2519
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 2530
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2533
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    .line 2534
    .local v4, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2535
    .local v3, fadeLength:F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2951
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getBounceController()Lcom/sec/android/touchwiz/widget/TwBounceController;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7409
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1310
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1311
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1322
    :cond_1
    return-object v3

    .line 1314
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1315
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1316
    .local v0, count:I
    new-array v3, v0, [J

    .line 1318
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1319
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1278
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1282
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1298
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1473
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3501
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1966
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1969
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1970
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1975
    :goto_0
    return-void

    .line 1973
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 6559
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 6548
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2936
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2946
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2652
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2653
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2655
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 7377
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2323
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2484
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2485
    .local v0, count:I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2486
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 2507
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 2489
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2490
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 2497
    :cond_2
    const/4 v3, 0x0

    .line 2503
    .local v3, top:I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2506
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2507
    .local v2, fadeLength:F
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2941
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 7372
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1603
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 6813
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 6814
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 6815
    .local v4, lastHandledItemCount:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 6817
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6818
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->confirmCheckedPositionsById()V

    .line 6821
    :cond_0
    if-lez v1, :cond_e

    .line 6826
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 6829
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 6831
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 6832
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 6960
    :cond_1
    :goto_0
    return-void

    .line 6834
    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 6835
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 6836
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 6837
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 6840
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 6841
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 6842
    .local v5, listBottom:I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6843
    .local v3, lastChild:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6844
    .local v2, lastBottom:I
    :goto_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 6846
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2           #lastBottom:I
    :cond_4
    move v2, v5

    .line 6843
    goto :goto_1

    .line 6852
    .restart local v2       #lastBottom:I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 6855
    .end local v0           #childCount:I
    .end local v2           #lastBottom:I
    .end local v3           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 6914
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 6917
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 6920
    .local v6, newPos:I
    if-lt v6, v1, :cond_8

    .line 6921
    add-int/lit8 v6, v1, -0x1

    .line 6923
    :cond_8
    if-gez v6, :cond_9

    .line 6924
    const/4 v6, 0x0

    .line 6928
    :cond_9
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6930
    .local v7, selectablePos:I
    if-ltz v7, :cond_c

    .line 6931
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 6857
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 6866
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 6867
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 6875
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findSyncPosition()I

    move-result v6

    .line 6876
    .restart local v6       #newPos:I
    if-ltz v6, :cond_7

    .line 6879
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6880
    .restart local v7       #selectablePos:I
    if-ne v7, v6, :cond_7

    .line 6882
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 6884
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 6888
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 6898
    :goto_2
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6894
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 6907
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_1
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 6908
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 6935
    .restart local v6       #newPos:I
    .restart local v7       #selectablePos:I
    :cond_c
    invoke-virtual {p0, v6, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6936
    if-ltz v7, :cond_e

    .line 6937
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6944
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :cond_d
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 6952
    :cond_e
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 6953
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 6954
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 6955
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 6956
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 6957
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 6958
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 6959
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 6952
    goto :goto_3

    .line 6855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 7266
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 6573
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 6574
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 6575
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 6577
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 6578
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 6580
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 6581
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 6582
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 6584
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 6632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 6633
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 6634
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 6635
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 6636
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1681
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 1694
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onScrollChanged(IIII)V

    .line 1695
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 1

    .prologue
    .line 1595
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1614
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7075
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1262
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2931
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1917
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1663
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1991
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1960
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3157
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->jumpDrawablesToCurrentState()V

    .line 3158
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3160
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3054
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3090
    :cond_0
    :goto_0
    return-void

    .line 3058
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3059
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3060
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3063
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3065
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3066
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3068
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3070
    :cond_3
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3072
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v1

    .line 3073
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3074
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3075
    if-eqz v1, :cond_6

    .line 3076
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3082
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3083
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 3084
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    .line 3086
    :cond_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3087
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3079
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2613
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2720
    aput-boolean v4, p2, v4

    .line 2723
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 2726
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 2732
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2734
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2735
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2743
    :cond_0
    if-eq v0, v1, :cond_5

    .line 2744
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2745
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 2746
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2777
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2778
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    if-nez v2, :cond_2

    .line 2779
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    .line 2781
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAccessibilityDelegate:Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    move-object v2, v0

    .line 2784
    :cond_4
    return-object v2

    .line 2753
    :cond_5
    aput-boolean v5, p2, v4

    .line 2754
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 2757
    .end local v0           #child:Landroid/view/View;
    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2760
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 2764
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 2765
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2768
    :cond_7
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 2769
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3164
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onAttachedToWindow()V

    .line 3166
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3167
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3168
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 3169
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3172
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3173
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 3174
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3177
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 3178
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 3179
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 3181
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    .line 3203
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 3116
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3118
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3147
    :cond_0
    :goto_0
    return-object v3

    .line 3124
    :cond_1
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3132
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3133
    .local v3, state:[I
    const/4 v0, -0x1

    .line 3134
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 3135
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3136
    move v0, v2

    .line 3142
    :cond_2
    if-ltz v0, :cond_0

    .line 3143
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3134
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 7154
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7158
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 7159
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7160
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7161
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7194
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7195
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7196
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 7198
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3207
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDetachedFromWindow()V

    .line 3210
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 3213
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 3215
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3216
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3217
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3218
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3219
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3222
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 3223
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3224
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 3227
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3228
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3229
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3232
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3233
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3234
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3237
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3238
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3241
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3242
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 3245
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3246
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3249
    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3250
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3253
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3254
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3255
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3257
    :cond_8
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    .line 3273
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 6964
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDisplayHint(I)V

    .line 6965
    sparse-switch p1, :sswitch_data_0

    .line 6977
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    .line 6978
    return-void

    .line 6967
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6968
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_0

    .line 6972
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6973
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    goto :goto_0

    .line 6977
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6965
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 7330
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7331
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 7332
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 7334
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2331
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2332
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2333
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2337
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 2338
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 2340
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 2342
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 4875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 4876
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4891
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 4878
    :pswitch_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4879
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4880
    .local v1, vscroll:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 4881
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 4882
    .local v0, delta:I
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 4883
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4876
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7270
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7272
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 7273
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 7282
    :cond_0
    :goto_0
    return-void

    .line 7277
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7278
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onGlowRecedeAnimationStart()V
    .locals 0

    .prologue
    .line 8669
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1864
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1865
    const-class v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1866
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1870
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1871
    const-class v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1873
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1874
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1876
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1877
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1880
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5024
    .local v0, action:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v10, :cond_0

    .line 5025
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v10, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 5026
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 5099
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 5031
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 5099
    goto :goto_0

    .line 5033
    :pswitch_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5034
    .local v4, touchMode:I
    const/4 v10, 0x6

    if-eq v4, v10, :cond_2

    const/4 v10, 0x5

    if-ne v4, v10, :cond_3

    .line 5035
    :cond_2
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 5039
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 5040
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 5041
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5043
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v2

    .line 5044
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_4

    if-ltz v2, :cond_4

    .line 5048
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5049
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 5050
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 5051
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 5052
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 5053
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5054
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 5056
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 5057
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initOrResetVelocityTracker()V

    .line 5058
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5059
    if-ne v4, v12, :cond_1

    goto :goto_0

    .line 5066
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    .line 5068
    :pswitch_3
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 5069
    .local v3, pointerIndex:I
    if-ne v3, v11, :cond_5

    .line 5070
    const/4 v3, 0x0

    .line 5071
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5073
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 5074
    .restart local v7       #y:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5075
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5076
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 5086
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5087
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 5088
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 5089
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 5094
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 5031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 5066
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3543
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3548
    sparse-switch p1, :sswitch_data_0

    .line 3578
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 3551
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3554
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3557
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3558
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3559
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3560
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3562
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    goto :goto_1

    .line 3570
    .end local v0           #view:Landroid/view/View;
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v1, :cond_3

    .line 3571
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 3572
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 3574
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    goto :goto_0

    .line 3548
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2569
    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onLayout(ZIIII)V

    .line 2570
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2571
    if-eqz p1, :cond_1

    .line 2572
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2573
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2574
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2576
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2579
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    if-eq v2, v3, :cond_2

    .line 2580
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onItemCountChanged(II)V

    .line 2583
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 2584
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2586
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollMax:I

    .line 2587
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 2542
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2543
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->useDefaultSelector()V

    .line 2545
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2546
    .local v4, listPadding:Landroid/graphics/Rect;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2547
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2548
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2549
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2553
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2554
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2555
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2556
    .local v3, listBottom:I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2557
    .local v2, lastChild:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2558
    .local v1, lastBottom:I
    :goto_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 2561
    .end local v0           #childCount:I
    .end local v1           #lastBottom:I
    .end local v2           #lastChild:Landroid/view/View;
    .end local v3           #listBottom:I
    :cond_1
    return-void

    .restart local v0       #childCount:I
    .restart local v2       #lastChild:Landroid/view/View;
    .restart local v3       #listBottom:I
    :cond_2
    move v1, v3

    .line 2557
    goto :goto_0

    .line 2558
    .restart local v1       #lastBottom:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 4862
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 4863
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onScrollChanged(IIII)V

    .line 4864
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 4865
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentIfNeeded()V

    .line 4867
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 4869
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7508
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 7509
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7510
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 7511
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7512
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7519
    :cond_0
    :goto_0
    return v0

    .line 7515
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 7516
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7517
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 7531
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2271
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2272
    instance-of v1, p1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2277
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 2275
    check-cast v0, Landroid/os/Bundle;

    .line 2276
    .local v0, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState2(Landroid/os/Bundle;)V
    .locals 7
    .parameter "b"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2222
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2223
    const-class v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2225
    const-string v1, "com.sec.android.touchwiz.widget.twabslistview.savedstate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 2228
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    .line 2230
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 2231
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 2232
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 2233
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 2234
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 2235
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    .line 2249
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2251
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2252
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2255
    :cond_1
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2256
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2259
    :cond_2
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 2261
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2263
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2266
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 2267
    return-void

    .line 2236
    :cond_4
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 2237
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 2240
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 2241
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2242
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 2243
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 2244
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 2245
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 2246
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2214
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2215
    .local v0, ignoreThis:Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2216
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 2217
    return-object v1
.end method

.method public onSaveInstanceState2(Landroid/os/Bundle;)V
    .locals 14
    .parameter "b"

    .prologue
    .line 2137
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 2139
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-direct {v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;-><init>()V

    .line 2141
    .local v8, ss:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_2

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v11, :cond_2

    const/4 v3, 0x1

    .line 2142
    .local v3, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 2143
    .local v6, selectedId:J
    iput-wide v6, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    .line 2144
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    .line 2146
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-ltz v11, :cond_3

    .line 2148
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2149
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 2150
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 2177
    :goto_1
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2178
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v11, :cond_0

    .line 2179
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2180
    .local v9, textFilter:Landroid/widget/EditText;
    if-eqz v9, :cond_0

    .line 2181
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2182
    .local v1, filterText:Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 2183
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2188
    .end local v1           #filterText:Landroid/text/Editable;
    .end local v9           #textFilter:Landroid/widget/EditText;
    :cond_0
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    .line 2190
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v11, :cond_1

    .line 2191
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v11

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2193
    :cond_1
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v11, :cond_8

    .line 2194
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2195
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v11}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2196
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_7

    .line 2197
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v11, v12, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2196
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2141
    .end local v0           #count:I
    .end local v3           #haveChildren:Z
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6           #selectedId:J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2152
    .restart local v3       #haveChildren:Z
    .restart local v6       #selectedId:J
    :cond_3
    if-eqz v3, :cond_5

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v11, :cond_5

    .line 2162
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2163
    .local v10, v:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2164
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2165
    .local v2, firstPos:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lt v2, v11, :cond_4

    .line 2166
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v11, -0x1

    .line 2168
    :cond_4
    iput v2, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 2169
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 2171
    .end local v2           #firstPos:I
    .end local v10           #v:Landroid/view/View;
    :cond_5
    const/4 v11, 0x0

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 2172
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 2173
    const/4 v11, 0x0

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 2188
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2199
    .restart local v0       #count:I
    .restart local v4       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iput-object v5, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2201
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    .line 2203
    const-string v11, "com.sec.android.touchwiz.widget.twabslistview.savedstate"

    invoke-virtual {p1, v11, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2204
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2956
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2958
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 2961
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_1

    .line 2962
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSizeChanged(IIII)V

    .line 2964
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 7297
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7298
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7299
    .local v1, length:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7300
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 7302
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 7303
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 7309
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 7310
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7312
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 7313
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7320
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 7304
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 7306
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 7307
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_0

    .line 7315
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "ev"

    .prologue
    .line 4349
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 4350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 4351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 4371
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v27

    if-nez v27, :cond_3

    .line 4374
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v27

    if-nez v27, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v27

    if-eqz v27, :cond_2

    :cond_1
    const/16 v27, 0x1

    .line 4857
    :goto_0
    return v27

    .line 4374
    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    .line 4377
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 4379
    .local v17, intercepted:Z
    if-eqz v17, :cond_4

    .line 4380
    const/16 v27, 0x1

    goto :goto_0

    .line 4384
    .end local v17           #intercepted:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4388
    .local v4, action:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 4389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4409
    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 4857
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v27, 0x1

    goto :goto_0

    .line 4411
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_1

    .line 4427
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4428
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 4429
    .local v25, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4430
    .local v26, y:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v19

    .line 4443
    .local v19, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    .line 4444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    if-ltz v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v27

    check-cast v27, Landroid/widget/ListAdapter;

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 4452
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    .line 4455
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 4457
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4472
    :cond_7
    :goto_2
    if-ltz v19, :cond_8

    .line 4474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v27, v19, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4475
    .local v23, v:Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4477
    .end local v23           #v:Landroid/view/View;
    :cond_8
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4478
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4479
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4480
    const/high16 v27, -0x8000

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4485
    .end local v19           #motionPosition:I
    .end local v25           #x:I
    .end local v26           #y:I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 4486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    if-nez v27, :cond_5

    .line 4487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 4413
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 4415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4417
    :cond_9
    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4418
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4419
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4420
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4421
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4422
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    goto/16 :goto_3

    .line 4459
    .restart local v19       #motionPosition:I
    .restart local v25       #x:I
    .restart local v26       #y:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 4462
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 4464
    const/16 v27, 0x3

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4465
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4466
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v19

    .line 4467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 4494
    .end local v19           #motionPosition:I
    .end local v25           #x:I
    .end local v26           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 4495
    .local v22, pointerIndex:I
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 4496
    const/16 v22, 0x0

    .line 4497
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4506
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4507
    .restart local v26       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 4514
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(I)Z

    .line 4516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    move/from16 v27, v0

    sub-int v10, v26, v27

    .line 4561
    .local v10, deltaY:I
    goto/16 :goto_1

    .line 4564
    .end local v10           #deltaY:I
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(I)V

    goto/16 :goto_1

    .line 4571
    .end local v22           #pointerIndex:I
    .end local v26           #y:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_3

    .line 4734
    :cond_c
    :goto_4
    :pswitch_8
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 4736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    .line 4737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4743
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4745
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 4746
    .local v12, handler:Landroid/os/Handler;
    if-eqz v12, :cond_e

    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4750
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 4752
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/StrictMode$Span;->finish()V

    .line 4763
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 4575
    .end local v12           #handler:Landroid/os/Handler;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    .line 4576
    .restart local v19       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v27, v19, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4578
    .local v5, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    .line 4579
    .local v25, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v27, v25, v27

    if-lez v27, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v27, v25, v27

    if-gez v27, :cond_15

    const/4 v14, 0x1

    .line 4582
    .local v14, inList:Z
    :goto_5
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v27

    if-nez v27, :cond_19

    if-eqz v14, :cond_19

    .line 4583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    if-eqz v27, :cond_f

    .line 4584
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4587
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    move-object/from16 v27, v0

    if-nez v27, :cond_10

    .line 4588
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    .line 4591
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    move-object/from16 v21, v0

    .line 4592
    .local v21, performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->mClickMotionPosition:I

    .line 4593
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4595
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 4597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    .line 4598
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 4599
    .restart local v12       #handler:Landroid/os/Handler;
    if-eqz v12, :cond_12

    .line 4600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    if-nez v27, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    :goto_6
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4603
    :cond_12
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 4604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v27, v0

    if-nez v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 4605
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4606
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 4607
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 4608
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4610
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 4611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    .line 4612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4613
    .local v9, d:Landroid/graphics/drawable/Drawable;
    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 4614
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4617
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_14

    .line 4618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4620
    :cond_14
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4637
    :goto_7
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 4579
    .end local v12           #handler:Landroid/os/Handler;
    .end local v14           #inList:Z
    .end local v21           #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 4600
    .restart local v12       #handler:Landroid/os/Handler;
    .restart local v14       #inList:Z
    .restart local v21       #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v27, v0

    goto/16 :goto_6

    .line 4634
    :cond_17
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4635
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto :goto_7

    .line 4638
    .end local v12           #handler:Landroid/os/Handler;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v27, v0

    if-nez v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 4639
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->run()V

    .line 4642
    .end local v21           #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_19
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4643
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto/16 :goto_4

    .line 4646
    .end local v5           #child:Landroid/view/View;
    .end local v14           #inList:Z
    .end local v19           #motionPosition:I
    .end local v25           #x:F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    .line 4647
    .local v6, childCount:I
    if-lez v6, :cond_20

    .line 4648
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4649
    .local v11, firstChildTop:I
    add-int/lit8 v27, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 4650
    .local v18, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 4651
    .local v8, contentTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 4652
    .local v7, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    if-nez v27, :cond_1a

    if-lt v11, v8, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    sub-int v27, v27, v7

    move/from16 v0, v18

    move/from16 v1, v27

    if-gt v0, v1, :cond_1a

    .line 4655
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4656
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 4658
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 4660
    .local v24, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v27, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4671
    .local v16, initialVelocity:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    if-nez v27, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v27, v0

    sub-int v27, v8, v27

    move/from16 v0, v27

    if-eq v11, v0, :cond_1e

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v27, v0

    add-int v27, v27, v7

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    .line 4676
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    if-nez v27, :cond_1d

    .line 4683
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 4687
    :cond_1d
    const/16 v27, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 4691
    :cond_1e
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4692
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1f

    .line 4694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 4696
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto/16 :goto_4

    .line 4702
    .end local v7           #contentBottom:I
    .end local v8           #contentTop:I
    .end local v11           #firstChildTop:I
    .end local v16           #initialVelocity:I
    .end local v18           #lastChildBottom:I
    .end local v24           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_20
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4703
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 4708
    .end local v6           #childCount:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    if-nez v27, :cond_21

    .line 4715
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 4719
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 4720
    .restart local v24       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v27, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4724
    .restart local v16       #initialVelocity:I
    const/16 v27, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4725
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_22

    .line 4726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_4

    .line 4728
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    .line 4769
    .end local v16           #initialVelocity:I
    .end local v24           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_4

    .line 4790
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4791
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 4792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 4793
    .local v20, motionView:Landroid/view/View;
    if-eqz v20, :cond_23

    .line 4794
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4796
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 4798
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 4799
    .restart local v12       #handler:Landroid/os/Handler;
    if-eqz v12, :cond_24

    .line 4800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4803
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 4806
    .end local v12           #handler:Landroid/os/Handler;
    .end local v20           #motionView:Landroid/view/View;
    :goto_8
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v27, v0

    if-eqz v27, :cond_25

    .line 4807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 4810
    :cond_25
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 4771
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    if-nez v27, :cond_26

    .line 4778
    new-instance v27, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 4782
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_8

    .line 4815
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4816
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    move/from16 v25, v0

    .line 4817
    .local v25, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    move/from16 v26, v0

    .line 4818
    .restart local v26       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v19

    .line 4819
    .restart local v19       #motionPosition:I
    if-ltz v19, :cond_27

    .line 4821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v27, v19, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4822
    .restart local v23       #v:Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4823
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocusable()Z

    move-result v27

    if-nez v27, :cond_5

    .line 4825
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 4828
    .end local v23           #v:Landroid/view/View;
    :cond_27
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4829
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto/16 :goto_1

    .line 4837
    .end local v19           #motionPosition:I
    .end local v25           #x:I
    .end local v26           #y:I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 4838
    .local v15, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 4839
    .local v13, id:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 4840
    .restart local v25       #x:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4841
    .restart local v26       #y:I
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4842
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4843
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4844
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4845
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v19

    .line 4846
    .restart local v19       #motionPosition:I
    if-ltz v19, :cond_28

    .line 4848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v27, v19, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 4849
    .restart local v23       #v:Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4850
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4852
    .end local v23           #v:Landroid/view/View;
    :cond_28
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 4409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 4411
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 4507
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 4571
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 4769
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 3934
    if-eqz p1, :cond_2

    .line 3936
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 3941
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3946
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 3948
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3967
    :cond_1
    :goto_0
    return-void

    .line 3950
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3951
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3952
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3953
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 3955
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3956
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 3959
    :cond_5
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3960
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3961
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentCaches()V

    .line 3962
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 3963
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3277
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onWindowFocusChanged(Z)V

    .line 3282
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHasWindowFocusForMotion:Z

    .line 3315
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 3317
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_4

    .line 3318
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3319
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3320
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3323
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 3324
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 3325
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 3327
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3328
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3329
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentCaches()V

    .line 3330
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 3331
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3335
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 3337
    if-ne v0, v2, :cond_2

    .line 3339
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 3365
    :cond_2
    :goto_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 3366
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 3315
    goto :goto_0

    .line 3342
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 3344
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 3348
    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3351
    if-ne v0, v2, :cond_6

    .line 3353
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3358
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 3359
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3360
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/16 v5, 0x190

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1884
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1903
    :goto_0
    return v1

    .line 1887
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1903
    goto :goto_0

    .line 1889
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1890
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1891
    .local v0, viewportHeight:I
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0           #viewportHeight:I
    :cond_1
    move v1, v2

    .line 1894
    goto :goto_0

    .line 1896
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1897
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1898
    .restart local v0       #viewportHeight:I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0           #viewportHeight:I
    :cond_2
    move v1, v2

    .line 1901
    goto :goto_0

    .line 1887
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1414
    const/4 v7, 0x0

    .line 1415
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 1417
    .local v6, dispatchItemClick:Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 1418
    const/4 v7, 0x1

    .line 1420
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1422
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 1423
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1424
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1425
    if-eqz v5, :cond_6

    .line 1426
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1431
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 1432
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1436
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1439
    const/4 v6, 0x0

    .line 1456
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1457
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 1458
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 1461
    :cond_3
    if-eqz v6, :cond_4

    .line 1462
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 1465
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 1422
    goto :goto_0

    .line 1428
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1434
    :cond_7
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1441
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 1442
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 1443
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 1444
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1445
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1446
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1447
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1450
    :cond_9
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 1442
    goto :goto_4

    .line 1451
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1452
    :cond_c
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3475
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3476
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3478
    invoke-virtual {p0, p2, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setItemChecked(IZ)V

    .line 3479
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performHapticFeedback(I)Z

    .line 3496
    :cond_0
    :goto_0
    return v6

    .line 3484
    :cond_1
    const/4 v6, 0x0

    .line 3485
    .local v6, handled:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3486
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3489
    :cond_2
    if-nez v6, :cond_3

    .line 3490
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3491
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3493
    :cond_3
    if-eqz v6, :cond_0

    .line 3494
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3599
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3600
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3601
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3602
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3605
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 3606
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 3607
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3608
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3609
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3610
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3611
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3615
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 3606
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3615
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3670
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v0

    .line 3671
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 3672
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3674
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method public positionOfOverLappingView(Landroid/graphics/Rect;Z)I
    .locals 7
    .parameter "rect"
    .parameter "down"

    .prologue
    .line 3619
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3620
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3621
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3622
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3625
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 3626
    .local v1, count:I
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 3627
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_4

    .line 3628
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3629
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 3630
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3631
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3632
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    .line 3658
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v5

    .line 3627
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3637
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 3638
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3639
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 3640
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3641
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3642
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    goto :goto_1

    .line 3637
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3647
    .end local v0           #child:Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    .line 3648
    .local v4, lastVisible:I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_6

    .line 3649
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3650
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 3651
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3652
    move v4, v3

    .line 3653
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 3654
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    goto :goto_1

    .line 3648
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3658
    .end local v0           #child:Landroid/view/View;
    :cond_6
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v4

    goto :goto_1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v6, -0x1

    .line 2873
    if-eq p1, v6, :cond_0

    .line 2874
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2877
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2878
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2879
    instance-of v2, p2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2880
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2882
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(IIII)V

    .line 2885
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 2886
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2887
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 2888
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2889
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    .line 2892
    :cond_2
    return-void

    .line 2887
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7420
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 7421
    .local v1, childCount:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4300(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    move-result-object v3

    .line 7424
    .local v3, listener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7425
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7426
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 7429
    .local v4, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget v6, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7430
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7431
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7432
    if-eqz v3, :cond_0

    .line 7434
    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7424
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7438
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7439
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeAllViewsInLayout()V

    .line 7440
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 6593
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 6594
    .local v0, position:I
    if-gez v0, :cond_0

    .line 6595
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 6597
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6598
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6599
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->registerMotionListener()V

    .line 957
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setMotionEvent(Z)V

    .line 958
    return-void
.end method

.method public registerTiltMotion()V
    .locals 0

    .prologue
    .line 1014
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x0

    .line 5165
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_3

    .line 5167
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_0

    .line 5168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5169
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 5171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    .line 5172
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-nez v0, :cond_1

    .line 5174
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 5177
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_2

    .line 5179
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 5180
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5181
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLockAcquired:Z

    .line 5186
    :cond_2
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 5187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 5189
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 5192
    :cond_3
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 5010
    if-eqz p1, :cond_0

    .line 5011
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 5013
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5014
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2346
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2347
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 2349
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2010
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetList()V

    .line 2011
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 2012
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 2014
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2355
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeAllViewsInLayout()V

    .line 2356
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 2357
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2358
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 2359
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 2360
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 2361
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 2362
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 2363
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 2364
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2365
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2366
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 2367
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 6664
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 6666
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 6667
    const/16 v17, 0x0

    .line 6762
    :goto_0
    return v17

    .line 6670
    :cond_0
    const/4 v13, 0x0

    .line 6672
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 6673
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 6674
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6675
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 6676
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 6678
    .local v6, down:Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 6679
    move v12, v14

    .line 6681
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6682
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 6683
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 6686
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_3

    .line 6687
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 6743
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 6744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 6748
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 6749
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 6750
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 6751
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 6752
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 6753
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 6754
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 6755
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectionInt(I)V

    .line 6756
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 6760
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 6762
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 6688
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_3
    if-le v11, v4, :cond_1

    .line 6689
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 6693
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 6695
    move v12, v7

    .line 6696
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 6697
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6698
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6700
    .local v15, top:I
    if-nez v8, :cond_6

    .line 6702
    move v13, v15

    .line 6704
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 6707
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 6710
    :cond_6
    if-lt v15, v5, :cond_7

    .line 6712
    add-int v12, v7, v8

    .line 6713
    move v13, v15

    .line 6714
    goto/16 :goto_1

    .line 6696
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 6718
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 6719
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 6720
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 6722
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 6723
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6724
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6725
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6727
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 6728
    move v13, v15

    .line 6729
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 6730
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 6734
    :cond_a
    if-gt v2, v4, :cond_b

    .line 6735
    add-int v12, v7, v8

    .line 6736
    move v13, v15

    .line 6737
    goto/16 :goto_1

    .line 6722
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 6758
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 6762
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 6643
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6644
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 6645
    const/4 v0, 0x1

    .line 6647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 1848
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1849
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1850
    .local v0, firstVisiblePosition:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1851
    .local v1, lastVisiblePosition:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1860
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :goto_0
    return-void

    .line 1855
    .restart local v0       #firstVisiblePosition:I
    .restart local v1       #lastVisiblePosition:I
    :cond_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1856
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1859
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7086
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7146
    :cond_0
    :goto_0
    return v2

    .line 7090
    :cond_1
    const/4 v2, 0x0

    .line 7091
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 7092
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 7123
    :goto_1
    if-eqz v3, :cond_0

    .line 7124
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 7126
    move-object v1, p3

    .line 7127
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7131
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7132
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7134
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7135
    goto :goto_0

    .line 7099
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7100
    goto :goto_1

    .line 7102
    :sswitch_1
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7103
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 7104
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7105
    .local v4, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 7106
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7108
    :cond_3
    const/4 v2, 0x1

    .line 7115
    .end local v4           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 7116
    goto :goto_1

    .line 7109
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 7111
    const/4 v2, 0x1

    .line 7112
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7119
    :sswitch_2
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_1

    .line 7138
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7139
    goto :goto_0

    .line 7142
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 7092
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1219
    if-eqz p1, :cond_0

    .line 1220
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1222
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1233
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 7391
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 7392
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    .line 7393
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 7394
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7395
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7397
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 7399
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 1488
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 1489
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1493
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1495
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1498
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1502
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1503
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearChoices()V

    .line 1504
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setLongClickable(Z)V

    .line 1507
    :cond_3
    return-void
.end method

.method public setCurrentOrientationModeForTiltMotion(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1004
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 3009
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 3010
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 948
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 950
    return-void

    .line 948
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 1575
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1576
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_1

    .line 1580
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setAlwaysShow(Z)V

    .line 1583
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->computeOpaqueFlags()V

    .line 1584
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recomputePadding()V

    .line 1585
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1550
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    .line 1551
    if-eqz p1, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-nez v0, :cond_0

    .line 1553
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1556
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 1558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 2294
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2295
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 2299
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2300
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2301
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2304
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2305
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2306
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2311
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 2312
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2315
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2594
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2596
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 2600
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2601
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2602
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 2606
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 2600
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 6113
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6114
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6116
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->access$2300(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setFriction(F)V

    .line 6117
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .parameter "hoverdelay"

    .prologue
    .line 3991
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_DELAY:I

    .line 3992
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 3973
    if-eqz p1, :cond_0

    .line 3974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    .line 3978
    :goto_0
    return-void

    .line 3976
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .parameter "hoverspeed"

    .prologue
    .line 3984
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->HOVERSCROLL_SPEED:I

    .line 3985
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1347
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1354
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1357
    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1359
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1360
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1361
    if-eqz p2, :cond_7

    .line 1362
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1367
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 1368
    if-eqz p2, :cond_8

    .line 1369
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1374
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 1375
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1376
    .local v3, id:J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1405
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1406
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1407
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 1408
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_0

    .line 1364
    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1371
    :cond_8
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1380
    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .line 1384
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1385
    :cond_a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1386
    if-eqz v7, :cond_b

    .line 1387
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1393
    :cond_b
    if-eqz p2, :cond_e

    .line 1394
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1395
    if-eqz v7, :cond_c

    .line 1396
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1398
    :cond_c
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    .line 1380
    goto :goto_4

    .line 1399
    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1400
    :cond_f
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 973
    if-eqz p1, :cond_0

    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionEnable:Z

    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1519
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    .line 1522
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    .line 1674
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 1675
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 4983
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    .line 4984
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    .line 4985
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1196
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1199
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1200
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1201
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1202
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1204
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setEnableExcessScroll(Z)V

    .line 1211
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setOverScrollMode(I)V

    .line 1212
    return-void

    .line 1206
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1207
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1209
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setEnableExcessScroll(Z)V

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 7544
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4302(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    .line 7545
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 7483
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 7484
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7485
    .local v0, fcNew:Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7487
    .local v1, fcOld:Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7494
    .end local v0           #fcNew:Landroid/content/Intent$FilterComparison;
    .end local v1           #fcOld:Landroid/content/Intent$FilterComparison;
    :goto_0
    return-void

    .line 7491
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7493
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    goto :goto_0
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 3093
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    .line 3094
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    .line 3095
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1932
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1933
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 1935
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    .line 1936
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 3020
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3021
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 3024
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3025
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3026
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3028
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3029
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3030
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3031
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 3032
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 3033
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 3034
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 3035
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3036
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3037
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1652
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1653
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 2002
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2003
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    .line 2004
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayoutIfNecessary()V

    .line 2006
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 1948
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    .line 1949
    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1038
    return-void
.end method

.method public setTiltMotionScrollSpeed(III)V
    .locals 0
    .parameter "step1"
    .parameter "step2"
    .parameter "step3"

    .prologue
    .line 1059
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1072
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    .line 1073
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 7361
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    .line 7362
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 6126
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 6127
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1619
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVerticalScrollbarPosition(I)V

    .line 1620
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollbarPosition(I)V

    .line 1623
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2989
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 3507
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v3

    .line 3508
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3509
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3510
    .local v1, id:J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3511
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3512
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3513
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3516
    .end local v0           #child:Landroid/view/View;
    .end local v1           #id:J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 3521
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3522
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 3523
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3524
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 3526
    .local v6, handled:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3527
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3530
    :cond_0
    if-nez v6, :cond_1

    .line 3531
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3533
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3538
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 7
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 6215
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v5, :cond_3

    .line 6219
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 6227
    :goto_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6228
    .local v2, firstPos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 6229
    .local v1, childCount:I
    add-int v3, v2, v1

    .line 6230
    .local v3, lastPos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v4

    .line 6231
    .local v4, topLimit:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 6233
    .local v0, bottomLimit:I
    if-eqz p1, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 6239
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 6240
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v5, :cond_2

    .line 6241
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 6247
    :cond_2
    :goto_1
    return-void

    .line 6223
    .end local v0           #bottomLimit:I
    .end local v1           #childCount:I
    .end local v2           #firstPos:I
    .end local v3           #lastPos:I
    .end local v4           #topLimit:I
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 6244
    .restart local v0       #bottomLimit:I
    .restart local v1       #childCount:I
    .restart local v2       #firstPos:I
    .restart local v3       #lastPos:I
    .restart local v4       #topLimit:I
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 6245
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startScroll(II)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f40

    .line 6253
    const/4 v2, -0x1

    .line 6254
    .local v2, index:I
    if-gez p1, :cond_3

    .line 6255
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 6260
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6261
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6262
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6263
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6264
    .local v4, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6266
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6267
    .local v1, childRectArea:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6268
    .local v5, visibleRectArea:I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6269
    .local v3, visibleArea:F
    const/high16 v6, 0x3f40

    .line 6270
    .local v6, visibleThreshold:F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6273
    add-int/lit8 v2, v2, 0x1

    .line 6280
    .end local v1           #childRectArea:I
    .end local v3           #visibleArea:F
    .end local v5           #visibleRectArea:I
    .end local v6           #visibleThreshold:F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 6283
    .end local v0           #child:Landroid/view/View;
    .end local v4           #visibleRect:Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6256
    :cond_3
    if-lez p1, :cond_0

    .line 6257
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6274
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childRectArea:I
    .restart local v3       #visibleArea:F
    .restart local v4       #visibleRect:Landroid/graphics/Rect;
    .restart local v5       #visibleRectArea:I
    .restart local v6       #visibleThreshold:F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 6277
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 6148
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6149
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    .line 6152
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 6202
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6203
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(II)V

    .line 6206
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 6186
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6187
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6189
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(II)V

    .line 6190
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 6168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6169
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(III)V

    .line 6172
    return-void
.end method

.method public smoothScrollToPositionWithDuration(II)V
    .locals 1
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 6135
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6136
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 6138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithDuration(II)V

    .line 6139
    return-void
.end method

.method public stopTiltScrolling()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2972
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2977
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2975
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2972
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 29
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 6324
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    .line 6325
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 6326
    const/16 v27, 0x1

    .line 6538
    :goto_0
    return v27

    .line 6329
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v14

    .line 6330
    .local v14, firstTop:I
    add-int/lit8 v27, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v20

    .line 6332
    .local v20, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6339
    .local v21, listPadding:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 6340
    .local v11, effectivePaddingTop:I
    const/4 v10, 0x0

    .line 6341
    .local v10, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 6342
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 6343
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 6347
    :cond_1
    sub-int v23, v11, v14

    .line 6348
    .local v23, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    sub-int v12, v27, v10

    .line 6349
    .local v12, end:I
    sub-int v24, v20, v12

    .line 6351
    .local v24, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v17, v27, v28

    .line 6352
    .local v17, height:I
    if-gez p1, :cond_2

    .line 6353
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6358
    :goto_1
    if-gez p2, :cond_3

    .line 6359
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6364
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6367
    .local v13, firstPosition:I
    if-nez v13, :cond_4

    .line 6368
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v27, v14, v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    .line 6372
    :goto_3
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 6373
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    .line 6378
    :goto_4
    if-nez v13, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v14, v0, :cond_7

    if-ltz p2, :cond_7

    .line 6388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 6391
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 6394
    if-eqz p2, :cond_6

    const/16 v27, 0x1

    goto/16 :goto_0

    .line 6355
    .end local v13           #firstPosition:I
    :cond_2
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 6361
    :cond_3
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 6370
    .restart local v13       #firstPosition:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 6375
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 6394
    :cond_6
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 6397
    :cond_7
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v20

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    if-gtz p2, :cond_9

    .line 6408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 6411
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 6414
    if-eqz p2, :cond_8

    const/16 v27, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 6421
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_a

    .line 6437
    :cond_a
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 6439
    if-gez p2, :cond_13

    const/4 v9, 0x1

    .line 6441
    .local v9, down:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v19

    .line 6442
    .local v19, inTouchMode:Z
    if-eqz v19, :cond_b

    .line 6443
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 6446
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeaderViewsCount()I

    move-result v16

    .line 6447
    .local v16, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFooterViewsCount()I

    move-result v28

    sub-int v15, v27, v28

    .line 6449
    .local v15, footerViewsStart:I
    const/16 v25, 0x0

    .line 6450
    .local v25, start:I
    const/4 v8, 0x0

    .line 6452
    .local v8, count:I
    if-eqz v9, :cond_16

    .line 6453
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v26, v0

    .line 6454
    .local v26, top:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 6455
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v26, v26, v27

    .line 6457
    :cond_c
    const/16 v18, 0x0

    .local v18, i:I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v6, :cond_d

    .line 6458
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6459
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_14

    .line 6499
    .end local v5           #child:Landroid/view/View;
    .end local v26           #top:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewNewTop:I

    .line 6501
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 6503
    if-lez v8, :cond_e

    .line 6504
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->detachViewsFromParent(II)V

    .line 6506
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 6508
    if-eqz v9, :cond_f

    .line 6509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v8

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 6512
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 6514
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6515
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v23

    if-lt v0, v3, :cond_10

    move/from16 v0, v24

    if-ge v0, v3, :cond_11

    .line 6516
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->fillGap(Z)V

    .line 6519
    :cond_11
    if-nez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_19

    .line 6520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 6521
    .local v7, childIndex:I
    if-ltz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_12

    .line 6522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6533
    .end local v7           #childIndex:I
    :cond_12
    :goto_7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 6535
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 6536
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 6538
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 6439
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v15           #footerViewsStart:I
    .end local v16           #headerViewsCount:I
    .end local v18           #i:I
    .end local v19           #inTouchMode:Z
    .end local v25           #start:I
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 6462
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v15       #footerViewsStart:I
    .restart local v16       #headerViewsCount:I
    .restart local v18       #i:I
    .restart local v19       #inTouchMode:Z
    .restart local v25       #start:I
    .restart local v26       #top:I
    :cond_14
    add-int/lit8 v8, v8, 0x1

    .line 6463
    add-int v22, v13, v18

    .line 6464
    .local v22, position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_15

    move/from16 v0, v22

    if-ge v0, v15, :cond_15

    .line 6465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6457
    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 6475
    .end local v5           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v22           #position:I
    .end local v26           #top:I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    sub-int v4, v27, p2

    .line 6476
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 6477
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v4, v4, v27

    .line 6479
    :cond_17
    add-int/lit8 v18, v6, -0x1

    .restart local v18       #i:I
    :goto_8
    if-ltz v18, :cond_d

    .line 6480
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6481
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v4, :cond_d

    .line 6484
    move/from16 v25, v18

    .line 6485
    add-int/lit8 v8, v8, 0x1

    .line 6486
    add-int v22, v13, v18

    .line 6487
    .restart local v22       #position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_18

    move/from16 v0, v22

    if-ge v0, v15, :cond_18

    .line 6488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6479
    :cond_18
    add-int/lit8 v18, v18, -0x1

    goto :goto_8

    .line 6524
    .end local v4           #bottom:I
    .end local v5           #child:Landroid/view/View;
    .end local v22           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    .line 6525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 6526
    .restart local v7       #childIndex:I
    if-ltz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_12

    .line 6527
    const/16 v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_7

    .line 6530
    .end local v7           #childIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_7
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unregisterMotionListener()V

    .line 965
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setMotionEvent(Z)V

    .line 966
    return-void
.end method

.method public unregisterTiltMotion()V
    .locals 0

    .prologue
    .line 1024
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2616
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2619
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2622
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 2623
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2624
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2625
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2629
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2632
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2634
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 2637
    .local v3, count:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2640
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2641
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2642
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2645
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2647
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2619
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2625
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2629
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 2637
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2642
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2645
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3099
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3100
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3105
    :cond_0
    :goto_0
    return-void

    .line 3102
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
