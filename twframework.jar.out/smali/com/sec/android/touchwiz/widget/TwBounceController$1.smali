.class Lcom/sec/android/touchwiz/widget/TwBounceController$1;
.super Ljava/lang/Object;
.source "TwBounceController.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwBounceController;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwBounceController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .parameter "input"

    .prologue
    .line 56
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    return v0
.end method
