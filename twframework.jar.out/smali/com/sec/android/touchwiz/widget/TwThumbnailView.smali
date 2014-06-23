.class public Lcom/sec/android/touchwiz/widget/TwThumbnailView;
.super Landroid/widget/GridView;
.source "TwThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwThumbnailView$1;,
        Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;,
        Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;,
        Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewMode;,
        Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;
    }
.end annotation


# static fields
.field private static final sThumbnailViewTypeArray:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;


# instance fields
.field private mColumnIndex:I

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mItemNum:I

.field private mSelectMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->IMAGE_ONLY:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->IMAGE_WITH_CAPCTION:Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->sThumbnailViewTypeArray:[Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    .line 53
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->setPadding(IIII)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x5

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    .line 59
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->setPadding(IIII)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x5

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    .line 65
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->setPadding(IIII)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mItemNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mColumnIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mSelectMode:Z

    return v0
.end method


# virtual methods
.method public setColumnIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mColumnIndex:I

    .line 99
    return-void
.end method

.method public setCusor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mCursor:Landroid/database/Cursor;

    .line 94
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mItemNum:I

    .line 95
    return-void
.end method

.method public setThumbnailView(Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;Landroid/database/Cursor;IZ)V
    .locals 2
    .parameter "type"
    .parameter "c"
    .parameter "index"
    .parameter "selectMode"

    .prologue
    .line 71
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mCursor:Landroid/database/Cursor;

    .line 72
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mItemNum:I

    .line 73
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mColumnIndex:I

    .line 74
    iput-boolean p4, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mSelectMode:Z

    .line 76
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$1;->$SwitchMap$com$sec$android$touchwiz$widget$TwThumbnailView$ThumbnailViewType:[I

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ThumbnailViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;-><init>(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    :goto_0
    return-void

    .line 78
    :pswitch_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;-><init>(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 82
    :pswitch_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;-><init>(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
