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

.method static createRebootDialogBaidu(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 5
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 237
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$500()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    .end local p1
    :goto_0
    return-object p1

    .line 240
    .restart local p1
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, #drawable@ic_dialog_alert#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #string@reboot#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #array@shutdown_reboot_options#t

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1RebootClickListener;

    invoke-direct {v4, p0}, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1RebootClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #string@yes#t

    new-instance v3, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;

    invoke-direct {v3, p0}, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #string@no#t

    new-instance v3, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1NegativeClickListener;

    invoke-direct {v3}, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1NegativeClickListener;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, rebootDialog:Landroid/app/AlertDialog;
    move-object p1, v0

    .line 250
    goto :goto_0
.end method

.method static rebootProgressDialogBaidu(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter "context"
    .parameter "pd"

    .prologue
    .line 254
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const v0, #string@reboot#t

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    const v0, #string@reboot_progress#t

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method
