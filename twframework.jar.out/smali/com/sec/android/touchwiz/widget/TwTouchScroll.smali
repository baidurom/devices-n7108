.class public Lcom/sec/android/touchwiz/widget/TwTouchScroll;
.super Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;
.source "TwTouchScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;
    }
.end annotation


# instance fields
.field private mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x20201c2

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20201a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->setProgressDrawable(I)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->setBackgroundDrawable(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public SetListView(Landroid/widget/ListView;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->setMax(I)V

    .line 114
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTouchScroll$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll$1;-><init>(Lcom/sec/android/touchwiz/widget/TwTouchScroll;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 136
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsTouchScroll;->onProgressRefresh(FZ)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwTouchScroll;IZ)V

    .line 145
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwTouchScroll;)V

    .line 164
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwTouchScroll;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setOnTwTouchScrollChangeListener(Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTouchScroll;->mOnTouchScrollChangeListener:Lcom/sec/android/touchwiz/widget/TwTouchScroll$OnTwTouchScrollChangeListener;

    .line 157
    return-void
.end method
