.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;
.super Landroid/database/DataSetObserver;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexerObserver"
.end annotation


# instance fields
.field private final INDEX_UPDATE_DELAY:J

.field mDataInvalid:Z

.field mUpdateIndex:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 2
    .parameter

    .prologue
    .line 1913
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1915
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->INDEX_UPDATE_DELAY:J

    .line 1916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 1935
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver$1;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyDataSetChange()V
    .locals 4

    .prologue
    .line 1931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 1932
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1933
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1934
    return-void
.end method


# virtual methods
.method public hasIndexerDataValid()Z
    .locals 1

    .prologue
    .line 1928
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->mDataInvalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChanged()V
    .locals 0

    .prologue
    .line 1919
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1920
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 1921
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 1924
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1925
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 1926
    return-void
.end method
