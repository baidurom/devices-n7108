.class Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;
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
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "label"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 719
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 713
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 722
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 724
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 725
    .local v1, tabIndicator:Landroid/view/View;
    sget v3, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabIndicatorType:I

    if-nez v3, :cond_0

    .line 726
    const v3, 0x2030011

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->access$1000(Lcom/sec/android/touchwiz/widget/TwTabHost;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 735
    :goto_0
    const v3, 0x2040029

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 736
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    return-object v1

    .line 730
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_0
    const v3, 0x2030009

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->access$1000(Lcom/sec/android/touchwiz/widget/TwTabHost;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public setIconAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 743
    return-void
.end method
