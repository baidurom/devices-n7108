.class Lcom/android/stk/ToneDialog$1;
.super Landroid/os/Handler;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/ToneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/ToneDialog;


# direct methods
.method constructor <init>(Lcom/android/stk/ToneDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    iget-object v0, v0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->release()V

    .line 54
    iget-object v0, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    iget-object v0, v0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 55
    iget-object v0, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    const/16 v1, 0xe

    #calls: Lcom/android/stk/ToneDialog;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/stk/ToneDialog;->access$000(Lcom/android/stk/ToneDialog;I)V

    .line 56
    iget-object v0, p0, Lcom/android/stk/ToneDialog$1;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {v0}, Lcom/android/stk/ToneDialog;->finish()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0xda
        :pswitch_0
    .end packed-switch
.end method
