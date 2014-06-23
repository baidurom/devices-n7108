.class public Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
.super Landroid/widget/LinearLayout;
.source "TwProgressEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwProgressEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressArea"
.end annotation


# instance fields
.field private bProgressing:Z

.field private mProgress:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mWindowWidth:I

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .local v0, dProgressGlow:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 149
    .local v1, glowWidth:I
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 151
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .local v2, rectProgressGlow:Landroid/graphics/Rect;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mProgress:I

    if-lez v3, :cond_0

    .line 154
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mProgress:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mWindowWidth:I

    add-int/lit8 v4, v4, -0x10

    if-gt v3, v4, :cond_1

    .line 155
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mProgress:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 165
    return-void

    .line 158
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mWindowWidth:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mProgress:I

    return v0
.end method

.method public isProgressing()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->bProgressing:Z

    return v0
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 176
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->mProgress:I

    .line 177
    return-void
.end method

.method public setProgressStatus(Z)V
    .locals 0
    .parameter "bProgress"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->bProgressing:Z

    .line 185
    return-void
.end method
