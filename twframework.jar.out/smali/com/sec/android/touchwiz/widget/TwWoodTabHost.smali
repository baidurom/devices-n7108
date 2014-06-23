.class public Lcom/sec/android/touchwiz/widget/TwWoodTabHost;
.super Landroid/widget/FrameLayout;
.source "TwWoodTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IntentContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIdContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 62
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 68
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->initTabHost()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 62
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 73
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->initTabHost()V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    return-object v0
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setFocusableInTouchMode(Z)V

    .line 78
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setDescendantFocusability(I)V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 82
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 200
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_1
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 212
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setDrawBottomStrips(Z)V

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->addView(Landroid/view/View;)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 219
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTab(I)V

    .line 221
    :cond_3
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->removeAllViews()V

    .line 229
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->initTabHost()V

    .line 230
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 231
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->requestLayout()V

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->invalidate()V

    .line 234
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 285
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 292
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->playSoundEffect(I)V

    .line 293
    const/4 v0, 0x1

    .line 295
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 302
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 89
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/String;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 167
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 170
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 176
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 185
    if-nez p1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 192
    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 305
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 314
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 315
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;->tabClosed()V

    .line 318
    :cond_2
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 319
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    .line 323
    .local v0, spec:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->focusCurrentTab(I)V

    .line 326
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 328
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 343
    :cond_4
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    packed-switch v1, :pswitch_data_0

    .line 358
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->invokeOnTabChangeListener()V

    goto :goto_0

    .line 345
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x202011e

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_1

    .line 348
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x202011f

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_1

    .line 351
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x2020120

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_1

    .line 354
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x2020121

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_1

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTab(I)V

    .line 270
    :cond_0
    return-void

    .line 264
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

    .line 369
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 104
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 130
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setTabSelectionListener(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;)V

    .line 139
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 140
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    const v1, 0x202011d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 148
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setup()V

    .line 159
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 160
    return-void
.end method
