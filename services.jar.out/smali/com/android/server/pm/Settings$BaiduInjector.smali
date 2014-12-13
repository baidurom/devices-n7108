.class public Lcom/android/server/pm/Settings$BaiduInjector;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field private static mThirdBaiduApps:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.browser.apps"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.appsearch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.baidu.voiceassistant"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.baidu.searchbox"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.baidu.BaiduMap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.baidu.netdisk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/Settings$BaiduInjector;->mThirdBaiduApps:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isThirdBaiduApps(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkg"

    .prologue
    .line 176
    sget-object v0, Lcom/android/server/pm/Settings$BaiduInjector;->mThirdBaiduApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 177
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const/4 v4, 0x1

    .line 181
    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return v4

    .line 176
    .restart local v3       #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static setBaiduStopped(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .parameter "settings"
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    .line 187
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/pm/Settings$BaiduInjector;->isThirdBaiduApps(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    #calls: Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;
    invoke-static {p0}, Lcom/android/server/pm/Settings;->access$invoke-getAllUsers-2e2378(Lcom/android/server/pm/Settings;)Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_0

    .line 190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 191
    .local v1, user:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 192
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 193
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0

    .line 197
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #user:Landroid/content/pm/UserInfo;
    .end local v2           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    return-void
.end method
