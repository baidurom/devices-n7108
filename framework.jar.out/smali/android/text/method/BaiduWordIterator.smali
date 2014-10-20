.class public Landroid/text/method/BaiduWordIterator;
.super Landroid/text/method/WordIterator;
.source "BaiduWordIterator.java"


# instance fields
.field mHasWord:Z

.field mWordEnd:I

.field private mWordSegment:Lcom/android/internal/util/WordSegment;

.field mWordStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Landroid/text/method/WordIterator;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/BaiduWordIterator;->mHasWord:Z

    .line 38
    iput v1, p0, Landroid/text/method/BaiduWordIterator;->mWordStart:I

    .line 39
    iput v1, p0, Landroid/text/method/BaiduWordIterator;->mWordEnd:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v1, -0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/BaiduWordIterator;->mHasWord:Z

    .line 38
    iput v1, p0, Landroid/text/method/BaiduWordIterator;->mWordStart:I

    .line 39
    iput v1, p0, Landroid/text/method/BaiduWordIterator;->mWordEnd:I

    .line 53
    return-void
.end method

.method private getWordSegment()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/text/method/BaiduWordIterator;->mWordSegment:Lcom/android/internal/util/WordSegment;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/internal/util/WordSegment;

    invoke-direct {v0}, Lcom/android/internal/util/WordSegment;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaiduWordIterator;->mWordSegment:Lcom/android/internal/util/WordSegment;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public getBeginning(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/text/method/BaiduWordIterator;->mHasWord:Z

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Landroid/text/method/BaiduWordIterator;->mWordStart:I

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v0

    goto :goto_0
.end method

.method public getEnd(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/text/method/BaiduWordIterator;->mHasWord:Z

    if-eqz v0, :cond_0

    .line 109
    iget v0, p0, Landroid/text/method/BaiduWordIterator;->mWordEnd:I

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v0

    goto :goto_0
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 4
    .parameter "charSequence"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/text/method/BaiduWordIterator;->getWordSegment()V

    .line 63
    iget-object v1, p0, Landroid/text/method/BaiduWordIterator;->mWordSegment:Lcom/android/internal/util/WordSegment;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/util/WordSegment;->setCharSequence(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iput-boolean v3, p0, Landroid/text/method/BaiduWordIterator;->mHasWord:Z

    .line 65
    iget-object v1, p0, Landroid/text/method/BaiduWordIterator;->mWordSegment:Lcom/android/internal/util/WordSegment;

    invoke-virtual {v1, p2}, Lcom/android/internal/util/WordSegment;->caculateWordSegment(I)[I

    move-result-object v0

    .line 66
    .local v0, result:[I
    aget v1, v0, v2

    iput v1, p0, Landroid/text/method/BaiduWordIterator;->mWordStart:I

    .line 67
    aget v1, v0, v3

    iput v1, p0, Landroid/text/method/BaiduWordIterator;->mWordEnd:I

    .line 73
    .end local v0           #result:[I
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-boolean v2, p0, Landroid/text/method/BaiduWordIterator;->mHasWord:Z

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method
