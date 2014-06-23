.class abstract Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.super Ljava/lang/Object;
.source "TwRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Action"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;
        }
    .end annotation
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method protected startIntentSafely(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 8
    .parameter "context"
    .parameter "pendingIntent"
    .parameter "fillInIntent"

    .prologue
    const/4 v7, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v6

    .line 158
    .local v6, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 159
    goto :goto_0

    .line 160
    .end local v6           #e:Landroid/content/IntentSender$SendIntentException;
    :catch_1
    move-exception v6

    .line 161
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent due to unknown exception: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 163
    goto :goto_0
.end method

.method public updateMemoryUsageEstimate(Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;)V
    .locals 0
    .parameter "counter"

    .prologue
    .line 146
    return-void
.end method
