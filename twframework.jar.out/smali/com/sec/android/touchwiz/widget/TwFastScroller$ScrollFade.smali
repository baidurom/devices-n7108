.class public Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "TwFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xd0

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwFastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xd0

    .line 761
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 762
    const/16 v0, 0xd0

    .line 771
    :goto_0
    return v0

    .line 765
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 766
    .local v1, now:J
    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 767
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 769
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->startFade()V

    .line 785
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    #getter for: Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwFastScroller;)Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    goto :goto_0

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 755
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->mFadeDuration:J

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->mStartTime:J

    .line 757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$ScrollFade;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 758
    return-void
.end method
