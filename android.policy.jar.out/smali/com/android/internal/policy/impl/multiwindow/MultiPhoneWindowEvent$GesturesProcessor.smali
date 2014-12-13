.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    return-void
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 16
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1314
    const/4 v7, 0x0

    .line 1315
    .local v7, needGuideView:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindowMode()I

    move-result v12

    .line 1316
    .local v12, windowMode:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v4, v13, -0x401

    .line 1319
    .local v4, currentLaunchMode:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1326
    .local v10, th:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 1327
    .local v1, bh:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/FrameLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 1328
    .local v3, bw:I
    new-instance v5, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/16 v14, 0x1e

    add-int/lit8 v15, v1, -0x1e

    invoke-direct {v5, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1329
    .local v5, leftResize:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    add-int/lit8 v13, v3, -0x1e

    add-int/lit8 v14, v1, -0x1e

    invoke-direct {v8, v13, v10, v3, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1330
    .local v8, rightResize:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int/lit8 v14, v1, -0x3c

    const/16 v15, 0x3c

    invoke-direct {v6, v13, v14, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1331
    .local v6, leftbottomResize:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v13, v3, -0x3c

    add-int/lit8 v14, v1, -0x3c

    invoke-direct {v9, v13, v14, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1332
    .local v9, rightbottomResize:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/16 v13, 0x1e

    add-int/lit8 v14, v1, -0x1e

    add-int/lit8 v15, v3, -0x1e

    invoke-direct {v2, v13, v14, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1334
    .local v2, bottomResize:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v13

    if-nez v13, :cond_5

    .line 1335
    const-string v13, "MultiPhoneWindowEvent"

    const-string v14, "onTouch - Create GhostView by touch move"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v14

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v14

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1343
    :cond_2
    const/4 v7, 0x1

    .line 1345
    :cond_3
    const/4 v13, 0x2

    if-eq v4, v13, :cond_4

    const/4 v13, 0x1

    if-eq v4, v13, :cond_4

    invoke-static {v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1348
    const/4 v7, 0x0

    .line 1351
    :cond_4
    if-eqz v7, :cond_5

    .line 1352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v11

    .line 1353
    .local v11, winInfo:Landroid/os/Bundle;
    const-string v13, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I

    move-result v15

    #calls: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z
    invoke-static {v13, v14, v15}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z

    .line 1358
    .end local v11           #winInfo:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1379
    return-void
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1364
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 1365
    .local v2, windowMode:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1366
    .local v1, winInfo:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v3, -0x401

    .line 1369
    .local v0, currentLaunchMode:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNormalWindow(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1374
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1802(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$1902(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 1309
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I

    .line 1310
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->access$2102(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I

    .line 1311
    return-void
.end method
