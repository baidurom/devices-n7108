.class abstract Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "OffsetableAnimation"
.end annotation


# instance fields
.field duration:J

.field fillAfter:Z

.field fillBefore:Z

.field fillEnabled:Z

.field i:Landroid/view/animation/Interpolator;

.field startOffset:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;JJLandroid/view/animation/Interpolator;ZZZ)V
    .locals 0
    .parameter
    .parameter "_startOffset"
    .parameter "_duration"
    .parameter "_i"
    .parameter "_fillBefore"
    .parameter "_fillEnabled"
    .parameter "_fillAfter"

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    iput-wide p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->startOffset:J

    .line 1926
    iput-wide p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->duration:J

    .line 1927
    iput-object p6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->i:Landroid/view/animation/Interpolator;

    .line 1928
    iput-boolean p7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillBefore:Z

    .line 1929
    iput-boolean p8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillEnabled:Z

    .line 1930
    iput-boolean p9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillAfter:Z

    .line 1931
    return-void
.end method

.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;J)V
    .locals 2
    .parameter
    .parameter "other"
    .parameter "offset"

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1934
    iget-wide v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->startOffset:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->startOffset:J

    .line 1935
    iget-wide v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->duration:J

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->duration:J

    .line 1936
    iget-object v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->i:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->i:Landroid/view/animation/Interpolator;

    .line 1937
    iget-boolean v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillBefore:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillBefore:Z

    .line 1938
    iget-boolean v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillEnabled:Z

    .line 1939
    iget-boolean v0, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillAfter:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1OffsetableAnimation;->fillAfter:Z

    .line 1940
    return-void
.end method
