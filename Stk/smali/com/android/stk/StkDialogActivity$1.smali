.class Lcom/android/stk/StkDialogActivity$1;
.super Landroid/os/Handler;
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
    .line 61
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    iget-object v0, v0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v1, 0xe

    #calls: Lcom/android/stk/StkDialogActivity;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/stk/StkDialogActivity;->access$000(Lcom/android/stk/StkDialogActivity;I)V

    .line 71
    :goto_1
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v1, 0x14

    #calls: Lcom/android/stk/StkDialogActivity;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/stk/StkDialogActivity;->access$000(Lcom/android/stk/StkDialogActivity;I)V

    goto :goto_1

    .line 74
    :pswitch_1
    const-string v0, "MSG_ID_PAUSE_TIMEOUT!!!!! "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$1;->this$0:Lcom/android/stk/StkDialogActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/stk/StkDialogActivity;->mPauseRelease:Z

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
