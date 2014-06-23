.class Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "TwWoodTabHost.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwWoodTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "label"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    .prologue
    .line 521
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 522
    .local v0, context:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 524
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x203001e

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->access$900(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 528
    .local v2, tabIndicator:Landroid/view/View;
    const v4, 0x2040029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 529
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20500da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 533
    return-object v2
.end method
