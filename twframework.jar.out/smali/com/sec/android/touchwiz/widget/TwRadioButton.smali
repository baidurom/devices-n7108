.class public Lcom/sec/android/touchwiz/widget/TwRadioButton;
.super Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
.source "TwRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const v0, 0x2010001

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public toggle()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->toggle()V

    .line 77
    :cond_0
    return-void
.end method
