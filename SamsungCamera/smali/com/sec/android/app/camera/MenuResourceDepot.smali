.class public Lcom/sec/android/app/camera/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/AbstractCameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Lcom/sec/android/app/camera/EmptyView;

.field private mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

.field public mMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field public mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 1
    .parameter "activityContext"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 101
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 103
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 107
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method

.method private clearAllMenus()V
    .locals 5

    .prologue
    .line 423
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearAllMenus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 426
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    .local v0, id:I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 429
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 430
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearing..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearInvisibleViews()V
    .locals 6

    .prologue
    .line 114
    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 118
    .local v3, menusClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/MenuBase;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    .local v0, id:I
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 123
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    instance-of v4, v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 128
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 129
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_0

    .line 132
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public closeVisibleViews()V
    .locals 5

    .prologue
    .line 149
    const-string v3, "MenuResourceDepot"

    const-string v4, "closeVisibleViews"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    .local v0, id:I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 156
    .local v2, menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 160
    .end local v0           #id:I
    .end local v2           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 7
    .parameter "layoutId"
    .parameter "baseLayout"

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 377
    :goto_0
    return-object v0

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 367
    .local v1, context:Lcom/sec/android/app/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-nez v0, :cond_1

    .line 371
    new-instance v0, Lcom/sec/android/app/camera/EmptyView;

    const v3, 0x7f0b0013

    const/4 v6, 0x5

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/EmptyView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x7f030006
        :pswitch_0
    .end packed-switch
.end method

.method public getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 6
    .parameter "viewId"
    .parameter "glParentView"

    .prologue
    const/4 v0, 0x0

    .line 382
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 396
    :goto_0
    return-object v0

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 388
    .local v1, context:Lcom/sec/android/app/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 390
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-nez v0, :cond_1

    .line 391
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    const/4 v5, 0x4

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0xbd3
        :pswitch_0
    .end packed-switch
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 4
    .parameter "id"

    .prologue
    .line 163
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 164
    .local v0, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 357
    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    return-object v1

    .line 167
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 354
    :goto_1
    if-eqz v0, :cond_1

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 357
    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v1       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 169
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 170
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 172
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 173
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 175
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 176
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 178
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 179
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 181
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 182
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 184
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 185
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 187
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 188
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 190
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 191
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 193
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 194
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 196
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 197
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 199
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 200
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 202
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 203
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 205
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 206
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 208
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 209
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 211
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 212
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 214
    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BlinkDetectionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 215
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 217
    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 218
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 220
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 221
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 223
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VolumeKeyResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VolumeKeyResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 224
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 226
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 227
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 229
    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SnSMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 230
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 232
    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 233
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 235
    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 236
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 238
    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 239
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 241
    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 242
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 244
    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 245
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 247
    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 248
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 250
    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 251
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 253
    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 254
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 256
    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 257
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 259
    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 260
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 262
    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderFlashModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 263
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 265
    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderWhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 266
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 268
    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEffectResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 269
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 271
    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderTimerResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 272
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 274
    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 275
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 277
    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSpeedResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSpeedResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 278
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 280
    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 281
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 283
    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 284
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 286
    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderGuideLineResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 287
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 289
    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderReviewResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 290
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 292
    :sswitch_29
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderVolumeKeyResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderVolumeKeyResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 293
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 295
    :sswitch_2a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderVoiceCommandResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderVoiceCommandResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 296
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 298
    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderOutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 299
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 301
    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 302
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 304
    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderEditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 305
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 307
    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderSideMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 308
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 310
    :sswitch_2f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 311
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 313
    :sswitch_30
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderStorageResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 314
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 317
    :sswitch_31
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 318
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 320
    :sswitch_32
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 321
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 323
    :sswitch_33
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectRecorderMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectRecorderMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 324
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 326
    :sswitch_34
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 327
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 329
    :sswitch_35
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextualFilenameResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextualFilenameResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 330
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 332
    :sswitch_36
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderContextualFilenameResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderContextualFilenameResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 333
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 335
    :sswitch_37
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderGpsResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderGpsResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 336
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 338
    :sswitch_38
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AutoShareShotResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AutoShareShotResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 339
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 341
    :sswitch_39
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraHDRSettingsMenuResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraHDRSettingsMenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 342
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 344
    :sswitch_3a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/HDRIntensityModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/HDRIntensityModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 345
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 347
    :sswitch_3b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/HDRPictureModeResourceData;

    .end local v0           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/HDRPictureModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 348
    .restart local v0       #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_c
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_31
        0x13 -> :sswitch_17
        0x14 -> :sswitch_15
        0x15 -> :sswitch_18
        0x16 -> :sswitch_19
        0x1b -> :sswitch_1a
        0x23 -> :sswitch_1c
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1b
        0x29 -> :sswitch_1
        0x33 -> :sswitch_16
        0x35 -> :sswitch_14
        0x3f -> :sswitch_34
        0x40 -> :sswitch_35
        0x42 -> :sswitch_38
        0x43 -> :sswitch_13
        0x46 -> :sswitch_12
        0x47 -> :sswitch_39
        0x48 -> :sswitch_3a
        0x49 -> :sswitch_3b
        0xbb9 -> :sswitch_1d
        0xbbb -> :sswitch_1f
        0xbbc -> :sswitch_1e
        0xbbe -> :sswitch_22
        0xbbf -> :sswitch_20
        0xbc0 -> :sswitch_21
        0xbc1 -> :sswitch_2f
        0xbc2 -> :sswitch_26
        0xbc3 -> :sswitch_23
        0xbc4 -> :sswitch_31
        0xbc9 -> :sswitch_30
        0xbcb -> :sswitch_25
        0xbcc -> :sswitch_27
        0xbcd -> :sswitch_28
        0xbcf -> :sswitch_2b
        0xbd0 -> :sswitch_2c
        0xbd1 -> :sswitch_2d
        0xbd2 -> :sswitch_2e
        0xbd6 -> :sswitch_32
        0xbd7 -> :sswitch_24
        0xbd8 -> :sswitch_33
        0xbdb -> :sswitch_36
        0xbdc -> :sswitch_37
        0xbde -> :sswitch_2a
        0xbdf -> :sswitch_29
    .end sparse-switch
.end method

.method public isGLShootingModeMenu(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 135
    sparse-switch p1, :sswitch_data_0

    .line 144
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 142
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 435
    const-string v2, "MenuResourceDepot"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/EmptyView;->clear()V

    .line 441
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 446
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 450
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearAllMenus()V

    .line 451
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 452
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 454
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 455
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 456
    .local v1, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    goto :goto_0

    .line 458
    .end local v1           #res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 459
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 461
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    if-eqz v2, :cond_5

    .line 462
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->clear()V

    .line 463
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 465
    :cond_5
    return-void
.end method

.method public resetMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)V
    .locals 6
    .parameter "viewId"
    .parameter "glParentView"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 407
    .local v1, context:Lcom/sec/android/app/camera/AbstractCameraActivity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 413
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    const/4 v5, 0x4

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->onHideMenu()V

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0xbd3
        :pswitch_0
    .end packed-switch
.end method
