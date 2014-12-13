.class Lcom/android/server/am/BaiduAppErrorDialog$1;
.super Landroid/os/Handler;
.source "BaiduAppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaiduAppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaiduAppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaiduAppErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private sendBaiduReport(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "type"
    .parameter "packageName"
    .parameter "msg"

    .prologue
    .line 110
    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    .line 112
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.yi.userfeedback.action.START_USERFEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    invoke-virtual {v1}, Lcom/android/server/am/BaiduAppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    #getter for: Lcom/android/server/am/BaiduAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/BaiduAppErrorDialog;->access$iget-mService-13c6c7(Lcom/android/server/am/BaiduAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_0
    const-string v0, "crash"

    iget-object v2, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    #getter for: Lcom/android/server/am/BaiduAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/BaiduAppErrorDialog;->access$iget-mProc-928a7b(Lcom/android/server/am/BaiduAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/BaiduAppErrorDialog$1;->sendBaiduReport(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    #getter for: Lcom/android/server/am/BaiduAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/BaiduAppErrorDialog;->access$iget-mProc-928a7b(Lcom/android/server/am/BaiduAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    #getter for: Lcom/android/server/am/BaiduAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/BaiduAppErrorDialog;->access$iget-mProc-928a7b(Lcom/android/server/am/BaiduAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    if-ne v0, v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    #getter for: Lcom/android/server/am/BaiduAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/BaiduAppErrorDialog;->access$iget-mProc-928a7b(Lcom/android/server/am/BaiduAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    #getter for: Lcom/android/server/am/BaiduAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v0}, Lcom/android/server/am/BaiduAppErrorDialog;->access$iget-mResult-1a7145(Lcom/android/server/am/BaiduAppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/am/BaiduAppErrorDialog$1;->this$0:Lcom/android/server/am/BaiduAppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/BaiduAppErrorDialog;->dismiss()V

    .line 107
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
