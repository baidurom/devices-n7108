.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;
.super Landroid/database/DataSetObserver;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexerObserver"
.end annotation


# instance fields
.field private final INDEX_UPDATE_DELAY:J

.field mDataInvalid:Z

.field mUpdateIndex:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V
    .locals 2
    .parameter

    .prologue
    .line 2672
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2674
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->INDEX_UPDATE_DELAY:J

    .line 2675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 2694
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    return-void
.end method

.method private notifyDataSetChange()V
    .locals 4

    .prologue
    .line 2690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 2691
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2692
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mUpdateIndex:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2693
    return-void
.end method


# virtual methods
.method public hasIndexerDataValid()Z
    .locals 1

    .prologue
    .line 2687
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

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
    .line 2678
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2679
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 2680
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 2683
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 2684
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->notifyDataSetChange()V

    .line 2685
    return-void
.end method
