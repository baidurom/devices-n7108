.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver$1;
.super Ljava/lang/Object;
.source "TwIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver$1;->this$1:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver$1;->this$1:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->resetScrollDepth(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$3000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)V

    .line 1938
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver$1;->this$1:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 1939
    return-void
.end method
