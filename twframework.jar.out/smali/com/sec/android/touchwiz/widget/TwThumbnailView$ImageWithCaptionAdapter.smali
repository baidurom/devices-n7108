.class public Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageWithCaptionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 166
    #setter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$002(Lcom/sec/android/touchwiz/widget/TwThumbnailView;Landroid/content/Context;)Landroid/content/Context;

    .line 167
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mItemNum:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$100(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 183
    if-nez p2, :cond_1

    .line 184
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$000(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 185
    .local v3, li:Landroid/view/LayoutInflater;
    const v5, 0x2030013

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->v:Landroid/view/View;

    .line 186
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->v:Landroid/view/View;

    const v6, 0x204005f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 187
    .local v4, tv:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->v:Landroid/view/View;

    const v6, 0x204005e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 189
    .local v2, iv:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$200(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 190
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$200(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mColumnIndex:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$300(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 191
    .local v1, id:I
    sget-object v5, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 192
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 193
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->v:Landroid/view/View;

    const v6, 0x2040060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 194
    .local v0, cb:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->this$0:Lcom/sec/android/touchwiz/widget/TwThumbnailView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwThumbnailView;->mSelectMode:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwThumbnailView;->access$400(Lcom/sec/android/touchwiz/widget/TwThumbnailView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 203
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #id:I
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v3           #li:Landroid/view/LayoutInflater;
    .end local v4           #tv:Landroid/widget/TextView;
    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->v:Landroid/view/View;

    new-instance v6, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter$1;

    invoke-direct {v6, p0}, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter$1;-><init>(Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->v:Landroid/view/View;

    return-object v5

    .line 197
    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v1       #id:I
    .restart local v2       #iv:Landroid/widget/ImageView;
    .restart local v3       #li:Landroid/view/LayoutInflater;
    .restart local v4       #tv:Landroid/widget/TextView;
    :cond_0
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 201
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #id:I
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v3           #li:Landroid/view/LayoutInflater;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwThumbnailView$ImageWithCaptionAdapter;->v:Landroid/view/View;

    goto :goto_0
.end method
