.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;->this$1:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;->this$1:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->resetScrollDepth(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$4100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Z)V

    .line 2697
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver$1;->this$1:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 2698
    return-void
.end method
