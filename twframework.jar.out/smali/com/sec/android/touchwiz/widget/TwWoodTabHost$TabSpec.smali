.class public Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
.super Ljava/lang/Object;
.source "TwWoodTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwWoodTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/String;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 414
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 454
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIdContentStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;ILcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    .line 455
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 471
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IntentContentStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    .line 472
    return-object p0
.end method

.method public setContent(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 463
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    .line 464
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .locals 3
    .parameter "view"

    .prologue
    .line 445
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    .line 446
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 429
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    .line 430
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 437
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwWoodTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    .line 438
    return-object p0
.end method
