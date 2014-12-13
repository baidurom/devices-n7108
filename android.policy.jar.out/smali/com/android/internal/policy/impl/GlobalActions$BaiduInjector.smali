.class public Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field private static mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private static mScreenshotConnection:Landroid/content/ServiceConnection;

.field private static mScreenshotHandler:Landroid/os/Handler;

.field private static mScreenshotLock:Ljava/lang/Object;

.field private static final mScreenshotTimeout:Ljava/lang/Runnable;

.field private static final mTakeScreenshot:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1043
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotHandler:Landroid/os/Handler;

    .line 1044
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotLock:Ljava/lang/Object;

    .line 1045
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 1048
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mTakeScreenshot:Ljava/lang/Runnable;

    .line 1057
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$sget-mScreenshotLock-0429bb()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1041
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$sget-mGlobalActions-a61d42()Lcom/android/internal/policy/impl/GlobalActions;
    .locals 1

    .prologue
    .line 1041
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    return-object v0
.end method

.method static synthetic access$invoke-takeScreenShot-e80c68(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1041
    invoke-static {p0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->takeScreenShot(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$sget-mScreenshotConnection-22a399()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 1041
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$sput-mScreenshotConnection-a527ce(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"

    .prologue
    .line 1041
    sput-object p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$sget-mScreenshotHandler-c6f3d5()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1041
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$sget-mScreenshotTimeout-41670b()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1041
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$sget-mTakeScreenshot-23ebe4()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1041
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mTakeScreenshot:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static addRebootMenu(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 3
    .parameter "globalActions"

    .prologue
    .line 1141
    sput-object p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1142
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$5;

    const v1, #drawable@ic_lock_reboot#t

    const v2, #string@global_action_reboot#t

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$5;-><init>(II)V

    .line 1158
    .local v0, action:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    return-void
.end method

.method public static addScreenShotMenu(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 4
    .parameter "globalActions"

    .prologue
    .line 1120
    sput-object p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1121
    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$4;

    const v2, #drawable@ic_lock_screenshot#t

    const v3, #string@global_action_screenshot#t

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$4;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    return-void
.end method

.method private static takeScreenShot(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1071
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1073
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1074
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;-><init>(Landroid/content/Context;)V

    .line 1112
    .local v1, conn:Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    sput-object v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 1114
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1116
    :cond_0
    return-void
.end method
