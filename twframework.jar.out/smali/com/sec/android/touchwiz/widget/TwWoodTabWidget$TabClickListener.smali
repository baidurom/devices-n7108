.class Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "TwWoodTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;I)V
    .locals 0
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;->mTabIndex:I

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;ILcom/sec/android/touchwiz/widget/TwWoodTabWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 361
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->access$100(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;)Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 371
    return-void
.end method
