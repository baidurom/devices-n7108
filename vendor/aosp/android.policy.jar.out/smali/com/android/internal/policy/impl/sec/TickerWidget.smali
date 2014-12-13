.class public Lcom/android/internal/policy/impl/sec/TickerWidget;
.super Landroid/widget/FrameLayout;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/TickerWidget$16;,
        Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final DBG_FB:Z = true

.field private static final TAG:Ljava/lang/String; = "TickerWidget"

.field private static final TICKER_FAILED_MSG_SHOWING_TIME:I = 0x7d0

.field private static final TICKER_REFRESH_WAITING_TIME:I = 0xea60


# instance fields
.field private final MAX_RETRIAL_CNT_WHEN_NO_DATA:I

.field private final MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

.field private final MSG_SHOW_NEWS_REFRESH_FAILED:I

.field private final MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

.field private final MSG_SHOW_PREVIOUS_NEWS_DATA:I

.field private final MSG_SHOW_PREVIOUS_STOCK_DATA:I

.field private final MSG_SHOW_STOCK_REFRESH_FAILED:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentFacebookData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNewsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStockData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookOnClickListener:Landroid/view/View$OnClickListener;

.field protected mFacebookRefreshing:Z

.field private mHandleArrowImage:Landroid/widget/ImageView;

.field private mHandleLogoImage:Landroid/widget/ImageView;

.field private mHandleProgressBar:Landroid/widget/ProgressBar;

.field private mHandleRefreshImage:Landroid/widget/ImageView;

.field private mHandleUpdateDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

.field private mIsDataReady:Z

.field private mIsFacebookInstalled:Z

.field private mIsFacebookLogin:Z

.field private mIsFacebookRefreshFailed:Z

.field private mIsNewsRefreshFailed:Z

.field private mIsStockRefreshFailed:Z

.field private mNewsOnClickListener:Landroid/view/View$OnClickListener;

.field protected mNewsRefreshing:Z

.field private mOrientation:I

.field private mRetrialCntWhenNoData:I

.field private mSinaweiboOnClickListener:Landroid/view/View$OnClickListener;

.field private mStockOnClickListener:Landroid/view/View$OnClickListener;

.field private mStockRefreshing:Z

.field mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

.field private mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

.field private mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

.field private mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

.field private mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"
    .parameter "callback"
    .parameter "unlockWidget"
    .parameter "updateMonitor"

    .prologue
    const/4 v4, 0x1

    .line 262
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MAX_RETRIAL_CNT_WHEN_NO_DATA:I

    .line 86
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    .line 88
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_NEWS_REFRESH_FAILED:I

    .line 89
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_STOCK_REFRESH_FAILED:I

    .line 90
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_PREVIOUS_NEWS_DATA:I

    .line 91
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_PREVIOUS_STOCK_DATA:I

    .line 92
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

    .line 93
    const/16 v2, 0x12c5

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

    .line 98
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$1;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$2;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    .line 264
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 265
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 266
    if-eqz p4, :cond_0

    .line 267
    check-cast p4, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local p4
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .line 269
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setFocusable(Z)V

    .line 270
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setFocusableInTouchMode(Z)V

    .line 271
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setDescendantFocusability(I)V

    .line 273
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mOrientation:I

    .line 275
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    const-string v2, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    const-string v2, "com.sec.android.daemonapp.ap.sinanews.intent.action.SNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    :goto_0
    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 289
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 290
    const v2, 0x1090061

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 294
    :goto_1
    const v2, 0x102030b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    .line 295
    const v2, 0x1020314

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    .line 296
    const v2, 0x102030c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    .line 298
    const v2, 0x102030e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    .line 299
    const v2, 0x102030f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    .line 300
    const v2, 0x1020313

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v4, 0x104073a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    const v2, 0x1020312

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    .line 303
    const v2, 0x1020310

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    .line 305
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$3;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    .line 324
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$4;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    .line 343
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$5;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$6;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mSinaweiboOnClickListener:Landroid/view/View$OnClickListener;

    .line 388
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$7;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;)V

    .line 416
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$8;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;)V

    .line 440
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$9;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;)V

    .line 462
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$10;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$11;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$12;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$13;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$13;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 500
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget$14;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$14;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 509
    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerWidget$15;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerWidget$15;-><init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 529
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V

    .line 530
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V

    .line 533
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->getSettingProperies()V

    .line 535
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateTickerData()V

    .line 537
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->setSlidingSpeed()V

    .line 538
    return-void

    .line 283
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    const v2, 0x1090064

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1
.end method

