.class Lcom/android/stk/StkAppService$1;
.super Ljava/lang/Object;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    iget-object v2, p0, Lcom/android/stk/StkAppService$1;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1300(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/stk/StkAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1410
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1411
    return-void
.end method
