.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetEmptyView"
.end annotation


# static fields
.field public static final TAG:I = 0x6


# instance fields
.field emptyViewId:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field viewId:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;II)V
    .locals 1
    .parameter
    .parameter "viewId"
    .parameter "emptyViewId"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 176
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->viewId:I

    .line 177
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->emptyViewId:I

    .line 178
    return-void
.end method

.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->viewId:I

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->emptyViewId:I

    .line 183
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "root"
    .parameter "rootParent"

    .prologue
    .line 193
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;

    if-nez v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 196
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;

    .line 198
    .local v0, adapterView:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->emptyViewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, emptyView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 186
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetEmptyView;->emptyViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
