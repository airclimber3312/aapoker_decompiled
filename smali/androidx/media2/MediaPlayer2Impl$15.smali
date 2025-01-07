.class Landroidx/media2/MediaPlayer2Impl$15;
.super Landroidx/media2/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setPlaybackParams(Landroidx/media2/PlaybackParams2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$params:Landroidx/media2/PlaybackParams2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZLandroidx/media2/PlaybackParams2;)V
    .locals 0

    .line 710
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$15;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p4, p0, Landroidx/media2/MediaPlayer2Impl$15;->val$params:Landroidx/media2/PlaybackParams2;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaPlayer2Impl$Task;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    .line 713
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$15;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$15;->val$params:Landroidx/media2/PlaybackParams2;

    invoke-virtual {v1}, Landroidx/media2/PlaybackParams2;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->setPlaybackParamsInternal(Landroid/media/PlaybackParams;)V

    return-void
.end method
