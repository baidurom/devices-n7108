.class abstract Lcom/android/stk/StkAppInstaller;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method

.method private static setAppState(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "install"

    .prologue
    const/4 v3, 0x1

    .line 51
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 55
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.stk"

    const-string v5, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, cName:Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 65
    .local v3, state:I
    :goto_1
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "StkAppInstaller"

    const-string v5, "Could not change STK app state"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #state:I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method static unInstall(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    goto :goto_0
.end method
