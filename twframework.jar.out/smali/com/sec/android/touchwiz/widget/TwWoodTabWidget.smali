.class public Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
.super Landroid/widget/LinearLayout;
.source "TwWoodTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$1;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawBottomStrips:Z

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    const/high16 v0, 0x201

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDrawBottomStrips:Z

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->initTabWidget()V

    .line 71
    sget-object v1, Ltouchwiz/R$styleable;->TwTabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;)Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 3

    .prologue
    .line 98
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setOrientation(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mContext:Landroid/content/Context;

    .line 102
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setFocusable(Z)V

    .line 113
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    .line 302
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 305
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 311
    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 315
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 316
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, divider:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 320
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    .end local v0           #divider:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getTabCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;ILcom/sec/android/touchwiz/widget/TwWoodTabWidget$1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 331
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 177
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->invalidate()V

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 277
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    .line 280
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setCurrentTab(I)V

    .line 283
    if-eq v0, p1, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 286
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 88
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 89
    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    .line 93
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 90
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 91
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    mul-int/lit8 p1, p1, 0x2

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildCount()I

    move-result v0

    .line 141
    .local v0, children:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 142
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 144
    :cond_0
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 341
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    .line 342
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    if-eqz p2, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, i:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getTabCount()I

    move-result v1

    .line 349
    .local v1, numTabs:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 351
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setCurrentTab(I)V

    .line 352
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_0

    .line 355
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mStripMoved:Z

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 82
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 252
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 257
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    .line 258
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 259
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mStripMoved:Z

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method setDrawBottomStrips(Z)V
    .locals 0
    .parameter "drawBottomStrips"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mDrawBottomStrips:Z

    .line 173
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getTabCount()I

    move-result v1

    .line 293
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 294
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;

    .line 338
    return-void
.end method
