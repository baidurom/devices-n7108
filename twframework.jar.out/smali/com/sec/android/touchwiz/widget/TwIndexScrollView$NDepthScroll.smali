.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;
.super Ljava/lang/Object;
.source "TwIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NDepthScroll"
.end annotation


# instance fields
.field private mBaseIndexPath:Ljava/lang/String;

.field private mBgRect:Landroid/graphics/Rect;

.field private mDotHeightRatio:F

.field private mIndexHeight:I

.field private mIndexSkipLevel:I

.field private mItemIntervalY:I

.field private mMyDepth:I

.field private mPositionChildScroll:F

.field private mScrollHeight:I

.field private mSelectedIndex:I

.field private mSelectedIndexFirstDepth:I

.field private mSelectedPosX:F

.field private mSelectedPosY:F

.field private mSelectedString:Ljava/lang/String;

.field private mSkipDensity:I

.field private mStartPosY:F

.field private mSubscrollIndexInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;Ljava/util/ArrayList;FILandroid/graphics/Rect;I)V
    .locals 3
    .parameter
    .parameter "indexPath"
    .parameter
    .parameter "posY"
    .parameter "intervalY"
    .parameter "bound"
    .parameter "myDepth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;FI",
            "Landroid/graphics/Rect;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, indexInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1057
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1058
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 993
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    .line 1013
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1015
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1017
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1019
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 1059
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    .line 1060
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1064
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-ge p5, v2, :cond_1

    .line 1069
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NDepthScroll( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .end local p2
    :cond_2
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    .line 1072
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    .line 1073
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1074
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_3

    .line 1075
    const/4 p4, 0x0

    .line 1077
    :cond_3
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1078
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    .line 1079
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandlePadding:I
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    .line 1080
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1082
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    .line 1083
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1084
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1085
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1086
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, p6, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1089
    return-void
.end method

.method private UpdateSkipLevel()V
    .locals 14

    .prologue
    .line 1092
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1093
    .local v5, localRect:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1094
    .local v6, maxSkipDensity:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 1095
    .local v9, skipLevel:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1096
    .local v3, indexLengthOrigin:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v4, v10

    .line 1097
    .local v4, itemIntervalY:F
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleTextPainter:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 1098
    .local v2, fontMtx:Landroid/graphics/Paint$FontMetrics;
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v11, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$802(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I

    .line 1100
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    if-nez v10, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    const/4 v8, 0x1

    .local v8, skipDensity:I
    :goto_1
    if-gt v8, v6, :cond_b

    .line 1104
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1105
    add-int/lit8 v9, v6, 0x1

    .line 1106
    :goto_2
    const/4 v10, 0x2

    if-le v9, v10, :cond_a

    .line 1108
    add-int v10, v9, v8

    add-int/lit8 v10, v10, -0x1

    div-int v0, v3, v10

    .line 1109
    .local v0, charNum:I
    add-int/lit8 v10, v9, -0x1

    mul-int/2addr v0, v10

    .line 1111
    add-int v10, v9, v8

    add-int/lit8 v10, v10, -0x1

    rem-int v7, v3, v10

    .line 1112
    .local v7, remain:I
    if-eqz v7, :cond_3

    .line 1113
    add-int/lit8 v10, v9, -0x1

    if-ge v10, v7, :cond_2

    move v7, v9

    .end local v7           #remain:I
    :cond_2
    add-int/2addr v0, v7

    .line 1116
    :cond_3
    add-int/lit8 v10, v9, -0x1

    add-int/2addr v10, v8

    div-int v10, v3, v10

    int-to-float v1, v10

    .line 1117
    .local v1, dotNum:F
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    float-to-int v11, v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$802(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I

    .line 1119
    int-to-float v10, v0

    mul-float/2addr v10, v4

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v1

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1121
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v11, v9, -0x1

    add-int/2addr v11, v8

    rem-int/2addr v10, v11

    add-int/lit8 v11, v9, -0x1

    if-lt v10, v11, :cond_4

    .line 1122
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 1125
    :cond_4
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    iget v12, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v12, v12

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_9

    .line 1126
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1127
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1128
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    float-to-int v11, v1

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$802(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I

    .line 1130
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v10, :cond_0

    .line 1133
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_5

    .line 1134
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1135
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v11, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$802(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)I

    .line 1136
    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1139
    :cond_5
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_6

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 1140
    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    div-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    goto/16 :goto_0

    .line 1142
    :cond_7
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v12

    rem-int/2addr v10, v11

    add-int/lit8 v11, v9, -0x1

    if-lt v10, v11, :cond_8

    .line 1143
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v11, v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    add-int/lit8 v11, v0, 0x1

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    goto/16 :goto_0

    .line 1145
    :cond_8
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v11, v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v0

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mDotNum:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    goto/16 :goto_0

    .line 1151
    :cond_9
    add-int/lit8 v9, v9, -0x1

    .line 1152
    goto/16 :goto_2

    .line 1103
    .end local v0           #charNum:I
    .end local v1           #dotNum:F
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1154
    :cond_b
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    .line 1155
    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    goto/16 :goto_0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getNearestIndex(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    return v0
.end method

.method private getNearestIndex(F)Z
    .locals 13
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 1242
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr p1, v11

    .line 1243
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v10

    .line 1247
    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1248
    .local v4, prevIndex:I
    const/4 v1, 0x0

    .line 1260
    .local v1, newSelectedIndex:I
    const/4 v3, 0x0

    .line 1262
    .local v3, positionI:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v2, v11

    .line 1263
    .local v2, posY:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1266
    .local v8, skipLevel:I
    :goto_1
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    cmpg-float v11, v11, p1

    if-gez v11, :cond_3

    .line 1267
    rem-int v11, v3, v8

    add-int/lit8 v12, v8, -0x2

    if-ne v11, v12, :cond_2

    .line 1269
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 1273
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1271
    :cond_2
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    goto :goto_2

    .line 1276
    :cond_3
    div-int v6, v3, v8

    .line 1277
    .local v6, quota:I
    rem-int v7, v3, v8

    .line 1278
    .local v7, reminder:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v6

    add-int v1, v11, v7

    .line 1285
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-nez v11, :cond_4

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_4

    .line 1287
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    sub-float v0, v11, p1

    .line 1288
    .local v0, d:F
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    sub-float v0, v11, v0

    .line 1289
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 1290
    .local v9, x:F
    div-float v11, v0, v9

    float-to-int v5, v11

    .line 1292
    .local v5, q:I
    add-int/2addr v1, v5

    .line 1296
    .end local v0           #d:F
    .end local v5           #q:I
    .end local v9           #x:F
    :cond_4
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v1, v11, :cond_6

    .line 1297
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1302
    :cond_5
    :goto_3
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1305
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_8

    .line 1306
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1308
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_7

    .line 1309
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto/16 :goto_0

    .line 1298
    :cond_6
    if-gez v1, :cond_5

    .line 1299
    const/4 v1, 0x0

    goto :goto_3

    .line 1310
    :cond_7
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    if-gez v11, :cond_0

    .line 1311
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    goto/16 :goto_0

    .line 1316
    :cond_8
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1318
    if-eq v1, v4, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public drawScroll(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;III)V
    .locals 34
    .parameter "canvas"
    .parameter "bgDrawable"
    .parameter "textPainter"
    .parameter "textColor"
    .parameter "textColorHighlight"
    .parameter "alpha"

    .prologue
    .line 1407
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    if-nez v3, :cond_d

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mTopPadding:I

    move/from16 v33, v0

    .line 1409
    .local v33, topPadding:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHeight()I

    move-result v9

    .line 1410
    .local v9, allowedHeight:I
    const/16 v22, 0x0

    .line 1411
    .local v22, minHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexInterval:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v22

    .line 1412
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    .line 1413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHandleRect(I)Landroid/graphics/Rect;
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;I)Landroid/graphics/Rect;

    move-result-object v23

    .line 1414
    .local v23, newBgRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    float-to-int v3, v3

    move/from16 v0, v33

    if-le v3, v0, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mStartPosY:F

    float-to-int v3, v3

    :goto_0
    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1415
    const/4 v11, 0x0

    .line 1416
    .local v11, bottomPosY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1417
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v11, v3, v4

    .line 1421
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1422
    .local v20, length:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v29, v3, 0x1

    .line 1423
    .local v29, skipLevel:I
    const/16 v28, 0x1

    .line 1424
    .local v28, skipDensity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    .line 1426
    .local v17, itemIntervalY:I
    const/4 v15, 0x0

    .local v15, i:I
    const/16 v16, 0x0

    .local v16, indexToShow:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 1427
    rem-int v3, v15, v29

    add-int/lit8 v4, v29, -0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v20, -0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 1428
    int-to-float v3, v11

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v11, v3

    .line 1429
    const/16 v18, 0x0

    .local v18, j:I
    :goto_3
    if-gez v18, :cond_4

    add-int/lit8 v3, v20, -0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    .line 1430
    add-int/lit8 v16, v16, 0x1

    .line 1429
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .end local v11           #bottomPosY:I
    .end local v15           #i:I
    .end local v16           #indexToShow:I
    .end local v17           #itemIntervalY:I
    .end local v18           #j:I
    .end local v20           #length:I
    .end local v28           #skipDensity:I
    .end local v29           #skipLevel:I
    :cond_1
    move/from16 v3, v33

    .line 1414
    goto :goto_0

    .line 1418
    .restart local v11       #bottomPosY:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1419
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v11, v3, v4

    goto :goto_1

    .line 1433
    .restart local v15       #i:I
    .restart local v16       #indexToShow:I
    .restart local v17       #itemIntervalY:I
    .restart local v20       #length:I
    .restart local v28       #skipDensity:I
    .restart local v29       #skipLevel:I
    :cond_3
    add-int v11, v11, v17

    .line 1426
    :cond_4
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1437
    :cond_5
    move-object/from16 v0, v23

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 1438
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v9, :cond_6

    .line 1439
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v19, v3, v9

    .line 1440
    .local v19, lack:I
    move-object/from16 v0, v23

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 1441
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v3, v19

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1442
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v33

    if-ge v3, v0, :cond_6

    .line 1443
    move/from16 v0, v33

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1447
    .end local v19           #lack:I
    :cond_6
    const/4 v14, 0x0

    .line 1448
    .local v14, handlePadding:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v14

    .line 1453
    :cond_7
    :goto_4
    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 1454
    sub-int v3, v9, v33

    mul-int/lit8 v4, v14, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1456
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->UpdateSkipLevel()V

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v29, v0

    .line 1459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v28, v0

    .line 1460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    .line 1462
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1463
    rem-int v3, v15, v29

    add-int/lit8 v4, v29, -0x1

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, v20, -0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 1464
    int-to-float v3, v11

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v11, v3

    .line 1465
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_6
    add-int/lit8 v3, v28, -0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_a

    add-int/lit8 v3, v20, -0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_a

    .line 1466
    add-int/lit8 v16, v16, 0x1

    .line 1465
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1450
    .end local v18           #j:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_7

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v14

    goto :goto_4

    .line 1469
    :cond_9
    add-int v11, v11, v17

    .line 1462
    :cond_a
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1473
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1474
    mul-int/lit8 v3, v14, 0x2

    add-int/2addr v3, v11

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1478
    :cond_c
    :goto_7
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getNearestIndex(F)Z

    .line 1481
    sget-boolean v3, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    if-eqz v3, :cond_d

    .line 1482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexPath()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->drawIndexText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/String;)V

    .line 1483
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    .line 1487
    .end local v9           #allowedHeight:I
    .end local v11           #bottomPosY:I
    .end local v14           #handlePadding:I
    .end local v15           #i:I
    .end local v16           #indexToShow:I
    .end local v17           #itemIntervalY:I
    .end local v20           #length:I
    .end local v22           #minHeight:I
    .end local v23           #newBgRect:Landroid/graphics/Rect;
    .end local v28           #skipDensity:I
    .end local v29           #skipLevel:I
    .end local v33           #topPadding:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLastY:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)F

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->updateIndex(F)Z

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    .line 1492
    .local v30, tempRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_e

    .line 1493
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v30

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1495
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1497
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1498
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1499
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1506
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v31, v3, 0x2

    .line 1508
    .local v31, textPosX:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    .local v21, mArrScrollStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 1511
    .local v24, posY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v4

    add-int v24, v3, v4

    .line 1517
    :cond_f
    :goto_9
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 1518
    .local v13, fontMtx:Landroid/graphics/Paint$FontMetrics;
    move/from16 v0, v24

    int-to-float v3, v0

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v24, v0

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1521
    .restart local v20       #length:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v29, v0

    .line 1522
    .restart local v29       #skipLevel:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v28, v0

    .line 1523
    .restart local v28       #skipDensity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    move/from16 v17, v0

    .line 1525
    .restart local v17       #itemIntervalY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v24, v24, v3

    .line 1526
    const/4 v15, 0x0

    .restart local v15       #i:I
    const/16 v16, 0x0

    .restart local v16       #indexToShow:I
    :goto_a
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 1528
    rem-int v3, v15, v29

    add-int/lit8 v4, v29, -0x1

    if-ne v3, v4, :cond_16

    add-int/lit8 v3, v20, -0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_16

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1530
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1800()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1534
    :goto_b
    const-string v3, "."

    move/from16 v0, v31

    int-to-float v4, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1535
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1542
    :goto_c
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 1543
    add-int v24, v24, v17

    .line 1544
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_d
    add-int/lit8 v3, v28, -0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_15

    add-int/lit8 v3, v20, -0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_15

    .line 1545
    add-int/lit8 v16, v16, 0x1

    .line 1544
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 1475
    .end local v13           #fontMtx:Landroid/graphics/Paint$FontMetrics;
    .end local v18           #j:I
    .end local v21           #mArrScrollStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24           #posY:I
    .end local v30           #tempRect:Landroid/graphics/Rect;
    .end local v31           #textPosX:I
    .restart local v9       #allowedHeight:I
    .restart local v11       #bottomPosY:I
    .restart local v14       #handlePadding:I
    .restart local v22       #minHeight:I
    .restart local v23       #newBgRect:Landroid/graphics/Rect;
    .restart local v33       #topPadding:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    .line 1476
    mul-int/lit8 v3, v14, 0x2

    add-int/2addr v3, v11

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_7

    .line 1501
    .end local v9           #allowedHeight:I
    .end local v11           #bottomPosY:I
    .end local v14           #handlePadding:I
    .end local v15           #i:I
    .end local v16           #indexToShow:I
    .end local v17           #itemIntervalY:I
    .end local v20           #length:I
    .end local v22           #minHeight:I
    .end local v23           #newBgRect:Landroid/graphics/Rect;
    .end local v28           #skipDensity:I
    .end local v29           #skipLevel:I
    .end local v33           #topPadding:I
    .restart local v30       #tempRect:Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1503
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    .line 1513
    .restart local v21       #mArrScrollStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24       #posY:I
    .restart local v31       #textPosX:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_f

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v4

    add-int v24, v3, v4

    goto/16 :goto_9

    .line 1532
    .restart local v13       #fontMtx:Landroid/graphics/Paint$FontMetrics;
    .restart local v15       #i:I
    .restart local v16       #indexToShow:I
    .restart local v17       #itemIntervalY:I
    .restart local v20       #length:I
    .restart local v28       #skipDensity:I
    .restart local v29       #skipLevel:I
    :cond_13
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b

    .line 1540
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v6, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_c

    .line 1547
    .restart local v18       #j:I
    :cond_15
    const-string v3, "."

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    .end local v18           #j:I
    :goto_e
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a

    .line 1550
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mScrollBarOn:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1551
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1800()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1555
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1556
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2000()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    .line 1559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1563
    :goto_10
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexHeight:I

    .line 1564
    add-int v24, v24, v17

    .line 1565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 1553
    :cond_17
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 1561
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v4, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v6, v3

    add-int/lit8 v3, v15, 0x1

    mul-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    .line 1570
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsScroll:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1571
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1573
    const/16 v24, 0x0

    .line 1575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 1576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v4

    add-int v24, v3, v4

    .line 1581
    :cond_1a
    :goto_11
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 1582
    move/from16 v0, v24

    int-to-float v3, v0

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v24, v0

    .line 1583
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v24, v24, v3

    .line 1585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move/from16 v20, v0

    .line 1586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move/from16 v29, v0

    .line 1587
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    move/from16 v28, v0

    .line 1589
    const/4 v15, 0x0

    :goto_12
    move/from16 v0, v20

    if-ge v15, v0, :cond_21

    .line 1590
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    rem-int v3, v15, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1d

    .line 1592
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    add-int v24, v24, v3

    .line 1589
    :cond_1b
    :goto_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 1577
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1a

    .line 1578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mSecondHandlePadding:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I

    move-result v4

    add-int v24, v3, v4

    goto :goto_11

    .line 1594
    :cond_1d
    const/16 v18, 0x0

    .line 1595
    .restart local v18       #j:I
    const/16 v18, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_1e

    .line 1596
    add-int/lit8 v3, v20, -0x1

    if-lt v15, v3, :cond_20

    .line 1600
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1b

    .line 1601
    :cond_1f
    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v24, v0

    goto :goto_13

    .line 1595
    :cond_20
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    .line 1605
    .end local v18           #j:I
    :cond_21
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1606
    .local v10, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1608
    const/16 v25, 0x0

    .line 1609
    .local v25, scrollHandlerBottom:I
    const/16 v26, 0x0

    .line 1610
    .local v26, scrollHandlerTop:I
    const/16 v27, 0x0

    .line 1612
    .local v27, selectScrollIndex:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_23

    .line 1613
    const/4 v15, 0x0

    :goto_15
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_24

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_22

    .line 1615
    move/from16 v27, v15

    .line 1613
    :cond_22
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 1619
    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    mul-int/2addr v3, v4

    add-int/lit8 v27, v3, -0x1

    .line 1621
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_24

    .line 1622
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v27, v3, -0x1

    .line 1626
    :cond_24
    if-ltz v27, :cond_25

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v27

    if-le v0, v3, :cond_26

    .line 1723
    .end local v10           #bgPadding:Landroid/graphics/Rect;
    .end local v25           #scrollHandlerBottom:I
    .end local v26           #scrollHandlerTop:I
    .end local v27           #selectScrollIndex:I
    :cond_25
    :goto_16
    return-void

    .line 1629
    .restart local v10       #bgPadding:Landroid/graphics/Rect;
    .restart local v25       #scrollHandlerBottom:I
    .restart local v26       #scrollHandlerTop:I
    .restart local v27       #selectScrollIndex:I
    :cond_26
    iget v3, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, v24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    sub-int v26, v3, v4

    .line 1630
    iget v3, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int v3, v3, v24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    add-int v25, v3, v4

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 1633
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    .line 1635
    .local v32, textPosY:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1636
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 1637
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1641
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    .line 1643
    const/4 v3, 0x1

    move/from16 v0, v27

    if-lt v0, v3, :cond_27

    .line 1644
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    sub-float v32, v32, v3

    .line 1646
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1647
    add-int/lit8 v3, v27, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1649
    add-int/lit8 v3, v27, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_27

    .line 1650
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v32, v32, v3

    .line 1654
    :cond_27
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    .line 1656
    move/from16 v0, v31

    int-to-float v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedPosX:F

    .line 1657
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedPosY:F

    .line 1658
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedString:Ljava/lang/String;

    .line 1659
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    .line 1661
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_28

    .line 1662
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v32, v32, v3

    .line 1664
    :cond_28
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2400()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1665
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1667
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v27, 0x1

    if-lt v3, v4, :cond_2a

    .line 1668
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    add-float v32, v32, v3

    .line 1669
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_29

    .line 1670
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v32, v32, v3

    .line 1673
    :cond_29
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1674
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1675
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1677
    :cond_2a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1678
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_16

    .line 1681
    .end local v12           #count:I
    .end local v32           #textPosY:F
    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    if-nez v3, :cond_30

    .line 1682
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1900()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedPosY:F

    move/from16 v32, v0

    .line 1686
    .restart local v32       #textPosY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2c

    .line 1687
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    sub-float v32, v32, v3

    .line 1688
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1690
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_2c

    .line 1691
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v32, v32, v3

    .line 1694
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedPosY:F

    move/from16 v32, v0

    .line 1696
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_2d

    .line 1697
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v32, v32, v3

    .line 1700
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedString:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 1701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedString:Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1703
    :cond_2e
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_25

    .line 1704
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    add-float v32, v32, v3

    .line 1706
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_2f

    .line 1707
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v32, v32, v3

    .line 1709
    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndexFirstDepth:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 1711
    .end local v32           #textPosY:F
    :cond_30
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mMyDepth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mArrListScroll:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_25

    .line 1712
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    .line 1713
    .restart local v32       #textPosY:F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    .line 1714
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "."

    if-ne v3, v4, :cond_31

    .line 1715
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v32, v32, v3

    .line 1717
    :cond_31
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$2500()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1718
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_16
.end method

.method public getBaseIndexPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexInfoAt(I)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    goto :goto_0
.end method

.method public getIndexPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBaseIndexPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexSkipLevel()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    return v0
.end method

.method public getIndexStringAt(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1212
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexInfoAt(I)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    move-result-object v0

    .line 1213
    .local v0, ii:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScrollInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedIndexInfo()Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1219
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->getIndexStringAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscrollIndexInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIndexSkipLevel()I
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    return v0
.end method

.method public getmPositionChildScroll()F
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    return v0
.end method

.method public getmSkipDensity()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    return v0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "newParentHeight"

    .prologue
    .line 1398
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mScrollHeight:I

    .line 1399
    const-string v0, "TwIndexScrollView"

    const-string v1, "NdepthScroll:: onSizeChanged() / awakenScrollBar() is now being called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1401
    return-void
.end method

.method public setSelectedIndex(I)I
    .locals 0
    .parameter "selectedIndex"

    .prologue
    .line 1189
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    return p1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public updateIndex(F)Z
    .locals 13
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 1335
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr p1, v11

    .line 1336
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return v10

    .line 1340
    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1341
    .local v4, prevIndex:I
    const/4 v1, 0x0

    .line 1342
    .local v1, newSelectedIndex:I
    const/4 v3, 0x0

    .line 1344
    .local v3, positionI:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mBgRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v2, v11

    .line 1345
    .local v2, posY:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    .line 1348
    .local v8, skipLevel:I
    :goto_1
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    cmpg-float v11, v11, p1

    if-gez v11, :cond_3

    .line 1349
    rem-int v11, v3, v8

    add-int/lit8 v12, v8, -0x2

    if-ne v11, v12, :cond_2

    .line 1351
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    .line 1355
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1353
    :cond_2
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    goto :goto_2

    .line 1358
    :cond_3
    div-int v6, v3, v8

    .line 1359
    .local v6, quota:I
    rem-int v7, v3, v8

    .line 1360
    .local v7, reminder:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v6

    add-int v1, v11, v7

    .line 1367
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-nez v11, :cond_4

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_4

    .line 1369
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    div-int/lit8 v11, v11, 0x6

    int-to-float v11, v11

    add-float/2addr v11, v2

    sub-float v0, v11, p1

    .line 1370
    .local v0, d:F
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    sub-float v0, v11, v0

    .line 1371
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mItemIntervalY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mDotHeightRatio:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSkipDensity:I

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 1372
    .local v9, x:F
    div-float v11, v0, v9

    float-to-int v5, v11

    .line 1374
    .local v5, q:I
    add-int/2addr v1, v5

    .line 1378
    .end local v0           #d:F
    .end local v5           #q:I
    .end local v9           #x:F
    :cond_4
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v1, v11, :cond_7

    .line 1379
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSubscrollIndexInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1384
    :cond_5
    :goto_3
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mBlockSelectingDot:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    rem-int v11, v3, v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mIndexSkipLevel:I

    add-int/lit8 v12, v12, -0x1

    if-eq v11, v12, :cond_0

    .line 1387
    :cond_6
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mSelectedIndex:I

    .line 1389
    if-eq v1, v4, :cond_0

    .line 1390
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$NDepthScroll;->mPositionChildScroll:F

    .line 1391
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1380
    :cond_7
    if-gez v1, :cond_5

    .line 1381
    const/4 v1, 0x0

    goto :goto_3
.end method
