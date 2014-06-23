.class public Lcom/sec/android/touchwiz/widget/TwBodyButton;
.super Landroid/widget/Button;
.source "TwBodyButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwBodyButton"

.field public static final TYPE_01:I = 0x0

.field public static final TYPE_02:I = 0x1

.field public static final TYPE_03:I = 0x2

.field private static mBodyButtonType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/touchwiz/widget/TwBodyButton;->mBodyButtonType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    sget-object v1, Ltouchwiz/R$styleable;->TwBodyButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwBodyButton;->mBodyButtonType:I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setClickable(Z)V

    .line 112
    sget v0, Lcom/sec/android/touchwiz/widget/TwBodyButton;->mBodyButtonType:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const v0, 0x20201c3

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setBackgroundResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2070025

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 118
    :pswitch_1
    const v0, 0x20201c4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2070026

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 122
    :pswitch_2
    const v0, 0x20201c5

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2070027

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getButtonType()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/sec/android/touchwiz/widget/TwBodyButton;->mBodyButtonType:I

    return v0
.end method

.method public setButtonType(I)V
    .locals 2
    .parameter "buttonType"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 143
    :pswitch_0
    const v0, 0x20201c3

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setBackgroundResource(I)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2070025

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/touchwiz/widget/TwBodyButton;->mBodyButtonType:I

    goto :goto_0

    .line 148
    :pswitch_1
    const v0, 0x20201c4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setBackgroundResource(I)V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2070026

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 150
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/touchwiz/widget/TwBodyButton;->mBodyButtonType:I

    goto :goto_0

    .line 153
    :pswitch_2
    const v0, 0x20201c5

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setBackgroundResource(I)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2070027

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBodyButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 155
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/touchwiz/widget/TwBodyButton;->mBodyButtonType:I

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
