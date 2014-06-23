.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickFillInIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x9


# instance fields
.field fillInIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "fillInIntent"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 207
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->viewId:I

    .line 208
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->viewId:I

    .line 213
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 214
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "root"
    .parameter "rootParent"

    .prologue
    .line 224
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRemoteViews;->mIsWidgetCollectionChild:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->access$100(Lcom/sec/android/touchwiz/widget/TwRemoteViews;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    const-string v2, "RemoteViews"

    const-string v3, "The method setOnClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    if-ne v1, p1, :cond_3

    .line 233
    const v2, 0x1020253

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_3
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 235
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent$1;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;)V

    .line 276
    .local v0, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 217
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    return-void
.end method
