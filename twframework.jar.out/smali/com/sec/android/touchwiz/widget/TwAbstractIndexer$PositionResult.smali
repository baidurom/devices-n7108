.class Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
.super Ljava/lang/Object;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionResult"
.end annotation


# instance fields
.field exactMatch:Z

.field position:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 560
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 563
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .parameter "pos"
    .parameter "exact"

    .prologue
    .line 556
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 558
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 559
    return-void
.end method
