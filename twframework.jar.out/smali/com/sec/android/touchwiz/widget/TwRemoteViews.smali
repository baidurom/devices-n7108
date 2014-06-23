.class public Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.super Landroid/widget/RemoteViews;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$2;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionActionWithoutParams;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViews$RemoteView;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWidgetCollectionChild:Z

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1661
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 983
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 103
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mPackage:Ljava/lang/String;

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mLayoutId:I

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z

    .line 989
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 990
    .local v0, count:I
    if-lez v0, :cond_1

    .line 991
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    .line 992
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 994
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 1023
    :pswitch_0
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #tag:I
    :cond_0
    move v3, v4

    .line 987
    goto :goto_0

    .line 996
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #tag:I
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 999
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1002
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1005
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1008
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionActionWithoutParams;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1011
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1014
    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1017
    :pswitch_8
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1020
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1029
    .end local v1           #i:I
    .end local v2           #tag:I
    :cond_1
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mMemoryUsageCounter:Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    .line 1030
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->recalculateMemoryUsage()V

    .line 1031
    return-void

    .line 994
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 967
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z

    .line 969
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mPackage:Ljava/lang/String;

    .line 970
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mLayoutId:I

    .line 973
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mMemoryUsageCounter:Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    .line 974
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->recalculateMemoryUsage()V

    .line 975
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwRemoteViews;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method private addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mMemoryUsageCounter:Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;->updateMemoryUsageEstimate(Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;)V

    .line 1099
    return-void
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "v"
    .parameter "parent"

    .prologue
    .line 1601
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1602
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1603
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1604
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;

    .line 1605
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1603
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1608
    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private prepareContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .parameter "context"

    .prologue
    .line 1612
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mPackage:Ljava/lang/String;

    .line 1614
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1616
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1625
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 1617
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1618
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    move-object v0, p1

    .line 1620
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 1622
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method private recalculateMemoryUsage()V
    .locals 4

    .prologue
    .line 1068
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mMemoryUsageCounter:Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->clear()V

    .line 1071
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1073
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1074
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mMemoryUsageCounter:Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;->updateMemoryUsageEstimate(Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;)V

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(ILcom/sec/android/touchwiz/widget/TwRemoteViews;)V
    .locals 1
    .parameter "viewId"
    .parameter "nestedView"

    .prologue
    .line 1112
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILcom/sec/android/touchwiz/widget/TwRemoteViews;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1113
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 1572
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 1574
    .local v0, c:Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1577
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1578
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 1580
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1582
    .local v2, result:Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1584
    return-object v2
.end method

.method public bridge synthetic clone()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->clone()Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .locals 3

    .prologue
    .line 1035
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mPackage:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mLayoutId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1036
    .local v0, that:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1041
    :cond_0
    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->recalculateMemoryUsage()V

    .line 1042
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->clone()Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1638
    const/4 v0, 0x0

    return v0
.end method

.method estimateBitmapMemoryUsage()I
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mMemoryUsageCounter:Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->getBitmapHeapMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter "clazz"

    .prologue
    .line 1634
    const-class v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "v"

    .prologue
    .line 1596
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    .line 1597
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1598
    return-void
.end method

.method public removeAllViews(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1122
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILcom/sec/android/touchwiz/widget/TwRemoteViews;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1123
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1534
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/16 v4, 0xc

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1535
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1410
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1411
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1545
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1546
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1421
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1422
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1487
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1488
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1509
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1510
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 1
    .parameter "viewId"
    .parameter "base"
    .parameter "format"
    .parameter "started"

    .prologue
    .line 1228
    const-string v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1229
    const-string v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1231
    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1
    .parameter "viewId"
    .parameter "childIndex"

    .prologue
    .line 1150
    const-string v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1151
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1476
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1477
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8
    .parameter "viewId"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 1339
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetDrawableParameters;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1341
    return-void
.end method

.method public setEmptyView(II)V
    .locals 1
    .parameter "viewId"
    .parameter "emptyViewId"

    .prologue
    .line 1210
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;II)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1211
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1465
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1466
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "bitmap"

    .prologue
    .line 1200
    const-string v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1201
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .parameter "viewId"
    .parameter "srcId"

    .prologue
    .line 1180
    const-string v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1181
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .parameter "viewId"
    .parameter "uri"

    .prologue
    .line 1190
    const-string v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 1191
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1443
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1444
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1555
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1556
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0
    .parameter "isWidgetCollectionChild"

    .prologue
    .line 1061
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z

    .line 1062
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1454
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1455
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "fillInIntent"

    .prologue
    .line 1308
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1309
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    .line 1269
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickPendingIntent;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1270
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntentTemplate"

    .prologue
    .line 1285
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1286
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .parameter "viewId"
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 1248
    const-string v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1249
    if-nez p4, :cond_0

    .line 1250
    const-string v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1251
    const-string v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1253
    :cond_0
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "offset"

    .prologue
    .line 1399
    const-string v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1400
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .parameter "appWidgetId"
    .parameter "viewId"
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1367
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 1368
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "intent"

    .prologue
    .line 1379
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetRemoteViewsAdapterIntent;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1380
    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "position"

    .prologue
    .line 1389
    const-string v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1390
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1432
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1433
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1498
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1499
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .parameter "viewId"
    .parameter "color"

    .prologue
    .line 1351
    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1352
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 1170
    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 1171
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 1520
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1521
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 1160
    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1161
    return-void
.end method

.method public showNext(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1131
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionActionWithoutParams;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1132
    return-void
.end method

.method public showPrevious(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1140
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionActionWithoutParams;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->addAction(Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;)V

    .line 1141
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 1642
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1643
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mLayoutId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1647
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1651
    .local v1, count:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 1653
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;

    .line 1654
    .local v0, a:Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
    invoke-virtual {v0, p1, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1652
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #a:Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    move v3, v4

    .line 1644
    goto :goto_0

    .line 1649
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #count:I
    goto :goto_1

    .line 1656
    .restart local v2       #i:I
    :cond_2
    return-void
.end method
