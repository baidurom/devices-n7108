.class public Lcom/sec/android/touchwiz/widget/TwTabHost;
.super Landroid/widget/FrameLayout;
.source "TwTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwTabHost$IntentContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$FactoryContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIdContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;,
        Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field public static final TABHOST_INDICATOR_ICONALPHA_NORMAL:I = 0xff

.field public static final TABHOST_INDICATOR_ICONALPHA_SELECTED:I = 0xff

.field public static final TEXT:I = 0x0

.field public static final TEXT_AND_IMAGE:I = 0x1

.field protected static mTabIndicatorType:I


# instance fields
.field private final debug:Z

.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mMoreTab:Z

.field private mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;

.field protected mScrollToTab:I

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

.field private mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabIndicatorType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->debug:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    .line 64
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    .line 65
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mScrollToTab:I

    .line 66
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mMoreTab:Z

    .line 72
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 106
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->initTabHost()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->debug:Z

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    .line 64
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    .line 65
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mScrollToTab:I

    .line 66
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 67
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mMoreTab:Z

    .line 72
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 117
    sget-object v1, Ltouchwiz/R$styleable;->TwTabHost:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabIndicatorType:I

    .line 119
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->initTabHost()V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwTabHost;)Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwTabHost;)Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    return-object v0
.end method

.method private final initTabHost()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setFocusableInTouchMode(Z)V

    .line 124
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setDescendantFocusability(I)V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 127
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 569
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 299
    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 304
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_2
    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_3

    .line 308
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_3
    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 315
    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_4

    .line 316
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setDrawBottomStrips(Z)V

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->addView(Landroid/view/View;)V

    .line 319
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mMoreTab:Z

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->removeAllViews()V

    .line 352
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->initTabHost()V

    .line 353
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 354
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->requestLayout()V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->invalidate()V

    .line 357
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 432
    .local v0, handled:Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 433
    const/4 v0, 0x0

    .line 453
    .end local v0           #handled:Z
    :cond_0
    :goto_0
    return v0

    .line 438
    .restart local v0       #handled:Z
    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 450
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->playSoundEffect(I)V

    .line 451
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->dispatchWindowFocusChanged(Z)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 476
    :cond_1
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 135
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/String;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 257
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 260
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 266
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 269
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 483
    invoke-virtual {p0, p1, p1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(II)V

    .line 484
    return-void
.end method

.method public setCurrentTab(II)V
    .locals 5
    .parameter "index"
    .parameter "scrollTo"

    .prologue
    const/16 v3, 0xff

    const/4 v4, -0x1

    .line 487
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    if-ne p1, v1, :cond_2

    .line 492
    if-le p2, p1, :cond_0

    .line 493
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mScrollToTab:I

    .line 494
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mScrollToTab:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->scrollToTab(IZ)V

    goto :goto_0

    .line 500
    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_3

    .line 501
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;->tabClosed()V

    .line 503
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;->setIconAlpha(I)V

    .line 506
    :cond_3
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    .line 508
    if-ge p2, p1, :cond_7

    .line 509
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mScrollToTab:I

    .line 514
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 518
    .local v0, spec:Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->focusCurrentTab(I)V

    .line 521
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwTabHost$3;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost$3;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->post(Ljava/lang/Runnable;)Z

    .line 531
    :cond_4
    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;->setIconAlpha(I)V

    .line 533
    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 534
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 535
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 536
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_6

    .line 547
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 552
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->invokeOnTabChangeListener()V

    goto/16 :goto_0

    .line 511
    .end local v0           #spec:Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    :cond_7
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mScrollToTab:I

    goto :goto_1
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 417
    :cond_0
    return-void

    .line 411
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMoreTab(Z)V
    .locals 0
    .parameter "isMoreTab"

    .prologue
    .line 923
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mMoreTab:Z

    .line 924
    return-void
.end method

.method public setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;

    .line 563
    return-void
.end method

.method public setup()V
    .locals 5

    .prologue
    .line 150
    const v3, 0x1020013

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwTabWidget;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    .line 151
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    if-nez v3, :cond_0

    .line 152
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your TabHost must have a TwTabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :cond_0
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwTabHost;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    .line 161
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 162
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 164
    .local v1, originalIndex:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidgetWrapper:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->addTabWidget(Lcom/sec/android/touchwiz/widget/TwTabWidget;)V

    .line 199
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwTabHost$1;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost$1;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 217
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwTabHost$2;

    invoke-direct {v4, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost$2;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setTabSelectionListener(Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;)V

    .line 226
    const v3, 0x1020011

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 227
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    .line 228
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setup()V

    .line 242
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 243
    return-void
.end method
