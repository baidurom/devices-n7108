.class public Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwSweepActionListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;
    }
.end annotation


# static fields
.field private static final CLOSE_SWEEP_ACTION_BAR_DELAY_TIME:J = 0x190L

.field private static final CONTEXT_URGENT_AUTO_CLOSE_ANIMATION_DURATION:I = 0x190

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x258

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final ITEMS_UNCLICKABLE_DURATION:I = 0x190

.field private static final SWEEP_ADJUSTMENT_MAX_VALUE:I = 0x23a

.field private static final SWEEP_FIRE_THRESHOLD_VALUE:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwSweepActionListView"

.field private static final VELOCITY_UNITS:I = 0x1f4


# instance fields
.field private final DEBUGABLE:Z

.field private final DEBUGABLE_COSINE_VALUE:Z

.field private SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

.field private actionViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;",
            ">;"
        }
    .end annotation
.end field

.field private bActionUp:Z

.field private bFlickV:Z

.field private bKeyPressed:Z

.field private bKeyReleased:Z

.field private bTouchEvent:Z

.field private curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

.field private curIndex:I

.field private decorInit:Z

.field private isSweep:Z

.field private listTop:I

.field private mActionUpX:F

.field private mBlockTouchEvents:Z

.field private mContext:Landroid/content/Context;

.field mDecorLayout:Landroid/widget/FrameLayout;

.field private mFling:Z

.field private mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepDirection:I

.field private mSweepLeftDistance:F

.field private mSweepPrevPosX:F

.field private mSweepPrevPosY:F

.field private mSweepRightDistance:F

.field private mTopPositionSave:I

.field private mTouchPointX:F

.field private mTouchPointY:F

.field private mTouchSlop:I

.field private mVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field previousMoveDistanceX:F

.field previousMoveDistanceY:F

.field private sweepContainerView:Landroid/widget/RelativeLayout;

.field private tempRect:Landroid/graphics/Rect;

.field private transformation:Landroid/view/animation/Transformation;

