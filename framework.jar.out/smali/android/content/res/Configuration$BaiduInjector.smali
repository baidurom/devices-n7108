.class Landroid/content/res/Configuration$BaiduInjector;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendToString(Landroid/content/res/Configuration;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "cfg"
    .parameter "sb"

    .prologue
    .line 192
    const-string v0, " themeChanged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    return-void
.end method

.method static compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 3
    .parameter "left"
    .parameter "right"
    .parameter "n"

    .prologue
    .line 218
    if-eqz p2, :cond_0

    move v0, p2

    .line 220
    .end local p2
    .local v0, n:I
    :goto_0
    return v0

    .line 219
    .end local v0           #n:I
    .restart local p2
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    sub-int p2, v1, v2

    move v0, p2

    .line 220
    .end local p2
    .restart local v0       #n:I
    goto :goto_0
.end method

.method static hashCode(Landroid/content/res/Configuration;I)I
    .locals 2
    .parameter "cfg"
    .parameter "result"

    .prologue
    .line 224
    mul-int/lit8 v0, p1, 0x1f

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int/2addr v0, v1

    return v0
.end method

.method static multiTheme_dealThemeChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 3
    .parameter "cfg"
    .parameter "delta"
    .parameter "orig"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 201
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 202
    const/high16 v0, -0x8000

    .line 204
    :cond_0
    or-int v1, v0, p2

    return v1
.end method

.method static multiTheme_dealThemeChange2(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 3
    .parameter "cfg"
    .parameter "delta"
    .parameter "orig"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 212
    const/high16 v0, -0x8000

    .line 214
    :cond_0
    or-int v1, v0, p2

    return v1
.end method

.method static readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .parameter "configuration"
    .parameter "source"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 228
    return-void
.end method

.method static setThemeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "cfg"
    .parameter "that"

    .prologue
    .line 189
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 190
    return-void
.end method

.method static setThemeChangedToDefault(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "cfg"

    .prologue
    .line 186
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 187
    return-void
.end method

.method static writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .parameter "cfg"
    .parameter "dest"

    .prologue
    .line 183
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
