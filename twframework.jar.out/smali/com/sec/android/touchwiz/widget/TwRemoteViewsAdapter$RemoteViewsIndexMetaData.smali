.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsIndexMetaData"
.end annotation


# instance fields
.field isRequested:Z

.field itemId:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

.field typeId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;Lcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V
    .locals 0
    .parameter
    .parameter "v"
    .parameter "itemId"
    .parameter "requested"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 461
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Lcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V

    .line 462
    return-void
.end method


# virtual methods
.method public set(Lcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V
    .locals 1
    .parameter "v"
    .parameter "id"
    .parameter "requested"

    .prologue
    .line 465
    iput-wide p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    .line 466
    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 470
    :goto_0
    iput-boolean p4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->isRequested:Z

    .line 471
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    goto :goto_0
.end method
