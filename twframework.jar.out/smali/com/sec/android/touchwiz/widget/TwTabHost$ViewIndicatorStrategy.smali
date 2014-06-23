.class Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 803
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 797
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setIconAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 811
    return-void
.end method
