.class Landroidx/media2/MediaPlayer2Impl$8;
.super Landroidx/media2/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setNextDataSource(Landroidx/media2/DataSourceDesc2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$dsd:Landroidx/media2/DataSourceDesc2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZLandroidx/media2/DataSourceDesc2;)V
    .locals 0

    .line 401
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$8;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p4, p0, Landroidx/media2/MediaPlayer2Impl$8;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaPlayer2Impl$Task;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3

    .line 404
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$8;->val$dsd:Landroidx/media2/DataSourceDesc2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "the DataSourceDesc2 cannot be null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 405
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$8;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$8;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v1, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setNext(Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->handleDataSourceError(Landroidx/media2/MediaPlayer2Impl$DataSourceError;)V

    return-void
.end method
