.class Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .parameter "host"
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    .line 2790
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2792
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 2793
    .local v1, position:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2795
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2799
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2803
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 2804
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2805
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2810
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2811
    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2812
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2815
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2816
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2817
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2807
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .parameter "host"
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2824
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2868
    :goto_0
    return v4

    .line 2828
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2829
    .local v3, position:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2831
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eq v3, v7, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v4, v5

    .line 2833
    goto :goto_0

    .line 2836
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v4, v5

    .line 2838
    goto :goto_0

    .line 2841
    :cond_4
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 2843
    .local v1, id:J
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 2868
    goto :goto_0

    .line 2845
    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v3, :cond_5

    .line 2846
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 2849
    goto :goto_0

    .line 2851
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v3, :cond_6

    .line 2852
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 2855
    goto :goto_0

    .line 2857
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2858
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, p1, v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 2860
    goto :goto_0

    .line 2862
    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2863
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, p1, v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_8
    move v4, v5

    .line 2865
    goto :goto_0

    .line 2843
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
