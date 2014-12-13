.class public Lcom/android/internal/widget/ActionBarView$BaiduInjector;
.super Ljava/lang/Object;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field static final DBG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOffset(Lcom/android/internal/widget/ActionBarView$HomeView;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    .local v0, context:Landroid/content/Context;
    const/high16 v1, 0x40c0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setmUpWidth(I)V

    .line 236
    return-void
.end method

.method public static reloadHomeIcon(Lcom/android/internal/widget/ActionBarView;)V
    .locals 6
    .parameter "actionBarView"

    .prologue
    const/4 v5, 0x0

    .line 167
    #getter for: Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v3

    if-eqz v3, :cond_4

    #getter for: Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    #getter for: Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mUseCustomIcon:Z

    if-nez v3, :cond_4

    .line 173
    #getter for: Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$iget-mContext-498a0a(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 174
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    #getter for: Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$iget-mContext-498a0a(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 176
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mUseActivityLogo:Z

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarView;->setmLogo(Landroid/graphics/drawable/Drawable;)V

    .line 178
    #getter for: Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$iget-mContext-498a0a(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 180
    :try_start_0
    #getter for: Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$iget-mContext-498a0a(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setmLogo(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 192
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setmLogo(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mUseActivityIcon:Z

    if-eqz v3, :cond_3

    .line 197
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarView;->setmIcon(Landroid/graphics/drawable/Drawable;)V

    .line 198
    #getter for: Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$iget-mContext-498a0a(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 200
    :try_start_1
    #getter for: Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$iget-mContext-498a0a(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setmIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    .line 212
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setmIcon(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    #getter for: Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 218
    #getter for: Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 227
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    :goto_2
    return-void

    .line 185
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActionBarView"

    const-string v4, "Activity component name not found!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 206
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActionBarView"

    const-string v4, "Activity component name not found!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 221
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 222
    #getter for: Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method static setUseActivityIcon(Lcom/android/internal/widget/ActionBarView;)V
    .locals 1
    .parameter "actionBarView"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUseActivityIcon:Z

    .line 163
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setUseActivityLogo(Lcom/android/internal/widget/ActionBarView;)V
    .locals 1
    .parameter "abv"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getmLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUseActivityLogo:Z

    .line 159
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUseCustomIcon(Lcom/android/internal/widget/ActionBarView;)V
    .locals 1
    .parameter "actionBarView"

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUseCustomIcon:Z

    .line 232
    return-void
.end method
