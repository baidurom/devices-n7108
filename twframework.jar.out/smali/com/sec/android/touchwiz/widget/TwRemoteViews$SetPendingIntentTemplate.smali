.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPendingIntentTemplate"
.end annotation


# static fields
.field public static final TAG:I = 0x8


# instance fields
.field pendingIntentTemplate:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "pendingIntentTemplate"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 288
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->viewId:I

    .line 289
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 290
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->viewId:I

    .line 294
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 295
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "root"
    .parameter "rootParent"

    .prologue
    .line 305
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, target:Landroid/view/View;
    if-nez v2, :cond_0

    .line 361
    :goto_0
    return-void

    .line 309
    :cond_0
    instance-of v3, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 310
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;

    .line 312
    .local v0, av:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate$1;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;)V

    .line 354
    .local v1, listener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 355
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    .end local v0           #av:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    .end local v1           #listener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;
    :cond_1
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 298
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 301
    return-void
.end method
