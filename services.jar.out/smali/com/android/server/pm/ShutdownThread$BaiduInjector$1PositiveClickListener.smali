.class Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread$BaiduInjector;->createRebootDialogBaidu(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositiveClickListener"
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$BaiduInjector$1PositiveClickListener;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->access$invoke-beginShutdownSequence-c75801(Landroid/content/Context;)V

    .line 228
    return-void
.end method
