.class public Lcom/sec/android/touchwiz/widget/TwProgressEdit;
.super Landroid/widget/FrameLayout;
.source "TwProgressEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    }
.end annotation


# instance fields
.field private mCurProgress:I

.field private mEditText:Landroid/widget/EditText;

.field private mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 59
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    .line 60
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->addView(Landroid/view/View;I)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->addView(Landroid/view/View;I)V

    .line 64
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->setMinimumHeight(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mCurProgress:I

    return v0
.end method

.method public setHint(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 135
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setOnClickTimer(JJ)V
    .locals 7
    .parameter "milliS"
    .parameter "interval"

    .prologue
    .line 78
    move-wide v2, p1

    .line 79
    .local v2, m:J
    move-wide v4, p3

    .line 81
    .local v4, i:J
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;-><init>(Lcom/sec/android/touchwiz/widget/TwProgressEdit;JJ)V

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->setProgress(I)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->invalidate()V

    .line 120
    return-void
.end method
