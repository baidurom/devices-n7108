.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;
.super Landroid/os/Handler;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 973
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_0

    .line 975
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 976
    .local v2, objs:[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 977
    .local v1, lY:F
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 978
    .local v0, lIndex:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #calls: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->checkLangChange(FI)Z
    invoke-static {v3, v1, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;FI)Z

    .line 980
    .end local v0           #lIndex:I
    .end local v1           #lY:F
    .end local v2           #objs:[Ljava/lang/Object;
    :cond_0
    return-void
.end method
