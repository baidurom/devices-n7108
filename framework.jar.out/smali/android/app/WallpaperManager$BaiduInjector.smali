.class Landroid/app/WallpaperManager$BaiduInjector;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$invoke-setWallpaperOffsets-aa0944(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 428
    invoke-static {p0, p1, p2, p3}, Landroid/app/WallpaperManager$BaiduInjector;->setWallpaperOffsets(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z

    move-result v0

    return v0
.end method

.method static generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 457
    return-object p0
.end method

.method private static setWallpaperOffsets(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z
    .locals 10
    .parameter "manager"
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    const/4 v9, 0x1

    .line 432
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v8

    .line 433
    .local v8, minWidth:I
    const/4 v7, -0x1

    .line 435
    .local v7, bmpWidth:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$sget-sGlobals-60adc1()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    #getter for: Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mContext-8e44b4(Landroid/app/WallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 436
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 437
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 440
    :cond_0
    if-lez v7, :cond_1

    if-ge v7, v8, :cond_1

    .line 441
    const/high16 p2, 0x3f00

    .line 446
    :cond_1
    :try_start_0
    #getter for: Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mContext-8e44b4(Landroid/app/WallpaperManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    #getter for: Landroid/app/WallpaperManager;->mWallpaperXStep:F
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mWallpaperXStep-2e2e4d(Landroid/app/WallpaperManager;)F

    move-result v4

    #getter for: Landroid/app/WallpaperManager;->mWallpaperYStep:F
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mWallpaperYStep-3eebf1(Landroid/app/WallpaperManager;)F

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return v9

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0
.end method
