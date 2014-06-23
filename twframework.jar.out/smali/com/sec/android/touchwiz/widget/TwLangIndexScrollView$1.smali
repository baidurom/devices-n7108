.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$1;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->fadeScrollBar()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V

    .line 406
    return-void
.end method
