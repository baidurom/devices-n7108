.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final ELLIPSIS_NORMAL:[C = null

.field static final ELLIPSIS_TWO_DOTS:[C = null

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 54
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 58
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 60
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1900
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 1930
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1932
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 1935
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    .line 1936
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    return-void

    .line 62
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 63
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    .line 1930
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x3t
    .end array-data

    .line 1932
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    .line 120
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 122
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 4
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1897
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 145
    if-gez p3, :cond_0

    .line 146
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 147
    .local v0, app:Landroid/app/Application;
    :goto_0
    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const/4 p3, 0x0

    .line 160
    .end local v0           #app:Landroid/app/Application;
    :cond_0
    if-eqz p2, :cond_1

    .line 161
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 162
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 165
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 166
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 167
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 168
    if-gez p3, :cond_2

    move p3, v1

    .end local p3
    :cond_2
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 169
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 170
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 171
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 172
    instance-of v1, p1, Landroid/text/Spanned;

    iput-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 173
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 174
    return-void

    .line 146
    .restart local p3
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    .restart local v0       #app:Landroid/app/Application;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1361
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1362
    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1363
    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1365
    .local v9, dirs:Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 1366
    add-int/lit8 v15, v15, -0x1

    .line 1368
    :cond_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 1369
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1370
    .local v13, here:I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1372
    .local v18, there:I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 1373
    move/from16 v18, v15

    .line 1375
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 1376
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1377
    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1379
    .local v10, en:I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 1380
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v11

    .line 1381
    .local v11, h1:F
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v12

    .line 1383
    .local v12, h2:F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1384
    .local v4, left:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1386
    .local v6, right:F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1368
    .end local v4           #left:F
    .end local v6           #right:F
    .end local v10           #en:I
    .end local v11           #h1:F
    .end local v12           #h2:F
    .end local v17           #st:I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1390
    .end local v13           #here:I
    .end local v18           #there:I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"
    .parameter "method"

    .prologue
    .line 1743
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1745
    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    .line 1767
    :cond_0
    return-void

    .line 1749
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1750
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1752
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 1755
    if-ne v4, v3, :cond_3

    .line 1756
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    .line 1761
    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .line 1763
    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 1764
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1752
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1758
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 86
    .local v1, need:F
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 87
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 89
    .local v2, next:I
    if-gez v2, :cond_0

    .line 90
    move v2, p2

    .line 93
    :cond_0
    invoke-static {p3, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 95
    .local v3, w:F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 96
    move v1, v3

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 86
    move v0, v2

    goto :goto_0

    .line 101
    .end local v2           #next:I
    .end local v3           #w:F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2
    .parameter "method"

    .prologue
    const/4 v1, 0x0

    .line 1736
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/text/Layout;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/text/Layout;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private getHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailing"

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 825
    .local v0, line:I
    invoke-direct {p0, p1, p2, v0}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZI)F
    .locals 14
    .parameter "offset"
    .parameter "trailing"
    .parameter "line"

    .prologue
    .line 829
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 830
    .local v4, start:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 831
    .local v5, end:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 832
    .local v6, dir:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 833
    .local v8, hasTabOrEmoji:Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 835
    .local v7, directions:Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 836
    .local v9, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 840
    .local v12, tabs:[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_0

    .line 841
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 845
    .end local v12           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v9       #tabStops:Landroid/text/Layout$TabStops;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 846
    .local v1, tl:Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 847
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 848
    .local v13, wid:F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 850
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 851
    .local v10, left:I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 853
    .local v11, right:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .parameter "line"
    .parameter "tabStops"
    .parameter "full"

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 983
    .local v3, start:I
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 984
    .local v4, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 985
    .local v7, hasTabsOrEmoji:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 986
    .local v6, directions:Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 988
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 989
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 990
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 991
    .local v9, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 992
    return v9

    .line 983
    .end local v0           #tl:Landroid/text/TextLine;
    .end local v4           #end:I
    .end local v5           #dir:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v9           #width:F
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 11
    .parameter "line"
    .parameter "full"

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 947
    .local v3, start:I
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 949
    .local v4, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 950
    .local v7, hasTabsOrEmoji:Z
    const/4 v8, 0x0

    .line 951
    .local v8, tabStops:Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 955
    .local v9, tabs:[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 956
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 959
    .end local v9           #tabs:[Landroid/text/style/TabStopSpan;
    .restart local v8       #tabStops:Landroid/text/Layout$TabStops;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 961
    .local v6, directions:Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 962
    const/4 v10, 0x0

    .line 970
    :goto_1
    return v10

    .line 947
    .end local v4           #end:I
    .end local v6           #directions:Landroid/text/Layout$Directions;
    .end local v7           #hasTabsOrEmoji:Z
    .end local v8           #tabStops:Landroid/text/Layout$TabStops;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0

    .line 964
    .restart local v4       #end:I
    .restart local v6       #directions:Landroid/text/Layout$Directions;
    .restart local v7       #hasTabsOrEmoji:Z
    .restart local v8       #tabStops:Landroid/text/Layout$TabStops;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 966
    .local v5, dir:I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 967
    .local v0, tl:Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 968
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 969
    .local v10, width:F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_1
.end method

.method private getLineStartPos(III)I
    .locals 12
    .parameter "line"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v11, 0x1

    .line 491
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 492
    .local v0, align:Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 495
    .local v1, dir:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    .line 496
    move v8, p2

    .line 530
    .local v8, x:I
    :goto_0
    return v8

    .line 497
    .end local v8           #x:I
    :cond_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    .line 498
    if-ne v1, v11, :cond_1

    .line 499
    move v8, p2

    .restart local v8       #x:I
    goto :goto_0

    .line 501
    .end local v8           #x:I
    :cond_1
    move v8, p3

    .restart local v8       #x:I
    goto :goto_0

    .line 504
    .end local v8           #x:I
    :cond_2
    const/4 v7, 0x0

    .line 505
    .local v7, tabStops:Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 506
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 507
    .local v4, spanned:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 508
    .local v5, start:I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 510
    .local v3, spanEnd:I
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 512
    .local v6, tabSpans:[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_3

    .line 513
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 516
    .end local v3           #spanEnd:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #start:I
    .end local v6           #tabSpans:[Landroid/text/style/TabStopSpan;
    .restart local v7       #tabStops:Landroid/text/Layout$TabStops;
    :cond_3
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 517
    .local v2, max:I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_4

    .line 518
    sub-int v8, p3, v2

    .restart local v8       #x:I
    goto :goto_0

    .line 519
    .end local v8           #x:I
    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_6

    .line 520
    if-ne v1, v11, :cond_5

    .line 521
    sub-int v8, p3, v2

    .restart local v8       #x:I
    goto :goto_0

    .line 523
    .end local v8           #x:I
    :cond_5
    sub-int v8, p2, v2

    .restart local v8       #x:I
    goto :goto_0

    .line 526
    .end local v8           #x:I
    :cond_6
    and-int/lit8 v2, v2, -0x2

    .line 527
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    shr-int/lit8 v8, v9, 0x1

    .restart local v8       #x:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1141
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1143
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    move v2, p3

    .line 1160
    :goto_0
    return v2

    .line 1147
    .local v0, ch:C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_1
    if-le p3, p2, :cond_3

    .line 1148
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1150
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1151
    add-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 1154
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .end local v0           #ch:C
    :cond_3
    move v2, p3

    .line 1160
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .parameter "offset"

    .prologue
    .line 1250
    if-nez p1, :cond_0

    .line 1251
    const/4 v7, 0x0

    .line 1276
    :goto_0
    return v7

    .line 1253
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1254
    .local v6, text:Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1256
    .local v0, c:C
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 1257
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1259
    .local v1, c1:C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 1260
    add-int/lit8 p1, p1, -0x1

    .line 1263
    .end local v1           #c1:C
    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1264
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1267
    .local v4, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    .line 1268
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, start:I
    move-object v7, v6

    .line 1269
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1271
    .local v2, end:I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1272
    move p1, v5

    .line 1267
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #end:I
    .end local v3           #i:I
    .end local v4           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v5           #start:I
    :cond_3
    move v7, p1

    .line 1276
    goto :goto_0
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 15
    .parameter "caret"
    .parameter "toLeft"

    .prologue
    .line 1196
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 1197
    .local v12, line:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1198
    .local v4, lineStart:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1199
    .local v5, lineEnd:I
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1201
    .local v6, lineDir:I
    const/4 v13, 0x0

    .line 1202
    .local v13, lineChanged:Z
    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v10, 0x1

    .line 1204
    .local v10, advance:Z
    :goto_1
    if-eqz v10, :cond_5

    .line 1205
    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 1206
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_4

    .line 1207
    const/4 v13, 0x1

    .line 1208
    add-int/lit8 v12, v12, 0x1

    .line 1224
    :cond_0
    :goto_2
    if-eqz v13, :cond_1

    .line 1225
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1226
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1227
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    .line 1228
    .local v14, newDir:I
    if-eq v14, v6, :cond_1

    .line 1232
    if-nez p2, :cond_7

    const/16 p2, 0x1

    .line 1233
    :goto_3
    move v6, v14

    .line 1237
    .end local v14           #newDir:I
    :cond_1
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1239
    .local v7, directions:Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1241
    .local v1, tl:Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1242
    sub-int v2, p1, v4

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int p1, v4, v2

    .line 1243
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v1

    move/from16 v11, p1

    .line 1244
    .end local v1           #tl:Landroid/text/TextLine;
    .end local v7           #directions:Landroid/text/Layout$Directions;
    .end local p1
    .local v11, caret:I
    :goto_4
    return v11

    .line 1202
    .end local v10           #advance:Z
    .end local v11           #caret:I
    .restart local p1
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #advance:Z
    :cond_4
    move/from16 v11, p1

    .line 1210
    .end local p1
    .restart local v11       #caret:I
    goto :goto_4

    .line 1214
    .end local v11           #caret:I
    .restart local p1
    :cond_5
    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 1215
    if-lez v12, :cond_6

    .line 1216
    const/4 v13, 0x1

    .line 1217
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    move/from16 v11, p1

    .line 1219
    .end local p1
    .restart local v11       #caret:I
    goto :goto_4

    .line 1232
    .end local v11           #caret:I
    .restart local v14       #newDir:I
    .restart local p1
    :cond_7
    const/16 p2, 0x0

    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .parameter "line"

    .prologue
    .line 1503
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_1

    .line 1504
    const/4 v6, 0x0

    .line 1535
    :cond_0
    :goto_0
    return v6

    .line 1506
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1508
    .local v11, spanned:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1509
    .local v5, lineStart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1510
    .local v4, lineEnd:I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1512
    .local v9, spanEnd:I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1514
    .local v12, spans:[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_2

    .line 1515
    const/4 v6, 0x0

    goto :goto_0

    .line 1518
    :cond_2
    const/4 v6, 0x0

    .line 1520
    .local v6, margin:I
    if-eqz v5, :cond_3

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    :cond_3
    const/4 v3, 0x1

    .line 1523
    .local v3, isFirstParaLine:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v14, v12

    if-ge v2, v14, :cond_0

    .line 1524
    aget-object v8, v12, v2

    .line 1525
    .local v8, span:Landroid/text/style/LeadingMarginSpan;
    move v13, v3

    .line 1526
    .local v13, useFirstLineMargin:Z
    instance-of v14, v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    .line 1527
    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1528
    .local v7, spStart:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .local v10, spanLine:I
    move-object v14, v8

    .line 1529
    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1530
    .local v1, count:I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_6

    const/4 v13, 0x1

    .line 1532
    .end local v1           #count:I
    .end local v7           #spStart:I
    .end local v10           #spanLine:I
    :cond_4
    :goto_3
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1523
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1520
    .end local v2           #i:I
    .end local v3           #isFirstParaLine:Z
    .end local v8           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v13           #useFirstLineMargin:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1530
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #isFirstParaLine:Z
    .restart local v7       #spStart:I
    .restart local v8       #span:Landroid/text/style/LeadingMarginSpan;
    .restart local v10       #spanLine:I
    .restart local v13       #useFirstLineMargin:Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1728
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1729
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1732
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 22
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1541
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v17

    .line 1542
    .local v17, mt:Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v21

    .line 1544
    .local v21, tl:Landroid/text/TextLine;
    :try_start_0
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1547
    move-object/from16 v0, v17

    iget-boolean v4, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_2

    .line 1548
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1549
    .local v10, directions:Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    .line 1555
    .local v9, dir:I
    :goto_0
    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    .line 1556
    .local v13, chars:[C
    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/MeasuredText;->mLen:I

    move/from16 v16, v0

    .line 1557
    .local v16, len:I
    const/4 v11, 0x0

    .line 1558
    .local v11, hasTabs:Z
    const/4 v12, 0x0

    .line 1559
    .local v12, tabStops:Landroid/text/Layout$TabStops;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 1560
    aget-char v4, v13, v14

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 1561
    const/4 v11, 0x1

    .line 1562
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    .line 1563
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1564
    .local v19, spanned:Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v18

    .line 1566
    .local v18, spanEnd:I
    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/TabStopSpan;

    .line 1568
    .local v20, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v20

    array-length v4, v0

    if-lez v4, :cond_0

    .line 1569
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    move-object/from16 v0, v20

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1576
    .end local v18           #spanEnd:I
    .end local v19           #spanned:Landroid/text/Spanned;
    .end local v20           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v12       #tabStops:Landroid/text/Layout$TabStops;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1578
    if-nez v11, :cond_1

    .line 1579
    const/4 v15, 0x0

    .local v15, k:I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 1580
    aget-char v4, v13, v15

    const v5, 0xdbb8

    if-lt v4, v5, :cond_4

    aget-char v4, v13, v15

    const v5, 0xdbbb

    if-gt v4, v5, :cond_4

    .line 1581
    const/4 v11, 0x1

    .end local v15           #k:I
    :cond_1
    move-object/from16 v4, v21

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1588
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1589
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1591
    invoke-static/range {v21 .. v21}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1592
    invoke-static/range {v17 .. v17}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v4

    .line 1551
    .end local v9           #dir:I
    .end local v10           #directions:Landroid/text/Layout$Directions;
    .end local v11           #hasTabs:Z
    .end local v12           #tabStops:Landroid/text/Layout$TabStops;
    .end local v13           #chars:[C
    .end local v14           #i:I
    .end local v16           #len:I
    :cond_2
    :try_start_1
    move-object/from16 v0, v17

    iget v4, v0, Landroid/text/MeasuredText;->mDir:I

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v6, 0x0

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v8, 0x0

    move-object/from16 v0, v17

    iget v9, v0, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1553
    .restart local v10       #directions:Landroid/text/Layout$Directions;
    move-object/from16 v0, v17

    iget v9, v0, Landroid/text/MeasuredText;->mDir:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9       #dir:I
    goto/16 :goto_0

    .line 1559
    .restart local v11       #hasTabs:Z
    .restart local v12       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v13       #chars:[C
    .restart local v14       #i:I
    .restart local v16       #len:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1579
    .restart local v15       #k:I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1591
    .end local v9           #dir:I
    .end local v10           #directions:Landroid/text/Layout$Directions;
    .end local v11           #hasTabs:Z
    .end local v12           #tabStops:Landroid/text/Layout$TabStops;
    .end local v13           #chars:[C
    .end local v14           #i:I
    .end local v15           #k:I
    .end local v16           #len:I
    :catchall_0
    move-exception v4

    invoke-static/range {v21 .. v21}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1592
    invoke-static/range {v17 .. v17}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 1671
    const v2, 0x7f7fffff

    .line 1672
    .local v2, nh:F
    const/4 v0, 0x0

    .line 1674
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 1675
    if-nez p4, :cond_0

    .line 1676
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1677
    const/4 v0, 0x1

    .line 1680
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 1681
    if-nez v0, :cond_2

    .line 1682
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 1680
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1686
    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1688
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 1689
    int-to-float v2, v3

    goto :goto_1

    .line 1692
    .end local v3           #where:I
    :cond_3
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 1696
    .end local v1           #i:I
    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .parameter "offset"

    .prologue
    const v12, 0x3ffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 754
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 755
    .local v4, line:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 756
    .local v6, lineStart:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 757
    .local v5, lineEnd:I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 759
    .local v7, runs:[I
    const/4 v1, -0x1

    .line 760
    .local v1, levelAt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    .line 761
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 762
    .local v8, start:I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 763
    .local v3, limit:I
    if-le v3, v5, :cond_0

    .line 764
    move v3, v5

    .line 766
    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    .line 767
    if-le p1, v8, :cond_1

    .line 799
    .end local v3           #limit:I
    .end local v8           #start:I
    :goto_1
    return v9

    .line 771
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 775
    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 777
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_6

    move v1, v9

    .line 781
    :cond_3
    :goto_2
    const/4 v2, -0x1

    .line 782
    .local v2, levelBefore:I
    if-ne p1, v6, :cond_8

    .line 783
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_7

    move v2, v9

    .line 799
    :cond_4
    :goto_3
    if-ge v2, v1, :cond_b

    :goto_4
    move v9, v10

    goto :goto_1

    .line 760
    .end local v2           #levelBefore:I
    .restart local v3       #limit:I
    .restart local v8       #start:I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_6
    move v1, v10

    .line 777
    goto :goto_2

    .restart local v2       #levelBefore:I
    :cond_7
    move v2, v10

    .line 783
    goto :goto_3

    .line 785
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 786
    const/4 v0, 0x0

    :goto_5
    array-length v11, v7

    if-ge v0, v11, :cond_4

    .line 787
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 788
    .restart local v8       #start:I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 789
    .restart local v3       #limit:I
    if-le v3, v5, :cond_9

    .line 790
    move v3, v5

    .line 792
    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    .line 793
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 794
    goto :goto_3

    .line 786
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .end local v3           #limit:I
    .end local v8           #start:I
    :cond_b
    move v10, v9

    .line 799
    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 200
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 9
    .parameter "canvas"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v7

    .line 215
    .local v7, lineRange:J
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 216
    .local v5, firstLine:I
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 217
    .local v6, lastLine:I
    if-gez v6, :cond_0

    .line 222
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 219
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 221
    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 26
    .parameter "canvas"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"
    .parameter "firstLine"
    .parameter "lastLine"

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_8

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v4, :cond_0

    .line 382
    new-instance v4, Landroid/text/SpanSet;

    const-class v6, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v4, v6}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 385
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 386
    .local v11, buffer:Landroid/text/Spanned;
    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v25

    .line 387
    .local v25, textLength:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v6, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v11, v6, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v4, v4, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v4, :cond_7

    .line 390
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 391
    .local v19, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    .line 392
    .local v20, previousLineEnd:I
    sget-object v22, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 393
    .local v22, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v23, 0x0

    .line 394
    .local v23, spansLength:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 395
    .local v5, paint:Landroid/text/TextPaint;
    const/16 v21, 0x0

    .line 396
    .local v21, spanEnd:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/Layout;->mWidth:I

    .line 397
    .local v7, width:I
    move/from16 v14, p5

    .local v14, i:I
    :goto_0
    move/from16 v0, p6

    if-gt v14, v0, :cond_7

    .line 398
    move/from16 v12, v20

    .line 399
    .local v12, start:I
    add-int/lit8 v4, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 400
    .local v13, end:I
    move/from16 v20, v13

    .line 402
    move/from16 v8, v19

    .line 403
    .local v8, ltop:I
    add-int/lit8 v4, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 404
    .local v10, lbottom:I
    move/from16 v19, v10

    .line 405
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 407
    .local v9, lbaseline:I
    move/from16 v0, v21

    if-lt v12, v0, :cond_5

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v25

    invoke-virtual {v4, v12, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v21

    .line 412
    const/16 v23, 0x0

    .line 414
    if-ne v12, v13, :cond_1

    if-nez v12, :cond_5

    .line 417
    :cond_1
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v4, v4, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v15, v4, :cond_5

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spanStarts:[I

    aget v4, v4, v15

    if-ge v4, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spanEnds:[I

    aget v4, v4, v15

    if-gt v4, v12, :cond_3

    .line 417
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 422
    :cond_3
    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v23

    if-ne v0, v4, :cond_4

    .line 424
    mul-int/lit8 v4, v23, 0x2

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v17

    .line 425
    .local v17, newSize:I
    move/from16 v0, v17

    new-array v0, v0, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v18, v0

    .line 426
    .local v18, newSpans:[Landroid/text/style/ParagraphStyle;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    move-object/from16 v22, v18

    .line 429
    .end local v17           #newSize:I
    .end local v18           #newSpans:[Landroid/text/style/ParagraphStyle;
    :cond_4
    add-int/lit8 v24, v23, 0x1

    .end local v23           #spansLength:I
    .local v24, spansLength:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v4, v4, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v4, [Landroid/text/style/LineBackgroundSpan;

    aget-object v4, v4, v15

    aput-object v4, v22, v23

    move/from16 v23, v24

    .end local v24           #spansLength:I
    .restart local v23       #spansLength:I
    goto :goto_2

    .line 434
    .end local v15           #j:I
    :cond_5
    const/16 v16, 0x0

    .local v16, n:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 435
    aget-object v3, v22, v16

    check-cast v3, Landroid/text/style/LineBackgroundSpan;

    .line 436
    .local v3, lineBackgroundSpan:Landroid/text/style/LineBackgroundSpan;
    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v14}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 434
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 397
    .end local v3           #lineBackgroundSpan:Landroid/text/style/LineBackgroundSpan;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 442
    .end local v5           #paint:Landroid/text/TextPaint;
    .end local v7           #width:I
    .end local v8           #ltop:I
    .end local v9           #lbaseline:I
    .end local v10           #lbottom:I
    .end local v12           #start:I
    .end local v13           #end:I
    .end local v14           #i:I
    .end local v16           #n:I
    .end local v19           #previousLineBottom:I
    .end local v20           #previousLineEnd:I
    .end local v21           #spanEnd:I
    .end local v22           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v23           #spansLength:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v4}, Landroid/text/SpanSet;->recycle()V

    .line 447
    .end local v11           #buffer:Landroid/text/Spanned;
    .end local v25           #textLength:I
    :cond_8
    if-eqz p2, :cond_a

    .line 448
    if-eqz p4, :cond_9

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 449
    :cond_9
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 450
    if-eqz p4, :cond_a

    const/4 v4, 0x0

    move/from16 v0, p4

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 452
    :cond_a
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 47
    .parameter "canvas"
    .parameter "firstLine"
    .parameter "lastLine"

    .prologue
    .line 228
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v35

    .line 229
    .local v35, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 230
    .local v36, previousLineEnd:I
    sget-object v39, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 231
    .local v39, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    .line 232
    .local v38, spanEnd:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 233
    .local v5, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 235
    .local v11, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 236
    .local v34, paraAlign:Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    .line 237
    .local v27, tabStops:Landroid/text/Layout$TabStops;
    const/16 v42, 0x0

    .line 239
    .local v42, tabStopsIsInitialized:Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v44

    .line 243
    .local v44, tl:Landroid/text/TextLine;
    move/from16 v30, p2

    .local v30, i:I
    move-object/from16 v41, v27

    .end local v27           #tabStops:Landroid/text/Layout$TabStops;
    .local v41, tabStops:Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v0, v30

    move/from16 v1, p3

    if-gt v0, v1, :cond_15

    .line 244
    move/from16 v12, v36

    .line 245
    .local v12, start:I
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v36

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    .line 248
    .local v13, end:I
    move/from16 v8, v35

    .line 249
    .local v8, ltop:I
    add-int/lit8 v4, v30, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 250
    .local v10, lbottom:I
    move/from16 v35, v10

    .line 251
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 253
    .local v9, lbaseline:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 254
    .local v7, dir:I
    const/16 v18, 0x0

    .line 255
    .local v18, left:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 257
    .local v6, right:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_a

    move-object/from16 v37, v11

    .line 258
    check-cast v37, Landroid/text/Spanned;

    .line 259
    .local v37, sp:Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v43

    .line 260
    .local v43, textLength:I
    if-eqz v12, :cond_0

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_6

    :cond_0
    const/4 v14, 0x1

    .line 272
    .local v14, isFirstParaLine:Z
    :goto_1
    move/from16 v0, v38

    if-lt v12, v0, :cond_3

    move/from16 v0, v30

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz v14, :cond_3

    .line 273
    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v38

    .line 275
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .end local v39           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 277
    .restart local v39       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 278
    move-object/from16 v0, v39

    array-length v4, v0

    add-int/lit8 v33, v4, -0x1

    .local v33, n:I
    :goto_2
    if-ltz v33, :cond_2

    .line 279
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_7

    .line 280
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v34

    .line 285
    :cond_2
    const/16 v42, 0x0

    .line 290
    .end local v33           #n:I
    :cond_3
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v31, v0

    .line 291
    .local v31, length:I
    const/16 v33, 0x0

    .restart local v33       #n:I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 292
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_5

    .line 293
    aget-object v3, v39, v33

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    .line 294
    .local v3, margin:Landroid/text/style/LeadingMarginSpan;
    move/from16 v45, v14

    .line 295
    .local v45, useFirstLineMargin:Z
    instance-of v4, v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 296
    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    .line 297
    .local v29, count:I
    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v40

    .line 298
    .local v40, startLine:I
    add-int v4, v40, v29

    move/from16 v0, v30

    if-ge v0, v4, :cond_8

    const/16 v45, 0x1

    .line 301
    .end local v29           #count:I
    .end local v40           #startLine:I
    :cond_4
    :goto_4
    const/4 v4, -0x1

    if-ne v7, v4, :cond_9

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    .line 302
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 305
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    .line 291
    .end local v3           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v45           #useFirstLineMargin:Z
    :cond_5
    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 260
    .end local v14           #isFirstParaLine:Z
    .end local v31           #length:I
    .end local v33           #n:I
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 278
    .restart local v14       #isFirstParaLine:Z
    .restart local v33       #n:I
    :cond_7
    add-int/lit8 v33, v33, -0x1

    goto :goto_2

    .line 298
    .restart local v3       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v29       #count:I
    .restart local v31       #length:I
    .restart local v40       #startLine:I
    .restart local v45       #useFirstLineMargin:Z
    :cond_8
    const/16 v45, 0x0

    goto :goto_4

    .end local v29           #count:I
    .end local v40           #startLine:I
    :cond_9
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    .line 307
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 310
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_5

    .line 316
    .end local v3           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v14           #isFirstParaLine:Z
    .end local v31           #length:I
    .end local v33           #n:I
    .end local v37           #sp:Landroid/text/Spanned;
    .end local v43           #textLength:I
    .end local v45           #useFirstLineMargin:Z
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    .line 318
    .local v26, hasTabOrEmoji:Z
    if-eqz v26, :cond_16

    if-nez v42, :cond_16

    .line 319
    if-nez v41, :cond_c

    .line 320
    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 324
    .end local v41           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v27       #tabStops:Landroid/text/Layout$TabStops;
    :goto_6
    const/16 v42, 0x1

    .line 328
    :goto_7
    move-object/from16 v28, v34

    .line 329
    .local v28, align:Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_e

    .line 330
    const/4 v4, 0x1

    if-ne v7, v4, :cond_d

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 338
    :cond_b
    :goto_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_11

    .line 339
    const/4 v4, 0x1

    if-ne v7, v4, :cond_10

    .line 340
    move/from16 v46, v18

    .line 358
    .local v46, x:I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    .line 359
    .local v25, directions:Landroid/text/Layout$Directions;
    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v4, :cond_14

    if-nez v26, :cond_14

    .line 361
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 243
    .end local v25           #directions:Landroid/text/Layout$Directions;
    :goto_a
    add-int/lit8 v30, v30, 0x1

    move-object/from16 v41, v27

    .end local v27           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v41       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_0

    .line 322
    .end local v28           #align:Landroid/text/Layout$Alignment;
    .end local v46           #x:I
    :cond_c
    const/16 v4, 0x14

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v41

    .end local v41           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v27       #tabStops:Landroid/text/Layout$TabStops;
    goto :goto_6

    .line 330
    .restart local v28       #align:Landroid/text/Layout$Alignment;
    :cond_d
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 332
    :cond_e
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_b

    .line 333
    const/4 v4, 0x1

    if-ne v7, v4, :cond_f

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_b
    goto :goto_8

    :cond_f
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 342
    :cond_10
    move/from16 v46, v6

    .restart local v46       #x:I
    goto :goto_9

    .line 345
    .end local v46           #x:I
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v32, v0

    .line 346
    .local v32, max:I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_13

    .line 347
    const/4 v4, 0x1

    if-ne v7, v4, :cond_12

    .line 348
    sub-int v46, v6, v32

    .restart local v46       #x:I
    goto :goto_9

    .line 350
    .end local v46           #x:I
    :cond_12
    sub-int v46, v18, v32

    .restart local v46       #x:I
    goto :goto_9

    .line 353
    .end local v46           #x:I
    :cond_13
    and-int/lit8 v32, v32, -0x2

    .line 354
    add-int v4, v6, v18

    sub-int v4, v4, v32

    shr-int/lit8 v46, v4, 0x1

    .restart local v46       #x:I
    goto :goto_9

    .end local v32           #max:I
    .restart local v25       #directions:Landroid/text/Layout$Directions;
    :cond_14
    move-object/from16 v19, v44

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    .line 363
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 364
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v44

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto :goto_a

    .line 368
    .end local v6           #right:I
    .end local v7           #dir:I
    .end local v8           #ltop:I
    .end local v9           #lbaseline:I
    .end local v10           #lbottom:I
    .end local v12           #start:I
    .end local v13           #end:I
    .end local v18           #left:I
    .end local v25           #directions:Landroid/text/Layout$Directions;
    .end local v26           #hasTabOrEmoji:Z
    .end local v27           #tabStops:Landroid/text/Layout$TabStops;
    .end local v28           #align:Landroid/text/Layout$Alignment;
    .end local v46           #x:I
    .restart local v41       #tabStops:Landroid/text/Layout$TabStops;
    :cond_15
    invoke-static/range {v44 .. v44}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 369
    return-void

    .restart local v6       #right:I
    .restart local v7       #dir:I
    .restart local v8       #ltop:I
    .restart local v9       #lbaseline:I
    .restart local v10       #lbottom:I
    .restart local v12       #start:I
    .restart local v13       #end:I
    .restart local v18       #left:I
    .restart local v26       #hasTabOrEmoji:Z
    :cond_16
    move-object/from16 v27, v41

    .end local v41           #tabStops:Landroid/text/Layout$TabStops;
    .restart local v27       #tabStops:Landroid/text/Layout$TabStops;
    goto/16 :goto_7
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1287
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1289
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1290
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1291
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1293
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 1294
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 1296
    .local v5, h2:F
    :goto_0
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/16 v9, 0x800

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 1298
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1299
    .local v3, fn:I
    const/4 v2, 0x0

    .line 1301
    .local v2, dist:I
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    .line 1302
    :cond_0
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 1304
    if-eqz v3, :cond_1

    .line 1305
    add-int/2addr v7, v2

    .line 1306
    :cond_1
    if-eqz v1, :cond_2

    .line 1307
    sub-int/2addr v0, v2

    .line 1310
    :cond_2
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 1311
    const/high16 v4, 0x3f00

    .line 1312
    :cond_3
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 1313
    const/high16 v5, 0x3f00

    .line 1315
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_8

    invoke-direct {p0, v6, v0}, Landroid/text/Layout;->fixCursorHeight(II)I

    move-result v0

    .line 1316
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1317
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1326
    :goto_1
    const/4 v8, 0x2

    if-ne v1, v8, :cond_9

    .line 1327
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1328
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1329
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1330
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1342
    :cond_5
    :goto_2
    const/4 v8, 0x2

    if-ne v3, v8, :cond_a

    .line 1343
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1344
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1345
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1346
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1357
    :cond_6
    :goto_3
    return-void

    .end local v1           #caps:I
    .end local v2           #dist:I
    .end local v3           #fn:I
    .end local v5           #h2:F
    :cond_7
    move v5, v4

    .line 1294
    goto :goto_0

    .line 1319
    .restart local v1       #caps:I
    .restart local v2       #dist:I
    .restart local v3       #fn:I
    .restart local v5       #h2:F
    :cond_8
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1320
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1322
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1323
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1331
    :cond_9
    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    .line 1332
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1333
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1335
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1336
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1338
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1339
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1347
    :cond_a
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 1348
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1349
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1351
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1352
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1354
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1355
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1184
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1175
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1167
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 627
    if-eqz p2, :cond_0

    .line 628
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 629
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 630
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 631
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1129
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 1025
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1027
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1028
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1030
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1031
    move v1, v0

    goto :goto_0

    .line 1033
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1036
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1037
    const/4 v2, 0x0

    .line 1039
    .end local v2           #low:I
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1004
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1005
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1007
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1008
    move v1, v0

    goto :goto_0

    .line 1010
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1013
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1014
    const/4 v2, 0x0

    .line 1016
    .end local v2           #low:I
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 861
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 862
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 864
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_1

    .line 883
    :cond_0
    :goto_0
    return v5

    .line 866
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    .line 867
    if-ne v1, v7, :cond_0

    .line 868
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 871
    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3

    .line 872
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 873
    :cond_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_4

    .line 874
    if-eq v1, v7, :cond_0

    .line 877
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 879
    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 880
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 881
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 883
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 4
    .parameter "line"

    .prologue
    .line 923
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 924
    .local v0, margin:F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 925
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .end local v1           #signedExtent:F
    :goto_0
    return v1

    .restart local v1       #signedExtent:F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 462
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v6

    .line 463
    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 465
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    monitor-exit v6

    .line 476
    :goto_0
    return-wide v4

    .line 468
    :cond_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 469
    .local v2, dtop:I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 470
    .local v1, dbottom:I
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 473
    .local v3, top:I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 475
    .local v0, bottom:I
    if-lt v3, v0, :cond_1

    invoke-static {v5, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_0

    .line 470
    .end local v0           #bottom:I
    .end local v1           #dbottom:I
    .end local v2           #dtop:I
    .end local v3           #top:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 476
    .restart local v0       #bottom:I
    .restart local v1       #dbottom:I
    .restart local v2       #dtop:I
    .restart local v3       #top:I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 892
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 893
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 895
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    .line 914
    :goto_0
    return v5

    .line 897
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 898
    if-ne v1, v6, :cond_1

    .line 899
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 902
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 903
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 904
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 905
    if-ne v1, v6, :cond_4

    .line 906
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 908
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 910
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 911
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 912
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 914
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1137
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 4
    .parameter "line"

    .prologue
    .line 933
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 934
    .local v0, margin:F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 935
    .local v1, signedExtent:F
    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .end local v1           #signedExtent:F
    :goto_0
    return v1

    .restart local v1       #signedExtent:F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 1047
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 1048
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1049
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1051
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1052
    add-int/lit8 v13, v13, 0x1

    .line 1054
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Framework_EnableEmoji"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1056
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    add-int/lit8 v19, v13, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    const v19, 0xdbb8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    add-int/lit8 v19, v13, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    const v19, 0xdbbb

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 1057
    add-int/lit8 v13, v13, -0x1

    .line 1061
    :cond_1
    move v4, v14

    .line 1062
    .local v4, best:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1064
    .local v5, bestdist:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 1065
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 1066
    .local v9, here:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 1067
    .local v17, there:I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x400

    and-int v18, v18, v19

    if-eqz v18, :cond_3

    const/16 v16, -0x1

    .line 1069
    .local v16, swap:I
    :goto_1
    move/from16 v0, v17

    if-le v0, v13, :cond_2

    .line 1070
    move/from16 v17, v13

    .line 1071
    :cond_2
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 1073
    .local v12, low:I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 1074
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1075
    .local v8, guess:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1077
    .local v2, adguess:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    .line 1078
    move v10, v8

    goto :goto_2

    .line 1067
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_3
    const/16 v16, 0x1

    goto :goto_1

    .line 1080
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_4
    move v12, v8

    goto :goto_2

    .line 1083
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_5
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_6

    .line 1084
    add-int/lit8 v12, v9, 0x1

    .line 1086
    :cond_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 1087
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1089
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1091
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1092
    .local v3, aft:I
    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    .line 1093
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1095
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_7

    .line 1096
    move v7, v15

    .line 1097
    move v12, v3

    .line 1101
    .end local v15           #other:F
    :cond_7
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 1102
    move v5, v7

    .line 1103
    move v4, v12

    .line 1107
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1109
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_9

    .line 1110
    move v5, v7

    .line 1111
    move v4, v9

    .line 1064
    :cond_9
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 1115
    .end local v7           #dist:F
    .end local v9           #here:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1117
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_b

    .line 1118
    move v5, v7

    .line 1119
    move v4, v13

    .line 1122
    :cond_b
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 1188
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 1192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .parameter "line"

    .prologue
    .line 1455
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1457
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1458
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1459
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1463
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1464
    .local v2, spanLength:I
    if-lez v2, :cond_0

    .line 1465
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1469
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1476
    const/4 v1, 0x0

    .line 1477
    .local v1, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1478
    .local v0, dir:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1481
    .end local v1           #left:I
    :cond_0
    :goto_0
    return v1

    .restart local v1       #left:I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v1

    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1488
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1489
    .local v1, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1490
    .local v0, dir:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    .line 1493
    .end local v1           #right:I
    :cond_0
    :goto_0
    return v1

    .restart local v1       #right:I
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 808
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 809
    .local v0, trailing:Z
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 818
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 819
    .local v0, trailing:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1399
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1401
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1404
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1405
    move/from16 v17, p2

    .line 1406
    .local v17, temp:I
    move/from16 p2, p1

    .line 1407
    move/from16 p1, v17

    .line 1410
    .end local v17           #temp:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1411
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1413
    .local v15, endline:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1414
    .local v6, top:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1416
    .local v7, bottom:I
    if-ne v3, v15, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Landroid/text/Layout;->fixCursorHeight(II)I

    move-result v7

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1417
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 1419
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1421
    .local v18, width:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1424
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1425
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1431
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1432
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1433
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1434
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1431
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1428
    .end local v16           #i:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1437
    .restart local v16       #i:I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1438
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1440
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Landroid/text/Layout;->fixCursorHeight(II)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1443
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 1444
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1446
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    .line 570
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 575
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .parameter "offset"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 700
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 701
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 702
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v8

    .line 706
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 707
    .local v7, runs:[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 708
    .local v4, lineStart:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 709
    .local v3, lineEnd:I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_5

    .line 710
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_3

    move v5, v8

    .line 711
    .local v5, paraLevel:I
    :goto_1
    if-ne p1, v4, :cond_4

    move v6, v8

    .line 712
    .local v6, runIndex:I
    :goto_2
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_0

    move v8, v9

    goto :goto_0

    .end local v5           #paraLevel:I
    .end local v6           #runIndex:I
    :cond_3
    move v5, v9

    .line 710
    goto :goto_1

    .line 711
    .restart local v5       #paraLevel:I
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2

    .line 715
    .end local v5           #paraLevel:I
    :cond_5
    sub-int/2addr p1, v4

    .line 716
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_0

    .line 717
    aget v10, v7, v1

    if-ne p1, v10, :cond_6

    move v8, v9

    .line 718
    goto :goto_0

    .line 716
    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method public isRtlCharAt(I)Z
    .locals 11
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 730
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 731
    .local v3, line:I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 732
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v8

    .line 735
    :cond_1
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_2

    move v8, v7

    .line 736
    goto :goto_0

    .line 738
    :cond_2
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 739
    .local v5, runs:[I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 740
    .local v4, lineStart:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, v5

    if-ge v1, v9, :cond_0

    .line 741
    aget v9, v5, v1

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int v6, v4, v9

    .line 744
    .local v6, start:I
    if-lt p1, v6, :cond_4

    .line 745
    add-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v2, v9, 0x3f

    .line 746
    .local v2, level:I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_2

    .line 740
    .end local v2           #level:I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1700
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 182
    if-gez p3, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 187
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 188
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 189
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 190
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 191
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 192
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 193
    return-void
.end method

.method private fixCursorHeight(II)I
    .locals 2
    .parameter "line"
    .parameter "bottom"

    .prologue
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    add-int/lit8 p2, v0, 0x6

    .end local p2
    :cond_1
    return p2
.end method
