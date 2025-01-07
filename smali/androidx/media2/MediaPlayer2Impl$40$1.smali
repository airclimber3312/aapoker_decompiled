.class Landroidx/media2/MediaPlayer2Impl$40$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$40;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$40;

.field final synthetic val$data:Landroid/media/SubtitleData;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$40;Landroid/media/SubtitleData;)V
    .locals 0

    .line 1692
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$40$1;->this$1:Landroidx/media2/MediaPlayer2Impl$40;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$40$1;->val$data:Landroid/media/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 1695
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$40$1;->this$1:Landroidx/media2/MediaPlayer2Impl$40;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$40;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$40$1;->this$1:Landroidx/media2/MediaPlayer2Impl$40;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$40;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 1696
    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    new-instance v2, Landroidx/media2/SubtitleData2;

    iget-object v3, p0, Landroidx/media2/MediaPlayer2Impl$40$1;->val$data:Landroid/media/SubtitleData;

    invoke-direct {v2, v3}, Landroidx/media2/SubtitleData2;-><init>(Landroid/media/SubtitleData;)V

    .line 1695
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaPlayer2$EventCallback;->onSubtitleData(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;Landroidx/media2/SubtitleData2;)V

    return-void
.end method
