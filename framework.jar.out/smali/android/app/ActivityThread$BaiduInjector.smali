.class Landroid/app/ActivityThread$BaiduInjector;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# static fields
.field static sMultiThemeChanges:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    sput v0, Landroid/app/ActivityThread$BaiduInjector;->sMultiThemeChanges:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lockAppChannelNumberBaidu(Landroid/app/ActivityThread;)V
    .locals 5
    .parameter "at"

    .prologue
    .line 252
    iget-object v3, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 254
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/app/ActivityThread$ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/ActivityThread$ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 257
    .local v2, r:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    check-cast v3, Landroid/content/res/BaiduAssetManager;

    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/BaiduAssetManager;->setPackageName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    check-cast v3, Landroid/content/res/BaiduAssetManager;

    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/BaiduAssetManager;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 264
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/ActivityThread$ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method static multiTheme_freeCanvas(Landroid/app/ActivityThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 245
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 247
    :cond_0
    return-void
.end method

.method static final multiTheme_refreshFontCache(Landroid/content/ComponentCallbacks2;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 228
    sget v1, Landroid/app/ActivityThread$BaiduInjector;->sMultiThemeChanges:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 229
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 230
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 231
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Landroid/app/ContextImpl;

    if-eqz v1, :cond_0

    .line 236
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 237
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 241
    :cond_0
    return-void
.end method
