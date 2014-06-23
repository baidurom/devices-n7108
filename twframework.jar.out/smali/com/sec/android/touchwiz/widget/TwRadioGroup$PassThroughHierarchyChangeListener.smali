.class Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "TwRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 356
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 357
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 358
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v1, p2

    .line 360
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    #getter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mChildOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->access$700(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V

    .line 364
    .end local v0           #id:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 367
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 374
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 380
    :cond_1
    return-void
.end method
