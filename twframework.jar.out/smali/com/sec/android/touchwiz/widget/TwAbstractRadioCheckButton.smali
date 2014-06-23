.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
.super Landroid/widget/Button;
.source "TwAbstractRadioCheckButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$1;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonDrawableGravity:I

.field protected mButtonDrawablePaddingBottom:I

.field protected mButtonDrawablePaddingLeft:I

.field protected mButtonDrawablePaddingRight:I

.field protected mButtonDrawablePaddingTop:I

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    .line 79
    sget-object v4, Ltouchwiz/R$styleable;->TwAbstractRadioCheckButton:[I

    const v5, 0x2070007

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 86
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_0
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 91
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 93
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 96
    .local v3, drawableGravity:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawableGravity(I)V

    .line 98
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    .line 100
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    .line 102
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    .line 104
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    .line 107
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method private setupMinHeight()V
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, drawableIntrinsicHeight:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 273
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setMinHeight(I)V

    .line 274
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 336
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    .line 340
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->invalidate()V

    .line 344
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method protected getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonDrawableGravity()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 325
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 326
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mergeDrawableStates([I[I)[I

    .line 329
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    .line 300
    :cond_0
    return-void
.end method

.method protected onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .parameter "canvas"
    .parameter "btnDrawable"
    .parameter "drawGravity"

    .prologue
    .line 309
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 311
    .local v0, container:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 312
    .local v1, drawRc:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {p3, v2, v3, v0, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 315
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 316
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 408
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    .line 410
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 411
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->requestLayout()V

    .line 413
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 397
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setFreezesText(Z)V

    .line 398
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 400
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 402
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    .line 403
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->toggle()V

    .line 136
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 214
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-ne p1, v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz p1, :cond_0

    .line 222
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 237
    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 245
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 247
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    .line 251
    return-void

    :cond_2
    move v0, v1

    .line 244
    goto :goto_0
.end method

.method public setButtonDrawableGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 282
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    .line 283
    return-void
.end method

.method public setButtonDrawablePadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 261
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    .line 262
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    .line 263
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    .line 264
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    .line 265
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 266
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 154
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    .line 158
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    .line 163
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    .line 169
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 181
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 192
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
