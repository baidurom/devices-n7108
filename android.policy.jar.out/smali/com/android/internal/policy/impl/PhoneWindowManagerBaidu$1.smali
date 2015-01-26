.class Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;
.super Ljava/lang/Object;
.source "PhoneWindowManagerBaidu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->makeActionRunnable(Landroid/content/Context;IZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isKeyguardOn:Z

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;ZILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$isKeyguardOn:Z

    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$keyCode:I

    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$isKeyguardOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$keyCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->flashOpen(Landroid/content/Context;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;->val$keyCode:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->getAction(I)Lcom/android/internal/util/ButtonHelper$Action;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ButtonActions;->processActions(Landroid/content/Context;Lcom/android/internal/util/ButtonHelper$Action;Z)V

    goto :goto_0
.end method
