.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUserLoadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 352
    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 397
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 398
    .local v0, context:Landroid/content/Context;
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct {v5, v8, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;Landroid/content/Context;)V

    .line 401
    .local v5, layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v9

    monitor-enter v9

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, customLoadingViewAvailable:Z
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 407
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 408
    .local v7, loadingView:Landroid/view/View;
    const v8, 0x1020254

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v10}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 410
    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 411
    const/4 v1, 0x1

    .line 417
    .end local v7           #loadingView:Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 420
    :try_start_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v8, :cond_1

    .line 422
    :try_start_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 423
    .local v4, firstView:Landroid/view/View;
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/view/View;->measure(II)V

    .line 426
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 427
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 438
    .end local v4           #firstView:Landroid/view/View;
    :cond_1
    :goto_1
    :try_start_4
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$1200(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x10900ca

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 441
    .local v6, loadingTextView:Landroid/widget/TextView;
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 442
    new-instance v8, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V

    .line 446
    .end local v6           #loadingTextView:Landroid/widget/TextView;
    :cond_2
    monitor-exit v9

    .line 448
    return-object v5

    .line 412
    :catch_0
    move-exception v3

    .line 413
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "RemoteViewsAdapter"

    const-string v10, "Error inflating custom loading view, using default loadingview instead"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 446
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 428
    :catch_1
    move-exception v3

    .line 429
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_5
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->access$1100(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    .line 430
    .local v2, density:F
    const/high16 v8, 0x4248

    mul-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 432
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 433
    const-string v8, "RemoteViewsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating first RemoteViews"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMappedViewType(I)I
    .locals 4
    .parameter "typeId"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    :goto_0
    return v0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 389
    .local v0, incrementalTypeId:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 367
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 368
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 369
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 370
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 371
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 372
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 373
    return-void
.end method

.method public set(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 355
    monitor-enter p1

    .line 356
    :try_start_0
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 357
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 358
    iget-boolean v0, p1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 359
    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    iget-object v1, p1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V

    .line 360
    monitor-exit p1

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadingViewTemplates(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V
    .locals 1
    .parameter "loadingView"
    .parameter "firstView"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 377
    if-eqz p2, :cond_0

    .line 378
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 381
    :cond_0
    return-void
.end method
