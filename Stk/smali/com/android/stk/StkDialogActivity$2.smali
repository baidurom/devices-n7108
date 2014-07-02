.class Lcom/android/stk/StkDialogActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "StkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.samsungtest.EVENTHANDLE_BUTTON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    const-string v2, ""

    .line 310
    .local v2, inputString:Ljava/lang/String;
    const/4 v1, -0x1

    .line 311
    .local v1, button:I
    const-string v3, "got intent"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    const-string v3, "Button"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 314
    if-nez v1, :cond_1

    .line 315
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v4, 0x15

    #calls: Lcom/android/stk/StkDialogActivity;->sendResponse(I)V
    invoke-static {v3, v4}, Lcom/android/stk/StkDialogActivity;->access$000(Lcom/android/stk/StkDialogActivity;I)V

    .line 316
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v3}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 332
    .end local v1           #button:I
    .end local v2           #inputString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 318
    .restart local v1       #button:I
    .restart local v2       #inputString:Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    .line 319
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    #calls: Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V
    invoke-static {v3, v7, v5}, Lcom/android/stk/StkDialogActivity;->access$100(Lcom/android/stk/StkDialogActivity;IZ)V

    .line 320
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v3}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 322
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    #calls: Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V
    invoke-static {v3, v7, v6}, Lcom/android/stk/StkDialogActivity;->access$100(Lcom/android/stk/StkDialogActivity;IZ)V

    .line 324
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v3}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 326
    .end local v1           #button:I
    .end local v2           #inputString:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    #getter for: Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/stk/StkDialogActivity;->access$200(Lcom/android/stk/StkDialogActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 328
    .local v0, airPlaneEnabled:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    if-ne v0, v5, :cond_0

    .line 330
    iget-object v3, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v3}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0
.end method
