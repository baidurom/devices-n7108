.class Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 0
    .parameter
    .parameter "wrappedController"

    .prologue
    .line 898
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    .line 900
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 3
    .parameter "startPos"

    .prologue
    const/4 v0, 0x0

    .line 903
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v0

    .line 906
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method public allowDrop(II)Z
    .locals 3
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    const/4 v0, 0x0

    .line 916
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v0

    .line 919
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 3
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v0, :cond_2

    .line 929
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 931
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result p1

    .line 936
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 938
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result p2

    .line 944
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 946
    :cond_2
    return-void

    .line 932
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p2, v0, -0x1

    goto :goto_1
.end method
