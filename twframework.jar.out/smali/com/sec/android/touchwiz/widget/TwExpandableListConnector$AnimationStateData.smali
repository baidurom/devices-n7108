.class Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationStateData"
.end annotation


# static fields
.field static final ANIMATION_ABORTED:I = 0x4

.field static final ANIMATION_ABORT_TRIGGERED:I = 0x3

.field static final ANIMATION_ADDED:I = 0x7

.field static final ANIMATION_FINISHED:I = 0x2

.field static final ANIMATION_INVALID:I = -0x1

.field static final ANIMATION_IN_PROGRESS:I = 0x1

.field static final ANIMATION_POST_SCROLL:I = 0x6

.field static final ANIMATION_PRE_SCROLL:I = 0x5

.field static final ANIMATION_TRIGGERED:I = 0x0

.field static final ANIMATION_TYPE_COLLAPSE:I = 0x1

.field static final ANIMATION_TYPE_EXPAND:I = 0x0

.field static final ANIMATION_TYPE_INVALID:I = -0x1


# instance fields
.field fullyExpandedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field initiallyFullyExpandedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field public isExpandOrCollapseAll:Z

.field public isIndicatorAnimationOver:Z

.field public isItemAnimationOver:Z

.field public isTranslationOver:Z

.field public mAnimationState:I

.field public mAnimationType:I

.field public mCollapsingGroup:I

.field public mExpandingGroup:I

.field public mFirstItem:I

.field public mLastItem:I

.field public mNumberOfAnimationItems:I

.field public mNumberOfItems:I

.field public mVisibleGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2203
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2151
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2156
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2157
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2191
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2197
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2199
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2201
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2204
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2205
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 2206
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    .line 2207
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 2208
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2209
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mFirstItem:I

    .line 2210
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2211
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2212
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2213
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2214
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2216
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2218
    :cond_0
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2220
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2221
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2222
    :cond_1
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2224
    return-void
.end method


# virtual methods
.method public finishAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2260
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2261
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 2262
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    .line 2263
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 2264
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2265
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mFirstItem:I

    .line 2266
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2267
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2268
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2269
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2270
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2272
    :cond_0
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2273
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2274
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2275
    :cond_1
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2277
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2278
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2279
    :cond_2
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2281
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->notifyDataSetChanged()V

    .line 2282
    return-void
.end method

.method public getCurrentAnimationState()I
    .locals 1

    .prologue
    .line 2285
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2230
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationState:I

    .line 2231
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mAnimationType:I

    .line 2232
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mExpandingGroup:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mCollapsingGroup:I

    .line 2233
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfItems:I

    .line 2234
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mNumberOfAnimationItems:I

    .line 2235
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mLastItem:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mFirstItem:I

    .line 2236
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 2237
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 2238
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    .line 2239
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    .line 2240
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2242
    :cond_0
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->mVisibleGroups:Ljava/util/ArrayList;

    .line 2243
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2245
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->fullyExpandedGroups:Ljava/util/ArrayList;

    .line 2247
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2248
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2249
    :cond_2
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    .line 2251
    return-void
.end method
