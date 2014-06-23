.class Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "TwWoodTabHost.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwWoodTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "factory"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 623
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mFactory:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;

    .line 624
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mFactory:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    return-void
.end method