.method private UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V
    .locals 14
    .parameter "status"

    .prologue
    const v11, 0x104067e

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 880
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 881
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 883
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v9, v10, :cond_0

    .line 884
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    if-nez v9, :cond_2

    .line 885
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 886
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    .line 894
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 895
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 896
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    .line 904
    :cond_1
    :goto_1
    sget-object v9, Lcom/android/internal/policy/impl/sec/TickerWidget$16;->$SwitchMap$com$android$internal$policy$impl$sec$TickerUtil$TickerStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 956
    :goto_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    if-eqz v9, :cond_6

    .line 957
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    :goto_3
    return-void

    .line 888
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    if-nez v9, :cond_0

    .line 889
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 890
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    goto :goto_0

    .line 898
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 899
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 900
    sget-object p1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    goto :goto_1

    .line 906
    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 907
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 908
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 909
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getNewsUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 912
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 913
    .local v7, newsNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v7}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 916
    .end local v7           #newsNoDataMessage:Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040680

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 917
    .local v6, newsNoCountry:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_2

    .line 920
    .end local v6           #newsNoCountry:Ljava/lang/String;
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 921
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 922
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getStockUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 925
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040681

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 926
    .local v8, stockNoItem:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 929
    .end local v8           #stockNoItem:Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 930
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 931
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getFacebookUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 935
    :pswitch_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, facebookNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 939
    .end local v2           #facebookNoDataMessage:Ljava/lang/String;
    :pswitch_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040688

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 940
    .local v5, messageLogin:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v5, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 943
    .end local v5           #messageLogin:Ljava/lang/String;
    :pswitch_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040689

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 944
    .local v4, messageInstalled:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 947
    .end local v4           #messageInstalled:Ljava/lang/String;
    :pswitch_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040682

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v9, v10, :cond_5

    .line 949
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040687

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 951
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v3, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 959
    .end local v3           #message:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 960
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v9, v13}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setVisibility(I)V

    .line 961
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 963
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v9, v12}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setBottomOffset(I)V

    .line 964
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_3

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showNewsRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showStockRefreshFailed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/sec/TickerWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookInstalled()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousNewsData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestTickerDataToDemon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousStockData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showFacebookRefreshFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousFacebookData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateTickerData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    return-object v0
.end method

.method private getSettingProperies()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 971
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contents_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 972
    .local v1, tickertype:I
    packed-switch v1, :pswitch_data_0

    .line 987
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sliding_speed"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 988
    .local v0, tickerSpeed:I
    packed-switch v0, :pswitch_data_1

    .line 1001
    :goto_1
    return-void

    .line 974
    .end local v0           #tickerSpeed:I
    :pswitch_0
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    goto :goto_0

    .line 977
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    goto :goto_0

    .line 980
    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    goto :goto_0

    .line 990
    .restart local v0       #tickerSpeed:I
    :pswitch_3
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 993
    :pswitch_4
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 996
    :pswitch_5
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 972
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 988
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestFacebookDataToDemon()V
    .locals 2

    .prologue
    .line 1072
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1075
    return-void
.end method

.method private requestNewsDataToDemon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1086
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1087
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sn_daemon_service_key_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1088
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_0
    return-void

    .line 1090
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.ap.sinanews.intent.ACTION_GET_NEWSLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinanews"

    const-string v3, "com.sec.android.daemonapp.ap.sinanews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1093
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1096
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "yh_daemon_service_key_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1097
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1099
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1101
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1102
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v3, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    .restart local v0       #component:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1109
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1103
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1104
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.camobile"

    const-string v3, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1

    .line 1106
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v3, "com.sec.android.daemonapp.ap.yahoonews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1
.end method

.method private requestSinaweiboDataToDemon()V
    .locals 2

    .prologue
    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1081
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1083
    return-void
.end method

.method private requestStockDataToDemon()V
    .locals 8

    .prologue
    .line 1115
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1120
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1121
    const-string v6, "TickerWidget"

    const-string v7, "Yahoo daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.yahoostock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1125
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v0           #component:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :try_start_1
    const-string v6, "com.sec.android.daemonapp.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1131
    const-string v6, "TickerWidget"

    const-string v7, "Edaily  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.stockclock"

    const-string v7, "com.sec.android.daemonapp.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1135
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1136
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_1
    move-exception v2

    .line 1137
    .local v2, e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Edaily  daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :try_start_2
    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1141
    const-string v6, "TickerWidget"

    const-string v7, "Sina  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.sinastock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1145
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1146
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    .line 1147
    .local v3, e3:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestTickerDataToDemon()V
    .locals 8

    .prologue
    const/16 v7, 0x12c4

    const/16 v6, 0x12c1

    const/16 v5, 0x12c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1024
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v1, v2, :cond_2

    .line 1026
    const-string v1, "TickerWidget"

    const-string v2, "Request news data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestNewsDataToDemon()V

    .line 1028
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    .line 1029
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 1032
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1035
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1067
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v1, v2, :cond_4

    .line 1039
    const-string v1, "TickerWidget"

    const-string v2, "Request stock data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestStockDataToDemon()V

    .line 1041
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    .line 1042
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z

    .line 1045
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1048
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1049
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v1, v2, :cond_1

    .line 1051
    const-string v1, "TickerWidget"

    const-string v2, "Request facebook data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1053
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestSinaweiboDataToDemon()V

    .line 1057
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookRefreshing:Z

    .line 1058
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 1061
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1062
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1063
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1064
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1055
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->requestFacebookDataToDemon()V

    goto :goto_1
.end method

