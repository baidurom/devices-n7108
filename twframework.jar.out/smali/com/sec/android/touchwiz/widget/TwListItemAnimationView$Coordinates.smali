.class Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;
.super Ljava/lang/Object;
.source "TwListItemAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Coordinates"
.end annotation


# instance fields
.field private bottom:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

.field private top:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2273
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->this$0:Lcom/sec/android/touchwiz/widget/TwListItemAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2275
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->top:I

    .line 2276
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->bottom:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    .prologue
    .line 2285
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->bottom:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 2279
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->top:I

    return v0
.end method

.method public setBottom(I)V
    .locals 0
    .parameter "bottom"

    .prologue
    .line 2288
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->bottom:I

    .line 2289
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 2282
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwListItemAnimationView$Coordinates;->top:I

    .line 2283
    return-void
.end method
