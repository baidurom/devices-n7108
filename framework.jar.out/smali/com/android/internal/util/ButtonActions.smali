.class public Lcom/android/internal/util/ButtonActions;
.super Ljava/lang/Object;
.source "ButtonActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ButtonActions$1;
    }
.end annotation


# static fields
.field public static final STATUS_BAR_ACTION_KILL_APP:I = 0x1000

.field public static final STATUS_BAR_ACTION_LAST_APP:I = 0x2000

.field public static final STATUS_BAR_ACTION_MASK:I = 0x3000

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "ButtonActions"

    sput-object v0, Lcom/android/internal/util/ButtonActions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private static dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 9
    .parameter "keycode"

    .prologue
    .line 187
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Lcom/android/internal/util/ButtonActions;->getAudioService()Landroid/media/IAudioService;

    move-result-object v8

    .line 189
    .local v8, audioService:Landroid/media/IAudioService;
    if-eqz v8, :cond_0

    .line 191
    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p0

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 193
    .local v0, event:Landroid/view/KeyEvent;
    invoke-interface {v8, v0}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V

    .line 194
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 195
    invoke-interface {v8, v0}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v8           #audioService:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v8       #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getAudioService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 181
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 183
    .local v0, audioService:Landroid/media/IAudioService;
    return-object v0
.end method

