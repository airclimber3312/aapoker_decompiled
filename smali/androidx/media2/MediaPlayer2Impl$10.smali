.class Landroidx/media2/MediaPlayer2Impl$10;
.super Landroidx/media2/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->loopCurrent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$loop:Z


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZZ)V
    .locals 0

    .line 447
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$10;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-boolean p4, p0, Landroidx/media2/MediaPlayer2Impl$10;->val$loop:Z

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaPlayer2Impl$Task;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    .line 450
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$10;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-boolean v1, p0, Landroidx/media2/MediaPlayer2Impl$10;->val$loop:Z

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setLooping(Z)V

    return-void
.end method
