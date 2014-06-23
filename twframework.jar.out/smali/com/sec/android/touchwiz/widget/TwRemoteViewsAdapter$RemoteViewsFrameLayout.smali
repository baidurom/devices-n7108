.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TwRemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    .line 252
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 253
    return-void
.end method


# virtual methods
.method public onRemoteViewsLoaded(Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RemoteViewsAdapter"

    const-string v2, "Failed to apply RemoteViews."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
