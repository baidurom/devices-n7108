.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# static fields
.field private static A:Landroid/graphics/Rect; = null

.field private static B:Landroid/graphics/Rect; = null

.field private static C:Landroid/graphics/Rect; = null

.field private static D:Landroid/graphics/Rect; = null

.field private static E:Landroid/graphics/Rect; = null

.field private static F:Landroid/graphics/Rect; = null

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sIsEnabled:Z

.field private static sIsPhone:Z

.field private static sQueried:Z

.field private static sQueriedType:Z

.field private static sSplitDirection:I

.field private static sSplitRect:Landroid/graphics/Rect;

.field private static sSplitRectLock:Ljava/lang/Object;

.field private static sStatusBarHeight:I

.field private static sStatusBarVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 20
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 21
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 22
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 23
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    .line 25
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcStatusBarHeight(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 64
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 65
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 67
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 68
    .local v1, shortSize:I
    :goto_0
    mul-int/lit16 v3, v1, 0xa0

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v3, v4

    .line 70
    .local v2, shortSizeDp:I
    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v4, 0xd5

    if-ne v3, v4, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 73
    :cond_1
    return-void

    .line 67
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public static calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "splitZone"

    .prologue
    .line 179
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 182
    .local v0, result:Landroid/graphics/Rect;
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 184
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 186
    :cond_0
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 188
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 190
    :cond_1
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 192
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 194
    :cond_2
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 196
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 199
    :cond_3
    return-object v0
.end method

.method public static checkFullScreenFlag(Z)V
    .locals 1
    .parameter "fullScreenFlag"

    .prologue
    .line 56
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findCurrentWindowZone(III)I
    .locals 16
    .parameter "currentLaunchMode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 203
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 206
    const/4 v12, 0x2

    new-array v6, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    .line 211
    .local v6, split:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v7, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    .line 217
    .local v7, split3L:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v8, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    .line 223
    .local v8, split3R:[Landroid/util/Pair;
    const/4 v12, 0x4

    new-array v9, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x3

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    .line 230
    .local v9, split4:[Landroid/util/Pair;
    const/4 v11, 0x0

    .line 232
    .local v11, zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p0, :sswitch_data_0

    .line 251
    :goto_0
    :sswitch_0
    move-object v2, v11

    .local v2, arr$:[Landroid/util/Pair;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v10, v2, v3

    .line 252
    .local v10, zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    .line 253
    .local v5, rect:Landroid/graphics/Rect;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 254
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 258
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_2
    return v12

    .line 238
    .end local v2           #arr$:[Landroid/util/Pair;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :sswitch_1
    move-object v11, v6

    .line 239
    goto :goto_0

    .line 241
    :sswitch_2
    move-object v11, v7

    .line 242
    goto :goto_0

    .line 244
    :sswitch_3
    move-object v11, v8

    .line 245
    goto :goto_0

    .line 247
    :sswitch_4
    move-object v11, v9

    goto :goto_0

    .line 251
    .restart local v2       #arr$:[Landroid/util/Pair;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    .restart local v10       #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getAppDisplaySize(Landroid/graphics/Point;)V
    .locals 3
    .parameter "size"

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 49
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 51
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 52
    iget v1, v0, Landroid/graphics/Point;->y:I

    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 53
    return-void
.end method

.method private static getCurrentStatusBarVisibility()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return v0
.end method

.method public static getSplitRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 105
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    return v0
.end method

.method public static isArrangable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 308
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangeMode(IZZ)Z
    .locals 4
    .parameter "windowMode"
    .parameter "bResumed"
    .parameter "bIncludePinup"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 112
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 114
    .local v1, options:I
    const/high16 v3, 0x200

    if-eq v0, v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    const/high16 v3, 0x8

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    .line 122
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    .line 123
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 122
    :cond_2
    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_1

    .line 30
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calcStatusBarHeight(Landroid/content/Context;)V

    .line 37
    :cond_0
    if-eqz v0, :cond_2

    .line 38
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 44
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    .line 41
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_0
.end method

.method public static isFullSize(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 303
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMinimized(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 298
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 285
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 281
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    if-nez v1, :cond_1

    .line 81
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    :cond_0
    if-eqz v0, :cond_2

    .line 88
    const-string v1, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 94
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    return v1

    .line 91
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.phone.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    goto :goto_0
.end method

.method public static isPinup(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 293
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 289
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mode(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 273
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    return v0
.end method

.method private static option(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 277
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    return v0
.end method

.method public static setSplitRect(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "direction"
    .parameter "rect"

    .prologue
    .line 98
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sput p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 100
    sput-object p1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateWindowRects()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 130
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 131
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 133
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 134
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 135
    .local v1, iDeviceHeight:I
    div-int/lit8 v8, v1, 0x2

    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    add-int v3, v8, v9

    .line 136
    .local v3, iHeightBoundary:I
    div-int/lit8 v4, v2, 0x2

    .line 138
    .local v4, iWidthBoundary:I
    if-le v2, v1, :cond_1

    move v5, v6

    .line 141
    .local v5, landscape:Z
    :goto_0
    sget-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v8

    .line 142
    :try_start_0
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    if-eqz v9, :cond_0

    .line 143
    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    if-ne v9, v6, :cond_3

    .line 144
    if-eqz v5, :cond_2

    .line 145
    sget-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 157
    :cond_0
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz v5, :cond_5

    .line 160
    new-instance v6, Landroid/graphics/Rect;

    sget v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    invoke-direct {v6, v7, v8, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 161
    new-instance v6, Landroid/graphics/Rect;

    sget v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    add-int/2addr v8, v1

    invoke-direct {v6, v7, v3, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 162
    new-instance v6, Landroid/graphics/Rect;

    sget v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    invoke-direct {v6, v4, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 163
    new-instance v6, Landroid/graphics/Rect;

    sget v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    add-int/2addr v7, v1

    invoke-direct {v6, v4, v3, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    .line 171
    :goto_2
    new-instance v6, Landroid/graphics/Rect;

    sget-object v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    .line 172
    sget-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    sget-object v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 174
    new-instance v6, Landroid/graphics/Rect;

    sget-object v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    .line 175
    sget-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    sget-object v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 176
    return-void

    .end local v5           #landscape:Z
    :cond_1
    move v5, v7

    .line 138
    goto :goto_0

    .line 147
    .restart local v5       #landscape:Z
    :cond_2
    :try_start_1
    sget-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    goto :goto_1

    .line 149
    :cond_3
    sget v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 150
    if-eqz v5, :cond_4

    .line 151
    sget-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    goto :goto_1

    .line 153
    :cond_4
    sget-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 165
    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    sget v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    invoke-direct {v6, v7, v8, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 166
    new-instance v6, Landroid/graphics/Rect;

    sget v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    add-int/2addr v8, v1

    invoke-direct {v6, v7, v3, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 167
    new-instance v6, Landroid/graphics/Rect;

    sget v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    invoke-direct {v6, v4, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 168
    new-instance v6, Landroid/graphics/Rect;

    sget v7, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    add-int/2addr v7, v1

    invoke-direct {v6, v4, v3, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    goto :goto_2
.end method
