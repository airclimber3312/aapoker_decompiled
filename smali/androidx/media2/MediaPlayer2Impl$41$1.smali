.class Landroidx/media2/MediaPlayer2Impl$41$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$DrmEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$41;->onDrmInfo(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$DrmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$41;

.field final synthetic val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$41;Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 0

    .line 1704
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$41$1;->this$1:Landroidx/media2/MediaPlayer2Impl$41;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$41$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$DrmEventCallback;)V
    .locals 5

    .line 1707
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$41$1;->this$1:Landroidx/media2/MediaPlayer2Impl$41;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$41;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$41$1;->this$1:Landroidx/media2/MediaPlayer2Impl$41;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$41;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$DrmInfoImpl;

    iget-object v3, p0, Landroidx/media2/MediaPlayer2Impl$41$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    .line 1708
    invoke-virtual {v3}, Landroid/media/MediaPlayer$DrmInfo;->getPssh()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/MediaPlayer2Impl$41$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-virtual {v4}, Landroid/media/MediaPlayer$DrmInfo;->getSupportedSchemes()[Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/media2/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    .line 1707
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaPlayer2$DrmEventCallback;->onDrmInfo(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaPlayer2$DrmInfo;)V

    return-void
.end method
