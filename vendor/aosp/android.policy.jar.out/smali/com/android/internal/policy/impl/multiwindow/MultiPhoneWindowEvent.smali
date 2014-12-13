.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    }
.end annotation


# static fields
.field private static REVISE_WINDOW_BOUNDARY_X:I = 0x0

.field private static REVISE_WINDOW_BOUNDARY_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowEvent"

.field private static sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

.field private static sIsQueriedActionBarViewSetMultiWindowReserved:Z

.field private static statusBarHeight:I


# instance fields
.field private ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

.field private ENABLED_MINIMIZED_BUTTON:Z

.field private final HOVERING_WIDTH:I

.field private final SHOWING_PADDING_WIDTH:I

.field private fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private hasGuideLayout:Z

.field private longDownX:I

.field private longDownY:I

.field private mActivity:Landroid/app/Activity;

.field private mArrange:I

.field private mBorderFrame:Landroid/widget/FrameLayout;

.field private mBorderLayout:Landroid/widget/LinearLayout;

.field private mBottomBorderPadding:I

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDividor1:Landroid/view/View;

.field private mDividor2:Landroid/view/View;

.field private mExitButton:Landroid/widget/ImageButton;

.field private mGestureView:Landroid/gesture/GestureOverlayView;

.field private mIsPhone:Z

.field private mLastWindowMode:I

.field private mLeftBorderPadding:I

.field private mMaxSize:Landroid/graphics/Point;

.field private mMaximizeButton:Landroid/widget/ImageButton;

.field private mMinHeight:F

.field private mMinWidth:F

.field private mMinimizeButton:Landroid/widget/ImageButton;

.field private mMultiWindowButton:Landroid/widget/ImageButton;

.field private mNeedsPadding:Z

.field private mOwner:Landroid/view/Window;

.field private final mPaddingWidth:I

.field private mPinupButton:Landroid/widget/ImageButton;

.field private mRightBorderPadding:I

.field private mTitleText:Landroid/widget/TextView;

.field private mTopBorderPadding:I

.field private mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

.field private mUserWindowFlags:I

.field private mWfdReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowBackground:Landroid/graphics/drawable/Drawable;

.field private mWindowContentFrame:Landroid/widget/LinearLayout;

.field private mWindowTitleBar:Landroid/view/View;

.field private supportFlick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    sput v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    .line 118
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    .line 120
    const/16 v0, 0x12c

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 121
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    return-void
.end method

.method private constructor <init>(Landroid/view/Window;)V
    .locals 11
    .parameter "owner"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 74
    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 85
    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 87
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mNeedsPadding:Z

    .line 88
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 89
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 91
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 92
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    .line 93
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    .line 94
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    .line 95
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    .line 97
    const/high16 v7, 0x100

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 99
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 100
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 102
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 103
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

    .line 105
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    .line 107
    const/16 v7, 0x1e

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    .line 108
    iput v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->SHOWING_PADDING_WIDTH:I

    .line 109
    const/16 v7, 0x14

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->HOVERING_WIDTH:I

    .line 111
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    .line 112
    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    .line 114
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 116
    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    .line 270
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 271
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 273
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 274
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 276
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    if-le v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 277
    .local v5, shortSize:I
    :goto_0
    mul-int/lit16 v7, v5, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int/2addr v7, v10

    const/16 v10, 0x258

    if-ge v7, v10, :cond_3

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 279
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v7

    sput v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 281
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 282
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 283
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 285
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowMode()I

    move-result v6

    .line 286
    .local v6, windowMode:I
    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v4

    .line 287
    .local v4, mode:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v7, v7, -0x401

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 289
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 290
    sparse-switch v4, :sswitch_data_0

    .line 308
    :cond_0
    :goto_2
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    .line 309
    .local v0, WIFI_DISPLAY:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isWfdConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 335
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    .line 337
    :cond_1
    return-void

    .line 276
    .end local v0           #WIFI_DISPLAY:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #mode:I
    .end local v5           #shortSize:I
    .end local v6           #windowMode:I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v5, v7, Landroid/graphics/Point;->x:I

    goto :goto_0

    .restart local v5       #shortSize:I
    :cond_3
    move v7, v9

    .line 277
    goto :goto_1

    .line 292
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v4       #mode:I
    .restart local v6       #windowMode:I
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 293
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 295
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto :goto_2

    .line 298
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 299
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fullScreenModeLayout(Landroid/content/Context;)V

    .line 301
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    if-eqz v7, :cond_0

    .line 302
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto :goto_2

    .line 290
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_ACTION_BAR_DOUBLE_TAPPING:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    return v0
.end method

