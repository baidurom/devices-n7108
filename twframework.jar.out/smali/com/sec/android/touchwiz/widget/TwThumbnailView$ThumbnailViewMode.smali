.class public final enum Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;
.super Ljava/lang/Enum;
.source "TwThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbnailViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

.field public static final enum NORMAL_MODE:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

.field public static final enum SELECT_MODE:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    const-string v1, "NORMAL_MODE"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->NORMAL_MODE:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    .line 117
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    const-string v1, "SELECT_MODE"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->SELECT_MODE:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->NORMAL_MODE:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->SELECT_MODE:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "ni"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->nativeInt:I

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    const-class v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    invoke-virtual {v0}, [Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;

    return-object v0
.end method
