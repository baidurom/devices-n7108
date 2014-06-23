.class public Lcom/sec/android/touchwiz/widget/TwSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.source "TwSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;,
        Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method


# virtual methods
.method onHoverChanged(III)V
    .locals 2
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onHoverChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    .line 196
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    .line 197
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onProgressRefresh(FZ)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    .line 128
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBar;I)V

    .line 180
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    .line 181
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 147
    :cond_0
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 188
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    .line 189
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnSeekBarHoverListener;

    .line 172
    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 140
    return-void
.end method
