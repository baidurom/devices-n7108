.class Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;
.super Ljava/lang/Object;
.source "TwWoodTabHost.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTab(I)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->access$100(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 136
    :cond_0
    return-void
.end method
