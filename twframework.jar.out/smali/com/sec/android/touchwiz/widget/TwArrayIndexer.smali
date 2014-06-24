.class public Lcom/sec/android/touchwiz/widget/TwArrayIndexer;
.super Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.source "TwArrayIndexer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter "indexCharacters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, listData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    const-string v0, "TwListIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->debug:Z

    .line 70
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->mData:Ljava/util/List;

    .line 71
    const-string v0, "TwListIndexer"

    const-string v1, "TwArrayIndexer constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method


# virtual methods
.method protected getItemAt(I)Ljava/lang/String;
    .locals 1
    .parameter "pos"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getItemCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
