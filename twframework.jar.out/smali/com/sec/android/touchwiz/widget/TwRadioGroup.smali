.class public Lcom/sec/android/touchwiz/widget/TwRadioGroup;
.super Landroid/widget/LinearLayout;
.source "TwRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 49
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 39
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 63
    sget-object v2, Ltouchwiz/R$styleable;->TwRadioGroup:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 67
    .local v1, value:I
    if-eq v1, v4, :cond_0

    .line 68
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwRadioGroup;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwRadioGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mChildOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;-><init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mChildOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 76
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    .line 77
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 78
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 164
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 165
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwRadioGroup;I)V

    .line 168
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .parameter "viewId"
    .parameter "checked"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, checkedView:Landroid/view/View;
    instance-of v1, v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .end local v0           #checkedView:Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 107
    instance-of v1, p1, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-gez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    .line 116
    .local v0, button:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 118
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 119
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 121
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 122
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    .line 126
    .end local v0           #button:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public check(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 141
    if-eq p1, v2, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_2

    .line 146
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 149
    :cond_2
    if-eq p1, v2, :cond_3

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 156
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 225
    instance-of v0, p1, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 200
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 230
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 217
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 97
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 99
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 101
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

    .line 210
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    #setter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 87
    return-void
.end method
