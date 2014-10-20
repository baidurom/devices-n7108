.class Landroid/widget/Editor$BaiduClipboardPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaiduClipboardPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = #android:layout@yi_text_edit_action_popup_text#t


# instance fields
.field mClipboardManager:Landroid/content/ClipboardManager;

.field private mShowOnTop:Z

.field private mTextViews:[Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 3332
    iput-object p1, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 3338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mShowOnTop:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3332
    invoke-direct {p0, p1}, Landroid/widget/Editor$BaiduClipboardPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private updateArrowPosition(IIIZ)V
    .locals 4
    .parameter "beforeClip"
    .parameter "afterClip"
    .parameter "contentWidth"
    .parameter "top"

    .prologue
    .line 3464
    sub-int v0, p2, p1

    .line 3465
    .local v0, shift:I
    iget-object v2, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/PopupLayout;->getDrawableWidth()I

    move-result v1

    .line 3466
    .local v1, width:I
    div-int/lit8 v2, p3, 0x2

    sub-int v0, v2, v0

    .line 3467
    sub-int v2, p3, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3468
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3470
    iget-object v2, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/internal/widget/PopupLayout;

    if-eqz p4, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/PopupLayout;->setXY(II)V

    .line 3471
    return-void

    .line 3470
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 6
    .parameter "positionY"

    .prologue
    .line 3423
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mShowOnTop:Z

    .line 3424
    if-gez p1, :cond_0

    .line 3425
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->getTextOffset()I

    move-result v3

    .line 3426
    .local v3, offset:I
    iget-object v4, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 3427
    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 3428
    .local v2, line:I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr p1, v4

    .line 3429
    iget-object v4, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr p1, v4

    .line 3432
    iget-object v4, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    iget v5, v5, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3434
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr p1, v4

    .line 3435
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mShowOnTop:Z

    .line 3437
    .end local v0           #handle:Landroid/graphics/drawable/Drawable;
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #line:I
    .end local v3           #offset:I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3397
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, #android:attr@textSelectHandleWindowStyle#t

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3399
    iget-object v0, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3400
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 3413
    iget-object v0, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 3418
    iget-object v0, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 3343
    new-instance v4, Lcom/android/internal/widget/PopupLayout;

    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/internal/widget/PopupLayout;-><init>(Landroid/content/Context;)V

    .line 3344
    .local v4, popupLayout:Lcom/android/internal/widget/PopupLayout;
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/PopupLayout;->setOrientation(I)V

    .line 3345
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:drawable@yi_list_divider_baidu_light#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/PopupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3346
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/PopupLayout;->setShowDividers(I)V

    .line 3347
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:dimen@yi_floating_bar_divider_padding#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/PopupLayout;->setDividerPadding(I)V

    .line 3348
    iput-object v4, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3349
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v8, #android:drawable@yi_text_edit_paste_window#t

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3353
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 3356
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3359
    .local v6, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3360
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v3, v7, 0x4

    .line 3361
    .local v3, maxWidth:I
    new-array v7, v10, [Landroid/widget/TextView;

    iput-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mTextViews:[Landroid/widget/TextView;

    .line 3362
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 3363
    const v7, #android:layout@yi_text_edit_action_popup_text#t

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3364
    .local v5, text:Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3365
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 3366
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3367
    const-string v7, "END"

    invoke-static {v7}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3368
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 3369
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3370
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3371
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mTextViews:[Landroid/widget/TextView;

    aput-object v5, v7, v1

    .line 3362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3373
    .end local v5           #text:Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    iput-object v7, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 3374
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 3404
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3405
    iget-object v0, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->pasteBaidu(Ljava/lang/CharSequence;)V

    .line 3406
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->hide()V

    .line 3407
    iget-object v0, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3409
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 3378
    iget-object v3, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 3379
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_2

    .line 3380
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 3381
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 3382
    if-ge v2, v1, :cond_0

    .line 3383
    iget-object v3, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mTextViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3384
    iget-object v3, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mTextViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3381
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3386
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mTextViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 3392
    :cond_1
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 3393
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method protected updatePosition(II)V
    .locals 8
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3442
    iget v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mPositionX:I

    add-int v2, p1, v5

    .line 3443
    .local v2, positionX:I
    iget v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mPositionY:I

    add-int v3, p2, v5

    .line 3444
    .local v3, positionY:I
    move v0, v2

    .line 3446
    .local v0, beforeClipX:I
    invoke-virtual {p0, v3}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->clipVertically(I)I

    move-result v3

    .line 3449
    iget-object v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3450
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 3451
    .local v4, width:I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3452
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3453
    iget-object v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mContentView:Landroid/view/ViewGroup;

    instance-of v5, v5, Lcom/android/internal/widget/PopupLayout;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mShowOnTop:Z

    invoke-direct {p0, v0, v2, v4, v5}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->updateArrowPosition(IIIZ)V

    .line 3455
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3456
    iget-object v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3461
    :goto_0
    return-void

    .line 3458
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/widget/Editor$BaiduClipboardPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
