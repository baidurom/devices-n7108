.class Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter$1;
.super Ljava/lang/Object;
.source "TwThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter$1;->this$1:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter$1;->this$1:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$000(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x2090002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 213
    .local v10, aniUp:Landroid/view/animation/Animation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 215
    .local v8, ani:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f4ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f4ccccd

    const/high16 v5, 0x4248

    const/high16 v6, 0x4248

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 217
    .local v0, aniDown:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 219
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 221
    .local v9, aniDownAlpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 223
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 224
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 226
    const-wide/16 v1, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 228
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 231
    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    .line 246
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 233
    :pswitch_1
    invoke-virtual {p1, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 241
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