.method public static processActions(Landroid/content/Context;Lcom/android/internal/util/ButtonHelper$Action;Z)V
    .locals 12
    .parameter "context"
    .parameter "action"
    .parameter "collapseShade"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 33
    sget-object v6, Lcom/android/internal/util/ButtonActions;->TAG:Ljava/lang/String;

    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 34
    sget-object v6, Lcom/android/internal/util/ButtonActions;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processActions "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    iget-object v6, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v7, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v6, v7}, Lcom/android/internal/util/ButtonHelper$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    const-string/jumbo v6, "statusbar"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 43
    .local v0, barService:Lcom/android/internal/statusbar/IStatusBarService;
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 46
    .local v5, windowManagerService:Landroid/view/IWindowManager;
    const/4 v4, 0x0

    .line 48
    .local v4, isKeyguardShowing:Z
    :try_start_0
    invoke-interface {v5}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    .line 52
    :goto_1
    const/4 v3, 0x0

    .line 54
    .local v3, isKeyguardSecure:Z
    :try_start_1
    invoke-interface {v5}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v3

    .line 58
    :goto_2
    if-eqz p2, :cond_3

    .line 59
    iget-object v6, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v7, Lcom/android/internal/util/ButtonHelper$ActionType;->Notification:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v6, v7}, Lcom/android/internal/util/ButtonHelper$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 61
    :try_start_2
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6

    .line 67
    :cond_3
    :goto_3
    sget-object v6, Lcom/android/internal/util/ButtonActions$1;->$SwitchMap$com$android$internal$util$ButtonHelper$ActionType:[I

    iget-object v7, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v7}, Lcom/android/internal/util/ButtonHelper$ActionType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    invoke-static {v11, v9, v9}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    goto :goto_0

    .line 72
    :pswitch_1
    const/4 v6, 0x4

    invoke-static {v6, v9, v9}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    goto :goto_0

    .line 75
    :pswitch_2
    const/16 v6, 0x1a

    invoke-static {v6, v10, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    goto :goto_0

    .line 78
    :pswitch_3
    if-nez v4, :cond_1

    .line 80
    :try_start_3
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v6

    goto :goto_0

    .line 86
    :pswitch_4
    if-nez v4, :cond_1

    .line 88
    const/4 v6, 0x0

    const/16 v7, 0x3000

    :try_start_4
    invoke-interface {v0, v6, v7}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V

    .line 89
    const/16 v6, 0x1000

    const/16 v7, 0x3000

    invoke-interface {v0, v6, v7}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    .line 91
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_5
    if-nez v4, :cond_1

    .line 98
    const/4 v6, 0x0

    const/16 v7, 0x3000

    :try_start_5
    invoke-interface {v0, v6, v7}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V

    .line 99
    const/16 v6, 0x2000

    const/16 v7, 0x3000

    invoke-interface {v0, v6, v7}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 100
    :catch_2
    move-exception v1

    .line 101
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_6
    if-eqz v4, :cond_4

    if-nez v3, :cond_1

    .line 110
    :cond_4
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expand()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 111
    :catch_3
    move-exception v6

    goto/16 :goto_0

    .line 115
    :pswitch_7
    const/16 v6, 0x54

    invoke-static {v6, v9, v9}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    goto/16 :goto_0

    .line 118
    :pswitch_8
    const/16 v6, 0xdb

    invoke-static {v6, v10, v9}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    goto/16 :goto_0

    .line 121
    :pswitch_9
    iget-object v2, p1, Lcom/android/internal/util/ButtonHelper$Action;->args:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 122
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p0, v5, v4, v2}, Lcom/android/internal/util/ButtonActions;->startActivity(Landroid/content/Context;Landroid/view/IWindowManager;ZLandroid/content/Intent;)V

    goto/16 :goto_0

    .line 49
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isKeyguardSecure:Z
    :catch_4
    move-exception v6

    goto/16 :goto_1

    .line 55
    .restart local v3       #isKeyguardSecure:Z
    :catch_5
    move-exception v6

    goto/16 :goto_2

    .line 62
    :catch_6
    move-exception v6

    goto :goto_3

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static startActivity(Landroid/content/Context;Landroid/view/IWindowManager;ZLandroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "windowManagerService"
    .parameter "isKeyguardShowing"
    .parameter "intent"

    .prologue
    .line 131
    if-nez p3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-nez p2, :cond_0

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :goto_1
    const/high16 v0, 0x3400

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static startIntent(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "collapseShade"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string/jumbo v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 162
    .local v0, barService:Lcom/android/internal/statusbar/IStatusBarService;
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 165
    .local v2, windowManagerService:Landroid/view/IWindowManager;
    const/4 v1, 0x0

    .line 167
    .local v1, isKeyguardShowing:Z
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_1
    if-eqz p2, :cond_1

    .line 173
    :try_start_1
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :cond_1
    :goto_2
    invoke-static {p0, v2, v1, p1}, Lcom/android/internal/util/ButtonActions;->startActivity(Landroid/content/Context;Landroid/view/IWindowManager;ZLandroid/content/Intent;)V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v3

    goto :goto_1

    .line 174
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static triggerVirtualKeypress(IZZ)V
    .locals 27
    .parameter "keyCode"
    .parameter "longpress"
    .parameter "sendOnlyDownMessage"

    .prologue
    .line 204
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v26

    .line 205
    .local v26, im:Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 206
    .local v2, now:J
    const/4 v12, 0x0

    .line 207
    .local v12, downflags:I
    const/16 v24, 0x0

    .line 208
    .local v24, upflags:I
    const/16 v4, 0x15

    move/from16 v0, p0

    if-eq v0, v4, :cond_0

    const/16 v4, 0x16

    move/from16 v0, p0

    if-eq v0, v4, :cond_0

    const/16 v4, 0x13

    move/from16 v0, p0

    if-eq v0, v4, :cond_0

    const/16 v4, 0x14

    move/from16 v0, p0

    if-ne v0, v4, :cond_2

    .line 212
    :cond_0
    const/16 v24, 0x6

    move/from16 v12, v24

    .line 216
    :goto_0
    if-eqz p1, :cond_1

    .line 217
    or-int/lit16 v12, v12, 0x80

    .line 220
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move/from16 v7, p0

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 224
    .local v1, downEvent:Landroid/view/KeyEvent;
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 226
    if-eqz p2, :cond_4

    .line 234
    :goto_2
    return-void

    .line 214
    .end local v1           #downEvent:Landroid/view/KeyEvent;
    :cond_2
    const/16 v24, 0x48

    move/from16 v12, v24

    goto :goto_0

    .line 220
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 229
    .restart local v1       #downEvent:Landroid/view/KeyEvent;
    :cond_4
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v25, 0x101

    move-wide v14, v2

    move-wide/from16 v16, v2

    move/from16 v19, p0

    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 233
    .local v13, upEvent:Landroid/view/KeyEvent;
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto :goto_2
.end method
