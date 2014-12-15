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
    .locals 11
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    move-object p0, v4

    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, p2, :cond_0

    :cond_2
    int-to-float v8, p1

    const v9, 0x3fe66666

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :cond_3
    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, newbm:Landroid/graphics/Bitmap;
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, c:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .local v7, targetRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v8

    .local v2, deltaw:I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v8

    .local v1, deltah:I
    if-gtz v2, :cond_4

    if-lez v1, :cond_5

    :cond_4
    if-le v2, v1, :cond_6

    int-to-float v8, p1

    iget v9, v7, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .local v6, scale:F
    :goto_1
    iget v8, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v8

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v8

    .end local v6           #scale:F
    :cond_5
    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v8, 0x0

    invoke-virtual {v0, p0, v8, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p0, v4

    goto/16 :goto_0

    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_6
    int-to-float v8, p2

    iget v9, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v9, v9

    div-float v6, v8, v9

    .restart local v6       #scale:F
    goto :goto_1

    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #deltah:I
    .end local v2           #deltaw:I
    .end local v4           #newbm:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    .end local v7           #targetRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Can\'t generate default bitmap"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
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
