.class public Lcom/sec/android/touchwiz/widget/TwProgressDialog;
.super Landroid/app/AlertDialog;
.source "TwProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mBackgroundDrawable:I

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

.field private mProgressDrawable:I

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressNumberVisibility:I

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressPercentVisibility:I

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryDrawable:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const v0, 0x2070017

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    const v2, 0x2020036

    const/4 v1, 0x4

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressStyle:I

    .line 74
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressDrawable:I

    .line 75
    const v0, 0x2020037

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mBackgroundDrawable:I

    .line 76
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryDrawable:I

    .line 82
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumberVisibility:I

    .line 83
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercentVisibility:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwProgressDialog;)Lcom/sec/android/touchwiz/widget/TwProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwProgressDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"

    .prologue
    .line 107
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"

    .prologue
    .line 112
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 118
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, dialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0, p4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setCancelable(Z)V

    .line 123
    invoke-virtual {v0, p5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 124
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show()V

    .line 125
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getMax()I

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgress()I

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->incrementProgressBy(I)V

    .line 319
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->onProgressChanged()V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->incrementSecondaryProgressBy(I)V

    .line 333
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->onProgressChanged()V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const v5, 0x2040023

    const/4 v4, -0x1

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 131
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 135
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog$1;-><init>(Lcom/sec/android/touchwiz/widget/TwProgressDialog;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 162
    const v2, 0x2030001

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwProgressBar;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    .line 164
    const v2, 0x2040025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 165
    const-string v2, "%d/%d"

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 166
    const v2, 0x2040024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 167
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 168
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 171
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumberVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercentVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setView(Landroid/view/View;)V

    .line 182
    :goto_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMax:I

    if-lez v2, :cond_0

    .line 183
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    .line 185
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressVal:I

    if-lez v2, :cond_1

    .line 186
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 188
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_2

    .line 189
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setSecondaryProgress(I)V

    .line 191
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_3

    .line 192
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->incrementProgressBy(I)V

    .line 194
    :cond_3
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_4

    .line 195
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 198
    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressDrawable:I

    if-eq v2, v4, :cond_5

    .line 199
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressDrawable:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressDrawable(I)V

    .line 201
    :cond_5
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mBackgroundDrawable:I

    if-eq v2, v4, :cond_6

    .line 202
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mBackgroundDrawable:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setBackgroundDrawable(I)V

    .line 204
    :cond_6
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryDrawable:I

    if-eq v2, v4, :cond_7

    .line 205
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryDrawable:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setSecondaryDrawable(I)V

    .line 211
    :cond_7
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 212
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 215
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->onProgressChanged()V

    .line 216
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 217
    return-void

    .line 176
    .end local v1           #view:Landroid/view/View;
    :cond_9
    const v2, 0x2030002

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwProgressBar;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    .line 178
    const v2, 0x204001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mHasStarted:Z

    .line 226
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mHasStarted:Z

    .line 232
    return-void
.end method

.method public setBackgroundDrawable(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setBackgroundDrawable(I)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mBackgroundDrawable:I

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    .line 305
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->onProgressChanged()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_1

    .line 444
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 445
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 450
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 242
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->onProgressChanged()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressDrawable(I)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressDrawable:I

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setProgressNumberVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 425
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressNumberVisibility:I

    .line 426
    return-void
.end method

.method public setProgressPercentVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 435
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressPercentVisibility:I

    .line 436
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 455
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgressStyle:I

    .line 456
    return-void
.end method

.method public setSecondaryDrawable(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgressDrawable(I)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryDrawable:I

    goto :goto_0
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .parameter "secondaryProgress"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    .line 256
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->onProgressChanged()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
