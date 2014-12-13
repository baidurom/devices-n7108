.class Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;
.super Landroid/database/ContentObserver;
.source "BaiduAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/BaiduAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduMContentObserver"
.end annotation


# instance fields
.field private mAssetManager:Landroid/content/res/BaiduAssetManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/res/BaiduAssetManager;)V
    .locals 0
    .parameter "handler"
    .parameter "am"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 252
    iput-object p2, p0, Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;->mAssetManager:Landroid/content/res/BaiduAssetManager;

    .line 253
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;->mAssetManager:Landroid/content/res/BaiduAssetManager;

    invoke-static {v0}, Landroid/content/res/BaiduAssetManager$BaiduChannelInjector;->readChannelPkgsBackgroud(Landroid/content/res/BaiduAssetManager;)V

    .line 262
    return-void
.end method