.method private calculatePaddingRect(I)Landroid/graphics/Rect;
    .locals 14
    .parameter "windowMode"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 733
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 735
    .local v10, winInfo:Landroid/os/Bundle;
    invoke-direct {p0, p1, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 736
    .local v2, currentRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 738
    .local v6, paddingRect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 739
    .local v5, left:I
    const/4 v9, 0x0

    .line 740
    .local v9, top:I
    const/4 v7, 0x0

    .line 741
    .local v7, right:I
    const/4 v0, 0x0

    .line 742
    .local v0, bottom:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 744
    .local v8, titleBarHeight:I
    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iput v11, v2, Landroid/graphics/Rect;->top:I

    .line 746
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 747
    .local v3, currentWidth:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v1, v11

    .line 748
    .local v1, currentHeight:F
    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    iget v12, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    div-float v4, v11, v12

    .line 750
    .local v4, fixedRatio:F
    div-float v11, v3, v4

    sub-float v11, v1, v11

    int-to-float v12, v8

    sub-float/2addr v11, v12

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1

    .line 752
    div-float v11, v3, v4

    sub-float v11, v1, v11

    int-to-float v12, v8

    sub-float/2addr v11, v12

    float-to-int v11, v11

    div-int/lit8 v0, v11, 0x2

    move v9, v0

    .line 753
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 759
    :cond_0
    :goto_0
    return-object v6

    .line 754
    :cond_1
    int-to-float v11, v8

    add-float/2addr v11, v1

    mul-float/2addr v11, v4

    sub-float v11, v3, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_0

    .line 756
    int-to-float v11, v8

    add-float/2addr v11, v1

    mul-float/2addr v11, v4

    sub-float v11, v3, v11

    float-to-int v11, v11

    div-int/lit8 v7, v11, 0x2

    move v5, v7

    .line 757
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private createGhostView(II)Z
    .locals 11
    .parameter "startX"
    .parameter "startY"

    .prologue
    const/4 v9, 0x1

    .line 1384
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1390
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v7

    .line 1391
    .local v7, windowMode:I
    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v3, 0x200

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 1392
    const/4 v0, 0x0

    .line 1408
    :goto_0
    return v0

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 1396
    .local v8, windowParm:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/graphics/Rect;

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v6, v10

    invoke-direct {v2, v0, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1398
    .local v2, windowRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Point;

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-direct {v4, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1401
    .local v4, delta:Landroid/graphics/Point;
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/16 v5, 0x8

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1403
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 1404
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 1406
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLeftBorderPadding:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTopBorderPadding:I

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mRightBorderPadding:I

    iget v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBottomBorderPadding:I

    invoke-virtual {v0, v3, v5, v6, v10}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->setBackgroundPadding(IIII)V

    move v0, v9

    .line 1408
    goto :goto_0
.end method

.method private freestyleModeLayout(Landroid/content/Context;I)V
    .locals 17
    .parameter "context"
    .parameter "decoVisibility"

    .prologue
    .line 428
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 430
    .local v4, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getWindowMode()I

    move-result v12

    .line 432
    .local v12, windowMode:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 433
    const v14, 0x10900a1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const v15, 0x10203a1

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 438
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 545
    :goto_0
    return-void

    .line 442
    :cond_0
    const v14, 0x10900a1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const v15, 0x10203a1

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v14

    const v15, 0x10203e9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 448
    .local v1, actionContainer:Landroid/view/View;
    new-instance v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 449
    .local v5, listener:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;
    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;)V

    .line 450
    .local v9, pwl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    new-instance v11, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 452
    .local v11, tbl:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;
    const/4 v8, 0x1

    .line 454
    .local v8, needsTitleBar:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x80

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v6, v14, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 455
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v6, :cond_3

    .line 456
    const-string v14, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 457
    .local v13, windowStyle:Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string v14, "noTitleBar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 458
    const/4 v8, 0x0

    .line 460
    :cond_1
    if-eqz v13, :cond_4

    const-string v14, "fixedRatio"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 461
    const/4 v10, 0x0

    .line 462
    .local v10, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 463
    if-eqz v10, :cond_3

    .line 464
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mNeedsPadding:Z

    .line 465
    const-string v14, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 466
    .local v7, minSizeId:I
    if-eqz v7, :cond_2

    .line 467
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 469
    :cond_2
    const-string v14, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 470
    if-eqz v7, :cond_3

    .line 471
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v7           #minSizeId:I
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v13           #windowStyle:Ljava/lang/String;
    :cond_3
    :goto_1
    const v14, 0x10900a3

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203aa

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    .line 487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203ab

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203b0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203a9

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203ad

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203ac

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203ae

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v15, 0x10203af

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 527
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 528
    .local v2, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v14, "mPinupClickListener"

    invoke-virtual {v2, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 529
    .local v3, field:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    new-instance v15, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v3, v14, v15}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 542
    .end local v2           #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 475
    .restart local v6       #metaData:Landroid/os/Bundle;
    .restart local v13       #windowStyle:Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mNeedsPadding:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 478
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v13           #windowStyle:Ljava/lang/String;
    :catch_1
    move-exception v14

    goto/16 :goto_1

    .line 544
    :catch_2
    move-exception v14

    goto/16 :goto_0

    .line 543
    :catch_3
    move-exception v14

    goto/16 :goto_0
.end method

.method private fullScreenModeLayout(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isResizable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 790
    :cond_0
    return-void
.end method

.method private getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;
    .locals 7
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 1204
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1205
    new-instance v1, Landroid/graphics/Rect;

    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1219
    :goto_0
    return-object v1

    .line 1210
    :cond_0
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1212
    .local v0, lastSize:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1213
    goto :goto_0

    .line 1215
    :cond_1
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFullSize(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1216
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v1, v2

    goto :goto_0

    .line 1219
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sget v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static installDecor(Landroid/view/Window;)Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .locals 1
    .parameter "owner"

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowDecor(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;-><init>(Landroid/view/Window;)V

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isForceTitleBar(Landroid/view/Window;)Z
    .locals 6
    .parameter "w"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 160
    .local v0, a:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 161
    .local v1, activityMetaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 162
    const-string v3, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, style:Ljava/lang/String;
    const-string v3, "forceTitleBar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v3, 0x1

    .line 170
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #activityMetaData:Landroid/os/Bundle;
    .end local v2           #style:Ljava/lang/String;
    :goto_0
    return v3

    .line 167
    .restart local v0       #a:Landroid/app/Activity;
    :catch_0
    move-exception v3

    .line 170
    .end local v0           #a:Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isFullSize(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 205
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isFullSize(I)Z

    move-result v0

    return v0
.end method

.method static isMinimized(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 201
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v0

    return v0
.end method

.method static isMultiWindow(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 189
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    return v0
.end method

.method static isNormalWindow(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 185
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v0

    return v0
.end method

.method static isPinup(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 197
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPinup(I)Z

    move-result v0

    return v0
.end method

.method static isResizable(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 193
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isResizable(I)Z

    move-result v0

    return v0
.end method

.method private static needsMultiWindowDecor(Landroid/view/Window;)Z
    .locals 3
    .parameter "owner"

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->isNoWindowDecor()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 4
    .parameter "windowRect"
    .parameter "maxSize"

    .prologue
    .line 763
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 764
    .local v0, boundaryX:I
    sget v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    .line 766
    .local v1, boundaryY:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_2

    .line 767
    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 773
    :cond_0
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_3

    .line 774
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 779
    :cond_1
    :goto_1
    return-void

    .line 769
    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_0

    .line 770
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 776
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_1

    .line 777
    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method private setActionBarMenuVisibility(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10203ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .line 346
    .local v0, actionBarView:Lcom/android/internal/widget/ActionBarView;
    if-eqz v0, :cond_0

    .line 350
    sget-boolean v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    if-nez v2, :cond_2

    .line 352
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setMultiWindowReserved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 360
    :try_start_1
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 361
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 355
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 364
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 366
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private static supportedMultiWindow(Landroid/view/Window;)Z
    .locals 4
    .parameter "owner"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, context:Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 134
    check-cast v0, Landroid/app/Activity;

    .line 135
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 136
    .local v2, windowMode:I
    const/high16 v3, 0x20

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 137
    const/4 v3, 0x1

    .line 141
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #windowMode:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateSplitRect(I)V
    .locals 7
    .parameter "windowMode"

    .prologue
    const/4 v6, 0x1

    .line 1224
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .line 1225
    .local v4, zone:I
    if-eqz v4, :cond_1

    .line 1226
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 1227
    .local v3, winInfo:Landroid/os/Bundle;
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1228
    .local v1, rect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1229
    .local v2, splitRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 1230
    .local v0, orientation:I
    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 1231
    if-eq v0, v6, :cond_2

    .line 1232
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 1244
    :cond_0
    :goto_0
    invoke-static {v0, v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 1246
    .end local v0           #orientation:I
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #splitRect:Landroid/graphics/Rect;
    .end local v3           #winInfo:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 1234
    .restart local v0       #orientation:I
    .restart local v1       #rect:Landroid/graphics/Rect;
    .restart local v2       #splitRect:Landroid/graphics/Rect;
    .restart local v3       #winInfo:Landroid/os/Bundle;
    :cond_2
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1237
    :cond_3
    const/16 v5, 0x18

    if-ne v4, v5, :cond_0

    .line 1238
    if-eq v0, v6, :cond_4

    .line 1239
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1241
    :cond_4
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private windowIsTranslucent(I)Z
    .locals 3
    .parameter "windowMode"

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :goto_0
    return v1

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private windowNoController(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 153
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wrapContentView(I)V
    .locals 6
    .parameter "windowMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 392
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 394
    .local v0, decor:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 395
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 399
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 406
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 407
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 409
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v4}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v5}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->makeOptionalFitsSystemWindows()V

    .line 420
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 421
    return-void
.end method


# virtual methods
.method public isWfdConnected(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    const-string v1, "wfd"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #wfdManager:Lcom/samsung/wfd/WfdManager;
    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 385
    .restart local v0       #wfdManager:Lcom/samsung/wfd/WfdManager;
    if-nez v0, :cond_0

    .line 386
    const/4 v1, 0x0

    .line 388
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v1

    goto :goto_0
.end method

.method minimize(IZ)V
    .locals 3
    .parameter "windowMode"
    .parameter "minimize"

    .prologue
    const/high16 v2, 0x200

    const/high16 v1, 0x100

    const v0, 0xffffff

    .line 241
    if-eqz p2, :cond_0

    .line 242
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 243
    and-int/2addr p1, v0

    .line 244
    or-int/2addr p1, v2

    .line 254
    :goto_0
    if-eqz p2, :cond_2

    .line 255
    const/high16 v0, 0x10

    or-int/2addr p1, v0

    .line 256
    const v0, -0x800001

    and-int/2addr p1, v0

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 264
    return-void

    .line 246
    :cond_0
    and-int/2addr p1, v0

    .line 247
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 248
    or-int/2addr p1, v1

    goto :goto_0

    .line 250
    :cond_1
    or-int/2addr p1, v2

    goto :goto_0

    .line 259
    :cond_2
    const v0, -0x100001

    and-int/2addr p1, v0

    goto :goto_1
.end method

.method multiWindow(IZ)V
    .locals 3
    .parameter "windowMode"
    .parameter "pinup"

    .prologue
    .line 217
    const v1, 0xffffff

    and-int/2addr p1, v1

    .line 218
    const/high16 v1, 0x200

    or-int/2addr p1, v1

    .line 219
    if-eqz p2, :cond_1

    .line 220
    const/high16 v1, 0x80

    or-int/2addr p1, v1

    .line 221
    and-int/lit16 p1, p1, -0x100

    .line 226
    :goto_0
    const v1, -0x100001

    and-int/2addr p1, v1

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, winInfo:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.WINDOW_LAST_PINUP"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 233
    const-string v1, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 238
    return-void

    .line 224
    .end local v0           #winInfo:Landroid/os/Bundle;
    :cond_1
    const v1, -0x800001

    and-int/2addr p1, v1

    goto :goto_0
.end method

.method normalWindow(I)V
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 209
    const v0, 0x23e400

    and-int/2addr p1, v0

    .line 210
    const/high16 v0, 0x100

    or-int/2addr p1, v0

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 214
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/high16 v6, 0x80

    const/high16 v5, 0x10

    const v4, -0x100001

    const/4 v3, 0x1

    .line 1159
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1161
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 1162
    .local v0, windowMode:I
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    const/high16 v2, 0x200

    if-eq v1, v2, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1166
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 1168
    iget v1, p1, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 1169
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    sparse-switch v1, :sswitch_data_0

    .line 1197
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1198
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1200
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto :goto_0

    .line 1171
    :sswitch_0
    or-int/2addr v0, v5

    .line 1172
    or-int/2addr v0, v6

    .line 1173
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_1

    .line 1182
    :sswitch_1
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_1

    .line 1183
    and-int/2addr v0, v4

    .line 1184
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_1

    .line 1188
    :sswitch_2
    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/2addr v1, v6

    if-nez v1, :cond_1

    .line 1189
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 1190
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 1191
    and-int/2addr v0, v4

    .line 1192
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_1

    .line 1169
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
        0x20 -> :sswitch_1
        0x80 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWfdReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1299
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 1300
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 1302
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged(II)V
    .locals 9
    .parameter "windowMode"
    .parameter "windowInfoChanged"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1249
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1253
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 1255
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1256
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->closeAllPanels()V

    .line 1259
    :cond_1
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_2

    .line 1260
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    goto :goto_0

    .line 1265
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1266
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1268
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 1270
    const/4 v1, 0x0

    .line 1271
    .local v1, isNormalWindow:Z
    const/4 v0, 0x0

    .line 1272
    .local v0, isMinimized:Z
    const/4 v2, 0x0

    .line 1274
    .local v2, isPinup:Z
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 1286
    :goto_1
    if-eqz v1, :cond_4

    .line 1287
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1288
    .local v3, km:Landroid/app/KeyguardManager;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1289
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    .line 1295
    .end local v3           #km:Landroid/app/KeyguardManager;
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1, v0, v2}, Landroid/app/Activity;->onWindowStatusChanged(ZZZ)V

    goto :goto_0

    .line 1276
    :sswitch_0
    const/4 v1, 0x1

    .line 1277
    goto :goto_1

    .line 1280
    :sswitch_1
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v4

    .line 1281
    .local v4, params:I
    const/high16 v7, 0x10

    and-int/2addr v7, v4

    if-eqz v7, :cond_5

    move v0, v5

    .line 1282
    :goto_3
    const/high16 v7, 0x80

    and-int/2addr v7, v4

    if-eqz v7, :cond_6

    move v2, v5

    :goto_4
    goto :goto_1

    :cond_5
    move v0, v6

    .line 1281
    goto :goto_3

    :cond_6
    move v2, v6

    .line 1282
    goto :goto_4

    .line 1290
    .end local v4           #params:I
    .restart local v3       #km:Landroid/app/KeyguardManager;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isWfdConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1291
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto :goto_2

    .line 1274
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
    .end sparse-switch
.end method

.method setDecorPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 612
    :cond_0
    return-void
.end method

.method setDecorVisibility(I)V
    .locals 8
    .parameter "windowMode"

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 627
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 629
    .local v0, decor:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 631
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 636
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 639
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    const v4, 0x1080526

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 640
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 643
    .local v1, option:I
    const/high16 v3, 0x10

    and-int/2addr v3, v1

    if-nez v3, :cond_6

    .line 645
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x108052c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 646
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 650
    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-eqz v3, :cond_5

    .line 651
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x1080520

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 657
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_3

    .line 658
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 659
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 662
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 663
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 665
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 685
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 686
    invoke-virtual {p0, v6, v5, v6, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 688
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mNeedsPadding:Z

    if-eqz v3, :cond_4

    .line 689
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->calculatePaddingRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 690
    .local v2, paddingRect:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 726
    .end local v1           #option:I
    .end local v2           #paddingRect:Landroid/graphics/Rect;
    :cond_4
    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-nez v3, :cond_0

    .line 727
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 654
    .restart local v1       #option:I
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x108051f

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 669
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x108052b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 670
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 673
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_7

    .line 674
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 675
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 678
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 679
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 681
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 682
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setTouchReceiver(Z)V

    goto :goto_2

    .line 695
    .end local v1           #option:I
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowNoController(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 699
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 700
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 703
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 706
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x108052a

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 707
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 710
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-eqz v3, :cond_a

    .line 711
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 715
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 716
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 718
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 720
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setTouchReceiver(Z)V

    .line 722
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 724
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mNeedsPadding:Z

    goto/16 :goto_3
.end method

.method setTouchReceiver(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 616
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-nez v1, :cond_1

    .line 617
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 618
    .local v0, mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.multiwindow.MW_TOUCH_DETECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 624
    .end local v0           #mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    goto :goto_0
.end method

.method setWindowParams(I)V
    .locals 8
    .parameter "windowMode"

    .prologue
    const/high16 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 548
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 549
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 551
    .local v3, winInfo:Landroid/os/Bundle;
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 553
    .local v0, newSize:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 554
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 556
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFullSize(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 558
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 565
    :goto_0
    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 567
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x10401

    and-int/2addr v4, v5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 568
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x320

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 605
    .end local v0           #newSize:Landroid/graphics/Rect;
    .end local v3           #winInfo:Landroid/os/Bundle;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 606
    return-void

    .line 561
    .restart local v0       #newSize:Landroid/graphics/Rect;
    .restart local v3       #winInfo:Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 562
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 573
    .end local v0           #newSize:Landroid/graphics/Rect;
    .end local v3           #winInfo:Landroid/os/Bundle;
    :cond_2
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 574
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 575
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 576
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 577
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 579
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x10321

    and-int/2addr v4, v5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, restoredFlags:I
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    .line 586
    or-int/lit8 v2, v2, 0x20

    .line 588
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_4

    .line 589
    or-int/lit16 v2, v2, 0x200

    .line 592
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_5

    .line 593
    or-int/2addr v2, v7

    .line 596
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_6

    .line 597
    or-int/lit16 v2, v2, 0x100

    .line 600
    :cond_6
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7

    .line 601
    or-int/lit16 v2, v2, 0x400

    .line 603
    :cond_7
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v4, v2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
