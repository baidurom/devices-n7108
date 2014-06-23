.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;
.super Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetableTranslateAnimation"
.end annotation


# instance fields
.field fromXDelta:F

.field fromYDelta:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field toXDelta:F

.field toYDelta:F


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFJJLandroid/view/animation/Interpolator;ZZZ)V
    .locals 10
    .parameter
    .parameter "_fromXDelta"
    .parameter "_fromYDelta"
    .parameter "_toXDelta"
    .parameter "_toYDelta"
    .parameter "_startOffset"
    .parameter "_duration"
    .parameter "_i"
    .parameter "_fillBefore"
    .parameter "_fillEnabled"
    .parameter "_fillAfter"

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    .line 1986
    invoke-direct/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;JJLandroid/view/animation/Interpolator;ZZZ)V

    .line 1987
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    .line 1988
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    .line 1989
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    .line 1990
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    .line 1991
    return-void
.end method

.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;J)V
    .locals 1
    .parameter
    .parameter "other"
    .parameter "offset"

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 1994
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)V

    .line 1995
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    .line 1996
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    .line 1997
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    .line 1998
    iget v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    .line 1999
    return-void
.end method


# virtual methods
.method makeTranslateAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 5

    .prologue
    .line 2002
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromXDelta:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toXDelta:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->fromYDelta:F

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableTranslateAnimation;->toYDelta:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2004
    .local v0, ret:Landroid/view/animation/TranslateAnimation;
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->startOffset:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2005
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2006
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2007
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillBefore:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 2008
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 2009
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillAfter:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2010
    return-object v0
.end method
