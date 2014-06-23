.class public Lcom/sec/android/touchwiz/widget/TwTabActivity;
.super Landroid/app/ActivityGroup;
.source "TwTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    .line 42
    return-void
.end method

.method private ensureTwTabHost()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-nez v0, :cond_0

    .line 122
    const v0, 0x2030008

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->setContentView(I)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->ensureTwTabHost()V

    .line 145
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, tabView:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 110
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwTabHost;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 112
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TwTabHost whose id attribute is \'android.R.id.TwTabHost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 118
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->ensureTwTabHost()V

    .line 87
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 90
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->ensureTwTabHost()V

    .line 68
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 61
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    .line 62
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTabActivity;->mDefaultTabIndex:I

    .line 52
    return-void
.end method