.method private setSlidingSpeed()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setSlidingSpeed(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;)V

    .line 669
    return-void
.end method

.method private showFacebookRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c5

    .line 598
    const-string v2, "TickerWidget"

    const-string v3, "Facebook Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 603
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 605
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x104067f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 613
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 614
    return-void
.end method

.method private showNewsRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c2

    .line 617
    const-string v2, "TickerWidget"

    const-string v3, "News Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 622
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 624
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x104067f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 632
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 633
    return-void
.end method

.method private showPreviousFacebookData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 558
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookRefreshing:Z

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 563
    return-void
.end method

.method private showPreviousNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 570
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsRefreshing:Z

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 575
    return-void
.end method

.method private showPreviousStockData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 545
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockRefreshing:Z

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 551
    return-void
.end method

.method private showStockRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c3

    .line 578
    const-string v2, "TickerWidget"

    const-string v3, "Stock Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 583
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsStockRefreshFailed:Z

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x104067f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 593
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 595
    return-void
.end method

.method private updateFacebookData()V
    .locals 5

    .prologue
    .line 720
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v3, 0x1080477

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v4, 0x1040737

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 725
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookInstalled()V

    .line 728
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookLoginChecked()V

    .line 731
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 733
    .local v0, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 735
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    .line 736
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 752
    :goto_0
    return-void

    .line 738
    :cond_0
    const-string v2, "TickerWidget"

    const-string v3, "There is no data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 741
    const-string v2, "TickerWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rcnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 746
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mRetrialCntWhenNoData:I

    .line 749
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 750
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_0
.end method

.method private updateFacebookInstalled()V
    .locals 7

    .prologue
    .line 686
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 688
    .local v4, packagemanager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2040

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 692
    .local v0, allPackageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 693
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 694
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.facebook.katana"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 696
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 700
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 701
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFacebookLoginChecked()V
    .locals 3

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 707
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 709
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 710
    const-string v1, "TickerWidget"

    const-string v2, "login successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 714
    const-string v1, "TickerWidget"

    const-string v2, "updateFacebookLoginChecked() : login failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNewsData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 816
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 817
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080471

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 829
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040738

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 836
    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 837
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 838
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    .line 839
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 851
    :cond_1
    :goto_1
    return-void

    .line 819
    .end local v0           #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 820
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108046f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 822
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108046d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 826
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080470

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 827
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 840
    .restart local v0       #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 841
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 842
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_1

    .line 843
    :cond_6
    if-nez v0, :cond_1

    .line 844
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 845
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_1

    .line 848
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateSinaweiboData()V
    .locals 3

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080472

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 790
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mSinaweiboOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateSinaweiboInstalled()V

    .line 796
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateSinaweiboLoginChecked()V

    .line 799
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 801
    .local v0, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 803
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    .line 804
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 811
    :goto_0
    return-void

    .line 806
    :cond_0
    const-string v1, "TickerWidget"

    const-string v2, "There is no data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 809
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_0
.end method

.method private updateSinaweiboInstalled()V
    .locals 7

    .prologue
    .line 755
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 757
    .local v4, packagemanager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2040

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 761
    .local v0, allPackageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 762
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 763
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.sina.weibo"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sina.spen.weibo"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 764
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 765
    const-string v5, "TickerWidget"

    const-string v6, "isSinaweiboInstalled() : true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 769
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z

    .line 770
    const-string v5, "TickerWidget"

    const-string v6, "isSinaweiboInstalled() : false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSinaweiboLoginChecked()V
    .locals 3

    .prologue
    .line 774
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.sns3.sinaweibo"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 776
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 778
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 779
    const-string v1, "TickerWidget"

    const-string v2, "login successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookLogin:Z

    .line 783
    const-string v1, "TickerWidget"

    const-string v2, "updateSinaweiboLoginChecked() : login failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStockData()V
    .locals 4

    .prologue
    .line 856
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080476

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 864
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040739

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getStockData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 868
    .local v0, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 870
    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    .line 871
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    .line 876
    :goto_1
    return-void

    .line 858
    .end local v0           #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080478

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108047c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 862
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 873
    .restart local v0       #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsDataReady:Z

    .line 874
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateTickerData()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_1

    .line 673
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateNewsData()V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_2

    .line 675
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateStockData()V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_0

    .line 677
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateSinaweiboData()V

    goto :goto_0

    .line 680
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookData()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->cleanUp()V

    .line 1020
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->cleanUp()V

    .line 1021
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 642
    const-string v0, "TickerWidget"

    const-string v1, "onKeyDown at TickerWidget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 647
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose()V

    goto :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMinTickerHeights()I
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    if-nez v0, :cond_0

    .line 1155
    const/4 v0, 0x0

    .line 1157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getMinTickerHeights()I

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->onPause()V

    .line 1011
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->onPause()V

    .line 1012
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->onResume()V

    .line 1006
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->onResume()V

    .line 1007
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose()V

    .line 662
    const/4 v0, 0x1

    .line 664
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startAutoScroll()V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    .line 1166
    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 1162
    return-void
.end method
