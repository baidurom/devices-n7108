.class Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;
.super Ljava/lang/Object;
.source "TwProgressEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwProgressEdit;->setOnClickTimer(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

.field final synthetic val$i:J

.field final synthetic val$m:J


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwProgressEdit;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    iput-wide p2, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->val$m:J

    iput-wide p4, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->val$i:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->isProgressing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->invalidate()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->this$0:Lcom/sec/android/touchwiz/widget/TwProgressEdit;

    #getter for: Lcom/sec/android/touchwiz/widget/TwProgressEdit;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit;->access$000(Lcom/sec/android/touchwiz/widget/TwProgressEdit;)Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$ProgressArea;->setProgressStatus(Z)V

    .line 89
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->val$m:J

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;->val$i:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;-><init>(Lcom/sec/android/touchwiz/widget/TwProgressEdit$1;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressEdit$1$1;->start()Landroid/os/CountDownTimer;

    .line 110
    :cond_1
    return-void
.end method
