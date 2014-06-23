.class public Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

.field public position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1858
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1889
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    return-void
.end method

.method private static getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .locals 4

    .prologue
    .line 1903
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1904
    :try_start_0
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1905
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 1909
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->resetState()V

    .line 1911
    .end local v0           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :goto_0
    return-object v0

    .line 1907
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 1909
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .locals 2
    .parameter "flatListPos"
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "groupMetadata"
    .parameter "groupInsertIndex"

    .prologue
    .line 1894
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 1895
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 1896
    iput-object p4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 1897
    iput p5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1898
    return-object v0
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1881
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 1882
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 1883
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1884
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 1915
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1916
    :try_start_0
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1917
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    :cond_0
    monitor-exit v1

    .line 1920
    return-void

    .line 1919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
