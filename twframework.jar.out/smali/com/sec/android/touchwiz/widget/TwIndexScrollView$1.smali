.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;
.super Ljava/lang/Object;
.source "TwIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->fadeScrollBar()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 366
    return-void
.end method
