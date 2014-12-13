.class Lcom/android/server/am/BaiduAppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "BaiduAppNotRespondingDialog.java"


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 10
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"
    .parameter "aboveSystem"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 44
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v5, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;-><init>(Lcom/android/server/am/BaiduAppNotRespondingDialog;)V

    iput-object v5, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iput-object p3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 50
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0, v7}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->setCancelable(Z)V

    .line 53
    if-eqz p4, :cond_1

    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    .local v1, name1:Ljava/lang/CharSequence;
    :goto_0
    const/4 v2, 0x0

    .line 57
    .local v2, name2:Ljava/lang/CharSequence;
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v8, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 59
    if-eqz v1, :cond_2

    .line 60
    const v4, #string@anr_activity_application#t

    .line 76
    .local v4, resid:I
    :goto_1
    if-eqz v2, :cond_5

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v5, -0x2

    const v6, #string@force_close#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 83
    const/4 v5, -0x3

    const v6, #string@wait#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 88
    const/4 v5, -0x1

    const v6, #string@report#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 93
    const v5, #string@anr_title#t

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    if-eqz p5, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 99
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Not Responding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    const/16 v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 101
    invoke-virtual {p0}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    return-void

    .line 53
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #name1:Ljava/lang/CharSequence;
    .end local v2           #name2:Ljava/lang/CharSequence;
    .end local v4           #resid:I
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 62
    .restart local v1       #name1:Ljava/lang/CharSequence;
    .restart local v2       #name2:Ljava/lang/CharSequence;
    :cond_2
    move-object v1, v2

    .line 63
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 64
    const v4, #string@anr_application_process#t

    .restart local v4       #resid:I
    goto/16 :goto_1

    .line 67
    .end local v4           #resid:I
    :cond_3
    if-eqz v1, :cond_4

    .line 68
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 69
    const v4, #string@anr_activity_process#t

    .restart local v4       #resid:I
    goto/16 :goto_1

    .line 71
    .end local v4           #resid:I
    :cond_4
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 72
    const v4, #string@anr_process#t

    .restart local v4       #resid:I
    goto/16 :goto_1

    .line 76
    :cond_5
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method
                    
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaiduAppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    return-void 
.end method

.method static synthetic access$iget-mProc-a31778(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$iget-mService-08b88c(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public startBaiduReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "packageName"

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.yi.userfeedback.action.START_USERFEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method
