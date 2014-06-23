.class final Landroid/hardware/scontext/SContextService$Listener;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field private mServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "token"

    .prologue
    .line 574
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p2, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    .line 576
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    .line 577
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 563
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 563
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1100(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1100(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 590
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1100(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 591
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callback(Landroid/hardware/scontext/SContextEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 602
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 603
    .local v0, cb:Landroid/hardware/scontext/ISContextCallback;
    invoke-interface {v0, p1}, Landroid/hardware/scontext/ISContextCallback;->scontextCallback(Landroid/hardware/scontext/SContextEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v0           #cb:Landroid/hardware/scontext/ISContextCallback;
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "SContextService"

    const-string v3, "Listener.callback(): Exception error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
