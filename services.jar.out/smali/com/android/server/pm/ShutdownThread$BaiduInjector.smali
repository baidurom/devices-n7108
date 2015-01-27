.class Lcom/android/server/pm/ShutdownThread$BaiduInjector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static showBaiduShutdownOrRebootDialog(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const v9, #android:string@yes#t

    const v8, #android:string@no#t

    const v6, #android:style@Theme.DeviceDefault.Light.Dialog.Alert#t

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$sget-mRebootSafeMode-259b09()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .local v2, longPressBehavior:I
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$sget-mRebootSafeMode-259b09()Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, #android:string@reboot_safemode_confirm#t

    .local v3, resourceId:I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$sget-mRebootSafeMode-259b09()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, #android:string@reboot_safemode_title#t

    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    .local v1, dialogShutdownOrReboot:Landroid/app/AlertDialog;
    :goto_2
    new-instance v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .local v0, closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    iput-object v1, v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialogShutdownOrReboot:Landroid/app/AlertDialog;
    .restart local v2       #longPressBehavior:I
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const v3, #android:string@shutdown_confirm_question#t

    .line 250
    goto :goto_0

    :cond_2
    const v3, #android:string@shutdown_confirm#t

    goto :goto_0

    .restart local v3       #resourceId:I
    :cond_3
    const v4, #android:string@power_off#t

    goto :goto_1

    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, #android:drawable@ic_dialog_alert#t

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #android:string@reboot#t

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #android:array@shutdown_reboot_options#t

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1RebootClickListener;

    invoke-direct {v7, p0}, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1RebootClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1NegativeClickListener;

    invoke-direct {v5}, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1NegativeClickListener;-><init>()V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .restart local v1       #dialogShutdownOrReboot:Landroid/app/AlertDialog;
    goto :goto_2
.end method

.method static showBaiduShutdownOrRebootProgressDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, #android:style@Theme.DeviceDefault.Light.Dialog.Alert#t

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .local v0, pd:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:string@reboot#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, #android:string@reboot_progress#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    .line 258
    :cond_0
    const v1, #android:string@power_off#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, #android:string@shutdown_progress#t

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
