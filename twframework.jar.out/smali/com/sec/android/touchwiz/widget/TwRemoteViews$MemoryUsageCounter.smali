.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;
.super Ljava/lang/Object;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUsageCounter"
.end annotation


# instance fields
.field mBitmapHeapMemoryUsage:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V
    .locals 0
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V

    return-void
.end method


# virtual methods
.method public bitmapIncrement(I)V
    .locals 1
    .parameter "numBytes"

    .prologue
    .line 949
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    .line 950
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 945
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    .line 946
    return-void
.end method

.method public getBitmapHeapMemoryUsage()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->mBitmapHeapMemoryUsage:I

    return v0
.end method