.field private values:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 161
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "c"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE:Z

    .line 58
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE_COSINE_VALUE:Z

    .line 90
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 92
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 94
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    .line 98
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    .line 100
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    .line 108
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 117
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 123
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 125
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    .line 133
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 142
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 147
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 148
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 149
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 150
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 151
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 152
    const v1, 0x3e4ccccd

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    .line 168
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    .line 169
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 171
    .local v0, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    .line 173
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 174
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 177
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDrawSelectorOnTop(Z)V

    .line 178
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z
    .locals 1
    .parameter "actionView"
    .parameter "animation"

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 337
    const/4 v0, 0x2

    iput v0, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 339
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 341
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSweepContainerView(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 190
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 192
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 205
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private decorViewInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 396
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 398
    .local v0, rocation:[I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLocationInWindow([I)V

    .line 400
    aget v1, v0, v3

    .line 402
    .local v1, top:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 404
    aget v2, v0, v3

    sub-int v2, v1, v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 406
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 408
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 410
    return-void
.end method

.method private getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 4
    .parameter "index"

    .prologue
    .line 377
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 379
    .local v2, len:I
    const/4 v0, 0x0

    .line 381
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 383
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 385
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    if-ne v3, p1, :cond_0

    move-object v3, v0

    .line 390
    :goto_1
    return-object v3

    .line 381
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCurrentListItem(I)Landroid/view/View;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v0, p1, v1

    .line 1345
    .local v0, lActChildPos:I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 2
    .parameter "c"
    .parameter "actionBarView"
    .parameter "position"

    .prologue
    .line 355
    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v1, :cond_2

    .line 357
    :cond_0
    const/4 v0, 0x0

    .line 371
    :cond_1
    :goto_0
    return-object v0

    .line 359
    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 361
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-nez v0, :cond_1

    .line 365
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V

    .line 369
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getDecorViewLayerType(Landroid/widget/FrameLayout;)I
    .locals 1
    .parameter "decorlayout"

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v0

    return v0
.end method

.method private initSweepDistanceVariables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x4080

    .line 1201
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 1202
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 1203
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 1204
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 1205
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 1206
    return-void
.end method

.method private isListScrollable()Z
    .locals 2

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeTempRect()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 415
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 416
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 417
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 419
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 426
    :cond_0
    return-void
.end method

.method private setItemsUnclickableForShortDuration()V
    .locals 3

    .prologue
    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 475
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    return-void
.end method

.method private setPressedFalse()V
    .locals 4

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v2

    .line 865
    .local v2, num:I
    const/4 v0, 0x0

    .line 867
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 869
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 873
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 867
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    :cond_1
    return-void
.end method

.method private sweepPatternIsIndeedFling(F)Z
    .locals 7
    .parameter "velocity"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1232
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    cmpg-float v4, p1, v6

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    .line 1250
    :cond_1
    :goto_0
    return v2

    .line 1237
    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v0, v4, 0x2

    .line 1238
    .local v0, minimalDistanceThreshold:I
    cmpl-float v4, p1, v6

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    :cond_3
    cmpg-float v4, p1, v6

    if-gez v4, :cond_5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    :cond_4
    move v2, v3

    .line 1240
    goto :goto_0

    .line 1244
    :cond_5
    cmpl-float v4, p1, v6

    if-lez v4, :cond_6

    .line 1245
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    div-float v1, v4, v5

    .line 1248
    .local v1, oppositeDirectionDistRatio:F
    :goto_1
    const-string v4, "SweepFling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oppositeDirectionDistRatio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 1247
    .end local v1           #oppositeDirectionDistRatio:F
    :cond_6
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    div-float v1, v4, v5

    .restart local v1       #oppositeDirectionDistRatio:F
    goto :goto_1
.end method

.method private trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    .line 1209
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1210
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1212
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-nez v0, :cond_0

    .line 1213
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 1215
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 1216
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 1225
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 1226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 1227
    return-void

    .line 1217
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1218
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-ne v0, v3, :cond_3

    .line 1219
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 1221
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 1222
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    goto :goto_0
.end method


# virtual methods
.method public allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F
    .locals 3
    .parameter "sabi"
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 884
    move v0, p2

    .line 886
    .local v0, allowDistance:F
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v2, :cond_0

    .line 887
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    .line 888
    :cond_0
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v2, :cond_1

    .line 889
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    .line 891
    :cond_1
    return v0
.end method

.method public closeAllActionBar(Z)Z
    .locals 6
    .parameter "animated"

    .prologue
    .line 259
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 262
    .local v0, cloneArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 263
    .local v2, len:I
    const/4 v3, 0x0

    .line 265
    .local v3, retVal:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    const/4 v3, 0x1

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    .line 273
    const-string v4, "TwSweepActionListView"

    const-string v5, "closeAllActionBar call  sweepActionViewRemove"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    .line 275
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 276
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 284
    :cond_2
    return v3
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "arg0"

    .prologue
    const/4 v0, 0x0

    .line 1003
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 1006
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 1008
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1011
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1013
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 638
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 652
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-nez v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 656
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-eqz v0, :cond_2

    .line 657
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 661
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-eqz v0, :cond_3

    .line 662
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 664
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 666
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 558
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 581
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 568
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 558
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawTime"

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1257
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1258
    .local v2, index:I
    const/4 v3, 0x0

    .line 1260
    .local v3, mTransX:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 1262
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    .line 1264
    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1266
    .local v1, anim:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 1268
    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v4, :pswitch_data_0

    .line 1298
    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #anim:Landroid/view/animation/Animation;
    .end local v2           #index:I
    .end local v3           #mTransX:F
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    return v4

    .line 1272
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .restart local v1       #anim:Landroid/view/animation/Animation;
    .restart local v2       #index:I
    .restart local v3       #mTransX:F
    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setTranslate()V

    goto :goto_0

    .line 1278
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1280
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1282
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    neg-float v3, v4

    .line 1284
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V
    invoke-static {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 1286
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 1287
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate()V

    goto :goto_0

    .line 1268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method protected handleDataChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 533
    const-string v0, "TwSweepActionListView"

    const-string v1, "[handleDataChanged] IN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 538
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 547
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 552
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->handleDataChanged()V

    .line 553
    return-void
.end method

.method public isActionBarOpen()Z
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 242
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 244
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 246
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_0

    .line 247
    const/4 v3, 0x1

    .line 251
    :goto_1
    return v3

    .line 242
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 523
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 526
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 528
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 951
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 953
    if-nez p1, :cond_1

    .line 960
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 964
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 967
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    .line 969
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 971
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestLayout()V

    .line 998
    :goto_0
    return-void

    .line 980
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x82

    if-ne p2, v0, :cond_3

    .line 982
    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 994
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 996
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestLayout()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 690
    .local v0, action:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_0

    .line 691
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 693
    :cond_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 695
    packed-switch v0, :pswitch_data_0

    .line 856
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1
    return v9

    .line 699
    :pswitch_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 701
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v9, :cond_2

    .line 702
    const/4 v9, 0x1

    goto :goto_1

    .line 704
    :cond_2
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v9, :cond_3

    .line 705
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 707
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    .line 711
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    goto :goto_0

    .line 720
    :pswitch_1
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 724
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_6

    .line 726
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_5

    .line 728
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v9, :cond_4

    .line 730
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto :goto_0

    .line 735
    :cond_4
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    sub-float/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v8

    .line 740
    .local v8, sweepdistance:F
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 741
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    .line 800
    .end local v8           #sweepdistance:F
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 801
    const/4 v9, 0x1

    goto :goto_1

    .line 746
    :cond_6
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-nez v9, :cond_1

    .line 749
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 750
    .local v3, distanceX:F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 751
    .local v4, distanceY:F
    mul-float v9, v3, v3

    mul-float v10, v4, v4

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 752
    .local v6, sqrtValue:D
    float-to-double v9, v3

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 758
    .local v1, cosineValue:D
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_c

    .line 759
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_b

    .line 760
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v9, v1

    double-to-int v9, v9

    const/16 v10, 0x23a

    if-ge v9, v10, :cond_b

    .line 765
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-eqz v9, :cond_b

    .line 766
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 767
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 768
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v5

    .line 770
    .local v5, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v5, :cond_7

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-eqz v9, :cond_7

    .line 771
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v9, v5, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 773
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-nez v9, :cond_8

    .line 774
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 775
    :cond_8
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 776
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setPressed(Z)V

    .line 778
    :cond_9
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 780
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 782
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v9, :cond_a

    .line 783
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    .line 784
    :cond_a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 796
    .end local v5           #sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_b
    :goto_3
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    .line 797
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    goto/16 :goto_2

    .line 792
    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto :goto_3

    .line 811
    .end local v1           #cosineValue:D
    .end local v3           #distanceX:F
    .end local v4           #distanceY:F
    .end local v6           #sqrtValue:D
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 815
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_e

    .line 817
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 819
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    .line 821
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepPatternIsIndeedFling(F)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 822
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 824
    :cond_d
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 826
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 830
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 832
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_f

    .line 834
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 835
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 839
    :cond_f
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_10

    .line 841
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 842
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 846
    :cond_10
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->initSweepDistanceVariables()V

    .line 848
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 849
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 850
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    goto/16 :goto_0

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 589
    sparse-switch p1, :sswitch_data_0

    .line 601
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 596
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 611
    sparse-switch p1, :sswitch_data_0

    .line 626
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 618
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 620
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-eqz v0, :cond_0

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    .line 611
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    .line 1307
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 1018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1020
    .local v0, action:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_0

    .line 1021
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1023
    :cond_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1025
    packed-switch v0, :pswitch_data_0

    .line 1192
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1
    return v9

    .line 1029
    :pswitch_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 1034
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v9, :cond_2

    .line 1035
    const/4 v9, 0x1

    goto :goto_1

    .line 1037
    :cond_2
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v9, :cond_3

    .line 1038
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 1040
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    .line 1044
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    goto :goto_0

    .line 1050
    :pswitch_1
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 1051
    const/4 v9, 0x0

    goto :goto_1

    .line 1054
    :cond_4
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_7

    .line 1056
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_6

    .line 1058
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v9, :cond_5

    .line 1060
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto :goto_0

    .line 1065
    :cond_5
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    sub-float/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v8

    .line 1070
    .local v8, sweepdistance:F
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 1071
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    .line 1133
    .end local v8           #sweepdistance:F
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1134
    const/4 v9, 0x1

    goto :goto_1

    .line 1075
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isListScrollable()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_8
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-nez v9, :cond_1

    .line 1078
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1079
    .local v3, distanceX:F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1080
    .local v4, distanceY:F
    mul-float v9, v3, v3

    mul-float v10, v4, v4

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1081
    .local v6, sqrtValue:D
    float-to-double v9, v3

    div-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 1089
    .local v1, cosineValue:D
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_e

    .line 1091
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_d

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    if-nez v9, :cond_d

    .line 1093
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v9, v1

    double-to-int v9, v9

    const/16 v10, 0x23a

    if-ge v9, v10, :cond_d

    .line 1097
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-eqz v9, :cond_d

    .line 1099
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 1100
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 1102
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v5

    .line 1105
    .local v5, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v5, :cond_9

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-eqz v9, :cond_9

    .line 1106
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v9, v5, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 1109
    :cond_9
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-nez v9, :cond_a

    .line 1110
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1112
    :cond_a
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1113
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setPressed(Z)V

    .line 1115
    :cond_b
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 1117
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 1119
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v9, :cond_c

    .line 1120
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    .line 1121
    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 1129
    .end local v5           #sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_d
    :goto_3
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    .line 1130
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    goto/16 :goto_2

    .line 1126
    :cond_e
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto :goto_3

    .line 1143
    .end local v1           #cosineValue:D
    .end local v3           #distanceX:F
    .end local v4           #distanceY:F
    .end local v6           #sqrtValue:D
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 1144
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressed(Z)V

    .line 1145
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    .line 1148
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1150
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_10

    .line 1152
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1154
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    .line 1156
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_f

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepPatternIsIndeedFling(F)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1157
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 1159
    :cond_f
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v10, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 1161
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 1166
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 1168
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_11

    .line 1170
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1171
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1175
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->initSweepDistanceVariables()V

    .line 1177
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 1178
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 1179
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 1181
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_1

    .line 1183
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 1184
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1025
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasWindowFocus"

    .prologue
    const/4 v6, 0x0

    .line 901
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v4, 0x190

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 916
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v3, :cond_0

    .line 919
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 922
    :cond_0
    if-eqz p1, :cond_2

    .line 925
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 926
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 930
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 932
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 934
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 936
    .restart local v0       #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_1

    .line 937
    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 932
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 942
    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    .line 944
    return-void
.end method

.method public openActionBar(II)Z
    .locals 5
    .parameter "position"
    .parameter "flickDirection"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 291
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 293
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    .line 296
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLastVisiblePosition()I

    move-result v3

    if-le p1, v3, :cond_3

    :cond_2
    move v1, v2

    .line 329
    :goto_0
    return v1

    .line 302
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v0

    .line 304
    .local v0, sabi:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v0, :cond_4

    .line 305
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 306
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v3, :cond_5

    .line 308
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 309
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iput v1, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 311
    packed-switch p2, :pswitch_data_0

    .line 323
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    goto :goto_0

    .line 314
    :pswitch_0
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    .line 318
    :pswitch_1
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    :cond_5
    move v1, v2

    .line 329
    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected parentPerformItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 517
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 495
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 499
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    .line 501
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 503
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 512
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public resetDecorInit()V
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 1762
    return-void
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    .line 227
    return-void
.end method

.method public setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 231
    return-void
.end method

.method shouldShowSelector()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-nez v4, :cond_1

    .line 432
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldShowSelector()Z

    move-result v1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    const/4 v1, 0x1

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 438
    const/4 v1, 0x0

    .line 440
    .local v1, curActionBarIsPressed:Z
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v4, :cond_3

    move v1, v3

    .line 441
    goto :goto_0

    .line 443
    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 445
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_4

    move v1, v3

    .line 446
    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v1

    .line 450
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 452
    .local v0, actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onListShouldDrawSelector(IFI)Z

    move-result v1

    goto :goto_0

    .end local v0           #actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1           #curActionBarIsPressed:Z
    .end local v2           #view:Landroid/view/View;
    :cond_5
    move v1, v3

    .line 459
    goto :goto_0
.end method
