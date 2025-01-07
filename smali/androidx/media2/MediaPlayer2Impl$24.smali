.class Landroidx/media2/MediaPlayer2Impl$24;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setPlaybackParamsInternal(Landroid/media/PlaybackParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$params:Landroid/media/PlaybackParams;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroid/media/PlaybackParams;)V
    .locals 0

    .line 1383
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$24;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$24;->val$params:Landroid/media/PlaybackParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    .line 1386
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$24;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$24;->val$params:Landroid/media/PlaybackParams;

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onPlaybackSpeedChanged(Landroidx/media2/MediaPlayerConnector;F)V

    return-void
.end method
