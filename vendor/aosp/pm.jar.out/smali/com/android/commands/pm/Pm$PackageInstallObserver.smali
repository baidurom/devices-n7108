.class Lcom/android/commands/pm/Pm$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field result:I

.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/commands/pm/Pm$PackageInstallObserver;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "status"

    .prologue
    .line 681
    monitor-enter p0

    .line 682
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$PackageInstallObserver;->finished:Z

    .line 683
    iput p2, p0, Lcom/android/commands/pm/Pm$PackageInstallObserver;->result:I

    .line 684
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 685
    monitor-exit p0

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
