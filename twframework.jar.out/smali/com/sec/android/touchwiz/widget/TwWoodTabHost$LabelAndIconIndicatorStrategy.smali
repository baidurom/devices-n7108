.class Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;
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
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 547
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 548
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 540
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 8

    .prologue
    .line 551
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 552
    .local v0, context:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 554
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x203001e

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->access$900(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 558
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x2040029

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 559
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    const v5, 0x2040015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 562
    .local v1, iconView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20500da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 566
    return-object v3
.end method
