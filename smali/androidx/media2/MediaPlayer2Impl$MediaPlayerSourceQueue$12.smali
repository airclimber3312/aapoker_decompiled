.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;I)V
    .locals 0

    .line 2559
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iput p3, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 3

    .line 2562
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    .line 2563
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    iget v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;->val$state:I

    invoke-virtual {p1, v1, v0, v2}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onBufferingStateChanged(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;I)V

    return-void
.end method
