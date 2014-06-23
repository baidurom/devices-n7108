.class public Lcom/sec/android/touchwiz/widget/TwNoitemView;
.super Landroid/app/Activity;
.source "TwNoitemView.java"


# static fields
.field private static final IMAGE_BASED_RES:I = 0x202017d

.field private static final MULTI_BASED_RES:I = 0x202017e

.field public static final NOITEM_TYPE_IMAGE:I = 0x1

.field public static final NOITEM_TYPE_MULTI:I = 0x2

.field public static final NOITEM_TYPE_TEXT:I = 0x0

.field public static final NOITEM_TYPE_UNNAMED:I = 0x3

.field private static final TEXT_BASED_RES:I = 0x202017f

.field private static final UNNAMED_BASED_RES:I = 0x2020180


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 78
    const v0, 0x2020180

    .line 79
    .local v0, imgRes:I
    const-string v3, "Unnamed"

    .line 84
    .local v3, titleTxt:Ljava/lang/String;
    :goto_0
    const v4, 0x204007b

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwNoitemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 86
    .local v1, noitemImg:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    const v4, 0x204007c

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwNoitemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    .local v2, noitemTitle:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 62
    .end local v0           #imgRes:I
    .end local v1           #noitemImg:Landroid/widget/ImageView;
    .end local v2           #noitemTitle:Landroid/widget/TextView;
    .end local v3           #titleTxt:Ljava/lang/String;
    :pswitch_0
    const v0, 0x202017f

    .line 63
    .restart local v0       #imgRes:I
    const-string v3, "Text based"

    .line 64
    .restart local v3       #titleTxt:Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0           #imgRes:I
    .end local v3           #titleTxt:Ljava/lang/String;
    :pswitch_1
    const v0, 0x202017d

    .line 67
    .restart local v0       #imgRes:I
    const-string v3, "Image based"

    .line 68
    .restart local v3       #titleTxt:Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v0           #imgRes:I
    .end local v3           #titleTxt:Ljava/lang/String;
    :pswitch_2
    const v0, 0x202017e

    .line 71
    .restart local v0       #imgRes:I
    const-string v3, "Multi-media based"

    .line 72
    .restart local v3       #titleTxt:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0           #imgRes:I
    .end local v3           #titleTxt:Ljava/lang/String;
    :pswitch_3
    const v0, 0x2020180

    .line 75
    .restart local v0       #imgRes:I
    const-string v3, "Unnamed"

    .line 76
    .restart local v3       #titleTxt:Ljava/lang/String;
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x203001c

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwNoitemView;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwNoitemView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, res:Landroid/os/Bundle;
    const/4 v1, 0x3

    .line 51
    .local v1, type:I
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwNoitemView;->init(I)V

    .line 53
    return-void
.end method
