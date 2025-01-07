.class Landroidx/media2/MediaPlayer2Impl$29$2;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$29;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$29;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$29;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$29$2;->this$1:Landroidx/media2/MediaPlayer2Impl$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    .line 1503
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29$2;->this$1:Landroidx/media2/MediaPlayer2Impl$29;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$29$2;->this$1:Landroidx/media2/MediaPlayer2Impl$29;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$29;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onMediaPrepared(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;)V

    return-void
.end method
