.class Landroidx/media2/MediaSession2ImplBase$1;
.super Landroidx/media/VolumeProviderCompat;
.source "MediaSession2ImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->updatePlayer(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$remotePlayer:Landroidx/media2/BaseRemoteMediaPlayerConnector;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;IIILandroidx/media2/BaseRemoteMediaPlayerConnector;)V
    .locals 0

    .line 265
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$1;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p5, p0, Landroidx/media2/MediaSession2ImplBase$1;->val$remotePlayer:Landroidx/media2/BaseRemoteMediaPlayerConnector;

    invoke-direct {p0, p2, p3, p4}, Landroidx/media/VolumeProviderCompat;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$1;->val$remotePlayer:Landroidx/media2/BaseRemoteMediaPlayerConnector;

    invoke-virtual {v0, p1}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->adjustPlayerVolume(I)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$1;->val$remotePlayer:Landroidx/media2/BaseRemoteMediaPlayerConnector;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->setPlayerVolume(F)V

    return-void
.end method
