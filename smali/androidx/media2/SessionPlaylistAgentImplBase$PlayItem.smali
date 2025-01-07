.class Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;
.super Ljava/lang/Object;
.source "SessionPlaylistAgentImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/SessionPlaylistAgentImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayItem"
.end annotation


# instance fields
.field public dsd:Landroidx/media2/DataSourceDesc2;

.field public mediaItem:Landroidx/media2/MediaItem2;

.field public shuffledIdx:I

.field final synthetic this$0:Landroidx/media2/SessionPlaylistAgentImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/SessionPlaylistAgentImplBase;I)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroidx/media2/SessionPlaylistAgentImplBase;ILandroidx/media2/DataSourceDesc2;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/SessionPlaylistAgentImplBase;ILandroidx/media2/DataSourceDesc2;)V
    .locals 1

    .line 108
    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    if-ltz p2, :cond_1

    .line 111
    iget-object v0, p1, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/MediaItem2;

    iput-object p2, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    if-nez p3, :cond_0

    .line 113
    iget-object p2, p1, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 114
    :try_start_0
    iget-object p3, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    invoke-virtual {p1, p3}, Landroidx/media2/SessionPlaylistAgentImplBase;->retrieveDataSourceDescLocked(Landroidx/media2/MediaItem2;)Landroidx/media2/DataSourceDesc2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroidx/media2/DataSourceDesc2;

    .line 115
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 117
    :cond_0
    iput-object p3, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroidx/media2/DataSourceDesc2;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method isValid()Z
    .locals 6

    .line 124
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object v0, v0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 127
    :cond_0
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 130
    :cond_1
    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroidx/media2/DataSourceDesc2;

    if-nez v3, :cond_2

    return v2

    .line 133
    :cond_2
    invoke-virtual {v0}, Landroidx/media2/MediaItem2;->getDataSourceDesc()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    .line 134
    invoke-virtual {v0}, Landroidx/media2/MediaItem2;->getDataSourceDesc()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 137
    :cond_3
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object v0, v0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    iget-object v4, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object v4, v4, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 139
    monitor-exit v0

    return v2

    .line 141
    :cond_4
    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    iget-object v4, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object v4, v4, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget v5, p0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 142
    monitor-exit v0

    return v2

    .line 144
    :cond_5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
