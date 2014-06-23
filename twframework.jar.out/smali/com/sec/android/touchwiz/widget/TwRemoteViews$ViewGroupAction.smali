.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupAction"
.end annotation


# static fields
.field public static final TAG:I = 0x4


# instance fields
.field nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILcom/sec/android/touchwiz/widget/TwRemoteViews;)V
    .locals 1
    .parameter
    .parameter "viewId"
    .parameter "nestedViews"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 897
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->viewId:I

    .line 898
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 899
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .parameter
    .parameter "parcel"

    .prologue
    const/4 v1, 0x0

    .line 901
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->viewId:I

    .line 903
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 904
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "root"
    .parameter "rootParent"

    .prologue
    .line 914
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 915
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 916
    .local v1, target:Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 924
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    if-eqz v2, :cond_1

    .line 919
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 922
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public updateMemoryUsageEstimate(Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;)V
    .locals 1
    .parameter "counter"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->estimateBitmapMemoryUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->bitmapIncrement(I)V

    .line 931
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 907
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ViewGroupAction;->nestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 910
    return-void
.end method
