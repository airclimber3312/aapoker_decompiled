.class Landroidx/media2/MediaPlayer2Impl$9;
.super Landroidx/media2/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setNextDataSources(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$dsds:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZLjava/util/List;)V
    .locals 0

    .line 419
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$9;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p4, p0, Landroidx/media2/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaPlayer2Impl$Task;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3

    .line 422
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/DataSourceDesc2;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DataSourceDesc2 in the source list cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$9;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setNextMultiple(Ljava/util/List;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->handleDataSourceError(Landroidx/media2/MediaPlayer2Impl$DataSourceError;)V

    return-void

    .line 423
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data source list cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
