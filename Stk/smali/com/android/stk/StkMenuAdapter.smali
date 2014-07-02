.class public Lcom/android/stk/StkMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StkMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/telephony/cat/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mIcosSelfExplanatory:Z

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "icosSelfExplanatory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/Item;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    iput-boolean v0, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-boolean p3, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/stk/StkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/Item;

    .line 49
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    if-nez p2, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 57
    :cond_1
    const v3, 0x7f07000b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_2
    const v3, 0x7f07000a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .local v1, imageView:Landroid/widget/ImageView;
    iget-object v3, v2, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 61
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_0
    return-object p2

    .line 63
    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_3
    iget-object v3, v2, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 66
    .end local v1           #imageView:Landroid/widget/ImageView;
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
