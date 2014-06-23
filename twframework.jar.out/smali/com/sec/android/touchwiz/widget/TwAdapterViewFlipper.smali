.class public Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;
.super Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;
.source "TwAdapterViewFlipper.java"


# annotations
.annotation runtime Lcom/sec/android/touchwiz/widget/TwRemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAdvancedByHost:Z

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;-><init>(Landroid/content/Context;)V

    .line 49
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    .line 50
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    .line 54
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    .line 55
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    .line 56
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    .line 78
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->FLIP_MSG:I

    .line 250
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    .line 50
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    .line 52
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    .line 53
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    .line 54
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    .line 55
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    .line 56
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    .line 78
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->FLIP_MSG:I

    .line 250
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    .line 69
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    .line 73
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    return v0
.end method

.method private updateRunning()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    .line 196
    return-void
.end method

.method private updateRunning(Z)V
    .locals 5
    .parameter "flipNow"

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v3, :cond_1

    move v1, v2

    .line 209
    .local v1, running:Z
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    if-eq v1, v3, :cond_0

    .line 210
    if-eqz v1, :cond_2

    .line 211
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->showOnly(IZ)V

    .line 212
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    .line 223
    :cond_0
    return-void

    .line 207
    .end local v1           #running:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 215
    .restart local v1       #running:Z
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    .line 271
    return-void
.end method

.method public isAutoStart()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->onAttachedToWindow()V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->startFlipping()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->onDetachedFromWindow()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    .line 115
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->onWindowVisibilityChanged(I)V

    .line 120
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    .line 121
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    .line 122
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 127
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    .line 128
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0
    .parameter "autoStart"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    .line 238
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 137
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    .line 138
    return-void
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showNext()V

    .line 170
    return-void
.end method

.method public showPrevious()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showPrevious()V

    .line 186
    return-void
.end method

.method public startFlipping()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    .line 145
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    .line 146
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    .line 153
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    .line 154
    return-void
.end method
