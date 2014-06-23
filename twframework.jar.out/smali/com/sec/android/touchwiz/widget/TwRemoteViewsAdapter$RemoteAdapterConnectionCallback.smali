.class public interface abstract Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
.super Ljava/lang/Object;
.source "TwRemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteAdapterConnectionCallback"
.end annotation


# virtual methods
.method public abstract deferNotifyDataSetChanged()V
.end method

.method public abstract onRemoteAdapterConnected()Z
.end method

.method public abstract onRemoteAdapterDisconnected()V
.end method
