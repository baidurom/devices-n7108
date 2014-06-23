.class Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsFrameLayoutRefSet"
.end annotation


# instance fields
.field private mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    .line 280
    return-void
.end method


# virtual methods
.method public add(ILcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;)V
    .locals 3
    .parameter "position"
    .parameter "layout"

    .prologue
    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 290
    .local v0, pos:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 298
    .local v1, refs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 299
    return-void

    .line 293
    .end local v1           #refs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 294
    .restart local v1       #refs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 329
    return-void
.end method

.method public notifyOnRemoteViewsLoaded(ILcom/sec/android/touchwiz/widget/TwRemoteViews;I)V
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "typeId"

    .prologue
    .line 306
    if-nez p2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 309
    .local v1, pos:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 312
    .local v3, refs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    .line 313
    .local v2, ref:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-virtual {v2, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V

    goto :goto_1

    .line 315
    .end local v2           #ref:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 318
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
