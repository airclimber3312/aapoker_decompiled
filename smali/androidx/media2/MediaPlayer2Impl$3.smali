.class Landroidx/media2/MediaPlayer2Impl$3;
.super Landroidx/media2/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZ)V
    .locals 0

    .line 252
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$3;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaPlayer2Impl$Task;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$3;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAsync()V

    return-void
.end method
