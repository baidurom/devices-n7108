.class Landroid/app/ContextImpl$BaiduApplicationContentResolver;
.super Landroid/app/ContextImpl$ApplicationContentResolver;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduApplicationContentResolver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityThread;)V
    .locals 0
    .parameter "context"
    .parameter "mainThread"

    .prologue
    .line 1741
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    .line 1742
    return-void
.end method

.method private acquireProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4
    .parameter "context"
    .parameter "auth"

    .prologue
    const/4 v3, 0x1

    .line 2038
    invoke-static {p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v0

    .line 2039
    .local v0, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    invoke-virtual {v0, p2}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkProviderPermissionSync(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2040
    const-string p2, "com.baidu.dp.impostor"

    .line 2043
    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl$BaiduApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1, p2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1
.end method

.method private acquireUnstableProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4
    .parameter "c"
    .parameter "auth"

    .prologue
    .line 2055
    invoke-static {p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v0

    .line 2056
    .local v0, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    invoke-virtual {v0, p2}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkProviderPermissionSync(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2057
    const-string p2, "com.baidu.dp.impostor"

    .line 2060
    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl$BaiduApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "context"
    .parameter "auth"

    .prologue
    .line 2032
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl$BaiduApplicationContentResolver;->acquireProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "c"
    .parameter "auth"

    .prologue
    .line 2049
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl$BaiduApplicationContentResolver;->acquireUnstableProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method
