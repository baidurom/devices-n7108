.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedSizeRemoteViewsCache"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedSizeRemoteViewsCache"

.field private static final sMaxCountSlackPercent:F = 0.75f

.field private static final sMaxMemoryLimitInBytes:I = 0x200000


# instance fields
.field private mIndexMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexRemoteViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/touchwiz/widget/TwRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRequestedIndex:I

.field private mLoadIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCount:I

.field private mMaxCountSlack:I

.field private mMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

.field private mPreloadLowerBound:I

.field private mPreloadUpperBound:I

.field private mRequestedIndices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemporaryMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;I)V
    .locals 3
    .parameter
    .parameter "maxCacheSize"

    .prologue
    const/4 v2, -0x1

    .line 522
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    .line 524
    const/high16 v0, 0x3f40

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 526
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 527
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    .line 528
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    .line 531
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    .line 532
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 533
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    .line 534
    return-void
.end method

.method private getFarthestPositionFrom(I)I
    .locals 9
    .parameter "pos"

    .prologue
    .line 603
    const/4 v3, 0x0

    .line 604
    .local v3, maxDist:I
    const/4 v4, -0x1

    .line 605
    .local v4, maxDistIndex:I
    const/4 v6, 0x0

    .line 606
    .local v6, maxDistNonRequested:I
    const/4 v5, -0x1

    .line 607
    .local v5, maxDistIndexNonRequested:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 608
    .local v1, i:I
    sub-int v7, v1, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 609
    .local v0, dist:I
    if-le v0, v6, :cond_1

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    iget-boolean v7, v7, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->isRequested:Z

    if-nez v7, :cond_1

    .line 612
    move v5, v1

    .line 613
    move v6, v0

    .line 615
    :cond_1
    if-le v0, v3, :cond_0

    .line 618
    move v4, v1

    .line 619
    move v3, v0

    goto :goto_0

    .line 622
    .end local v0           #dist:I
    .end local v1           #i:I
    :cond_2
    const/4 v7, -0x1

    if-le v5, v7, :cond_3

    .line 625
    .end local v5           #maxDistIndexNonRequested:I
    :goto_1
    return v5

    .restart local v5       #maxDistIndexNonRequested:I
    :cond_3
    move v5, v4

    goto :goto_1
.end method

.method private getRemoteViewsBitmapMemoryUsage()I
    .locals 5

    .prologue
    .line 592
    const/4 v2, 0x0

    .line 593
    .local v2, mem:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 594
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 595
    .local v3, v:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    if-eqz v3, :cond_0

    .line 596
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->estimateBitmapMemoryUsage()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 599
    .end local v0           #i:Ljava/lang/Integer;
    .end local v3           #v:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    :cond_1
    return v2
.end method


# virtual methods
.method public commitTemporaryMetaData()V
    .locals 4

    .prologue
    .line 583
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v1

    .line 584
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 585
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->set(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;)V

    .line 586
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    return-void

    .line 586
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 587
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public containsMetaDataAt(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRemoteViewAt(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .locals 2
    .parameter "position"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 579
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextIndexToLoad()[I
    .locals 5

    .prologue
    .line 673
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v2

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 677
    .local v0, i:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 678
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 679
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput v4, v1, v3

    monitor-exit v2

    .line 689
    .end local v0           #i:Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 685
    .restart local v0       #i:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 686
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    monitor-exit v2

    goto :goto_0

    .line 690
    .end local v0           #i:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 689
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getRemoteViewsAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .locals 2
    .parameter "position"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 573
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTemporaryMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public insert(ILcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V
    .locals 10
    .parameter "position"
    .parameter "v"
    .parameter "itemId"
    .parameter "isRequested"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    if-lt v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 544
    .local v7, pruneFromPosition:I
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsBitmapMemoryUsage()I

    move-result v0

    const/high16 v1, 0x20

    if-lt v0, v1, :cond_2

    .line 550
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v7           #pruneFromPosition:I
    :cond_1
    move v7, p1

    .line 543
    goto :goto_0

    .line 554
    .restart local v7       #pruneFromPosition:I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 556
    .local v6, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Lcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V

    .line 560
    .end local v6           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void

    .line 558
    :cond_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;Lcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .locals 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 637
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    if-gt v7, p1, :cond_0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    if-gt p1, v7, :cond_0

    .line 638
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 639
    .local v0, center:I
    sub-int v7, p1, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    if-ge v7, v8, :cond_0

    .line 667
    .end local v0           #center:I
    :goto_0
    return v6

    .line 644
    :cond_0
    const/4 v1, 0x0

    .line 645
    .local v1, count:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v7

    .line 646
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    iget v1, v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 647
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v7

    .line 649
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 652
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 655
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v4, v6, 0x2

    .line 656
    .local v4, halfMaxCount:I
    sub-int v6, p1, v4

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 657
    add-int v6, p1, v4

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 658
    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 659
    .local v2, effectiveLowerBound:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    add-int/lit8 v8, v1, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 660
    .local v3, effectiveUpperBound:I
    move v5, v2

    .local v5, i:I
    :goto_1
    if-gt v5, v3, :cond_1

    .line 661
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 647
    .end local v2           #effectiveLowerBound:I
    .end local v3           #effectiveUpperBound:I
    .end local v4           #halfMaxCount:I
    .end local v5           #i:I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 665
    .restart local v2       #effectiveLowerBound:I
    .restart local v3       #effectiveUpperBound:I
    .restart local v4       #halfMaxCount:I
    .restart local v5       #i:I
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 666
    monitor-exit v7

    .line 667
    const/4 v6, 0x1

    goto :goto_0

    .line 666
    .end local v2           #effectiveLowerBound:I
    .end local v3           #effectiveUpperBound:I
    .end local v4           #halfMaxCount:I
    .end local v5           #i:I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method public queueRequestedPositionToLoad(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 629
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 630
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 633
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 706
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 707
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 708
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 709
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 710
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    monitor-enter v1

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mRequestedIndices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 712
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLoadIndices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 713
    monitor-exit v1

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
