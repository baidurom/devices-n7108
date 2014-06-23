.class Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;
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
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 579
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
