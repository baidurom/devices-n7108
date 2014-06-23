.class public Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 127
    #setter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$002(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)Landroid/content/Context;

    .line 128
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mItemNum:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$100(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x75

    const/4 v5, 0x1

    .line 145
    if-nez p2, :cond_0

    .line 146
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$000(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, i:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$200(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 149
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$200(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mColumnIndex:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$300(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 150
    .local v1, id:I
    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 151
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 158
    .end local v1           #id:I
    :goto_0
    return-object v0

    .end local v0           #i:Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 156
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #i:Landroid/widget/ImageView;
    goto :goto_0
.end method
