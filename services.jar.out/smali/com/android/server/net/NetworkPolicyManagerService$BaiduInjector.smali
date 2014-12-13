.class Lcom/android/server/net/NetworkPolicyManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 0
    .parameter "policy"
    .parameter "type"
    .parameter "totalBytes"

    .prologue
    .line 2161
    return-void
.end method

.method public static getUidRules(II)I
    .locals 2
    .parameter "uidPolicy"
    .parameter "orgUidRules"

    .prologue
    .line 2152
    move v0, p1

    .line 2153
    .local v0, uidRules:I
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    .line 2155
    const/4 v0, 0x1

    .line 2157
    :cond_0
    return v0
.end method
