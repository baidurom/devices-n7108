.class public final enum Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;
.super Ljava/lang/Enum;
.source "TwThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbnailViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

.field public static final enum IMAGE_ONLY:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

.field public static final enum IMAGE_WITH_CAPCTION:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    const-string v1, "IMAGE_ONLY"

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->IMAGE_ONLY:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    .line 108
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    const-string v1, "IMAGE_WITH_CAPCTION"

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->IMAGE_WITH_CAPCTION:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->IMAGE_ONLY:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->IMAGE_WITH_CAPCTION:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->nativeInt:I

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;
    .locals 1
    .parameter "name"

    .prologue
    .line 106
    const-class v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    invoke-virtual {v0}, [Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    return-object v0
.end method
