.class Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;
.super Landroid/os/CountDownTimer;
.source "TwProgressEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private notMax:Z

.field private step:I

.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;JJ)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$100(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-wide v2, v2, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->val$m:J

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-wide v4, v4, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->val$i:J

    div-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->step:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->notMax:Z

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->setProgress(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->setProgressStatus(Z)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->invalidate()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->notMax:Z

    .line 107
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->notMax:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getProgress()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->step:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->setProgress(I)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->invalidate()V

    .line 101
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->setProgress(I)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->notMax:Z

    goto :goto_0
.end method
