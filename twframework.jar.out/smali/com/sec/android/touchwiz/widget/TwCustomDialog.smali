.class public Lcom/sec/android/touchwiz/widget/TwCustomDialog;
.super Landroid/app/Dialog;
.source "TwCustomDialog.java"


# instance fields
.field private mAbsLayout:Landroid/widget/AbsoluteLayout;

.field private mBGColor:I

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBGResId:I

.field private mContext:Landroid/content/Context;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGResId:I

    .line 40
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGColor:I

    .line 43
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mX:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mY:I

    .line 47
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x203001b

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20500bf

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 58
    const v0, 0x2040079

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mAbsLayout:Landroid/widget/AbsoluteLayout;

    .line 59
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mAbsLayout:Landroid/widget/AbsoluteLayout;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout;->setPadding(IIII)V

    .line 62
    const v0, 0x204007a

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGResId:I

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGResId:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGColor:I

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 72
    :cond_2
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGColor:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGResId:I

    .line 94
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGResId:I

    .line 87
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGColor:I

    .line 88
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGResId:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mBGColor:I

    .line 82
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 97
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mX:I

    .line 98
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mY:I

    .line 99
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "customV"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCustomDialog;->mView:Landroid/view/View;

    .line 76
    return-void
.end method
