.class Lcom/android/internal/widget/SPenGestureView$3;
.super Landroid/os/Handler;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$3;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 497
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$3;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->startAniForLoadingService()V
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$500(Lcom/android/internal/widget/SPenGestureView;)V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$3;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SPenGestureView;->access$600(Lcom/android/internal/widget/SPenGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$3;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->access$702(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 504
    iget-object v0, p0, Lcom/android/internal/widget/SPenGestureView$3;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsClosedCurve:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SPenGestureView;->access$802(Lcom/android/internal/widget/SPenGestureView;Z)Z

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
