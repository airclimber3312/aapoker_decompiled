.class public abstract Landroidx/media2/MediaPlaylistAgent;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;,
        Landroidx/media2/MediaPlaylistAgent$ShuffleMode;,
        Landroidx/media2/MediaPlaylistAgent$RepeatMode;
    }
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_GROUP:I = 0x3

.field public static final REPEAT_MODE_NONE:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final SHUFFLE_MODE_ALL:I = 0x1

.field public static final SHUFFLE_MODE_GROUP:I = 0x2

.field public static final SHUFFLE_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaPlaylistAgent"


# instance fields
.field private final mCallbacks:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlaylistAgent;->mLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlaylistAgent;->mCallbacks:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private getCallbacks()Landroidx/collection/SimpleArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 414
    iget-object v1, p0, Landroidx/media2/MediaPlaylistAgent;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaPlaylistAgent;->mCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 416
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract addPlaylistItem(ILandroidx/media2/MediaItem2;)V
.end method

.method public abstract getCurrentMediaItem()Landroidx/media2/MediaItem2;
.end method

.method public getMediaItem(Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;
    .locals 5

    if-eqz p1, :cond_3

    .line 398
    invoke-virtual {p0}, Landroidx/media2/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 402
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 403
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/MediaItem2;

    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {v3}, Landroidx/media2/MediaItem2;->getDataSourceDesc()Landroidx/media2/DataSourceDesc2;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 405
    invoke-virtual {v3}, Landroidx/media2/MediaItem2;->getDataSourceDesc()Landroidx/media2/DataSourceDesc2;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 396
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dsd shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getPlaylist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleMode()I
.end method

.method protected final notifyPlaylistChanged()V
    .locals 7

    .line 159
    invoke-direct {p0}, Landroidx/media2/MediaPlaylistAgent;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroidx/media2/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Landroidx/media2/MediaPlaylistAgent;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v2

    const/4 v3, 0x0

    .line 162
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 163
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    .line 164
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    .line 165
    new-instance v6, Landroidx/media2/MediaPlaylistAgent$1;

    invoke-direct {v6, p0, v4, v1, v2}, Landroidx/media2/MediaPlaylistAgent$1;-><init>(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyPlaylistMetadataChanged()V
    .locals 5

    .line 182
    invoke-direct {p0}, Landroidx/media2/MediaPlaylistAgent;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    .line 185
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 186
    new-instance v4, Landroidx/media2/MediaPlaylistAgent$2;

    invoke-direct {v4, p0, v2}, Landroidx/media2/MediaPlaylistAgent$2;-><init>(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyRepeatModeChanged()V
    .locals 5

    .line 224
    invoke-direct {p0}, Landroidx/media2/MediaPlaylistAgent;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 226
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    .line 227
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 228
    new-instance v4, Landroidx/media2/MediaPlaylistAgent$4;

    invoke-direct {v4, p0, v2}, Landroidx/media2/MediaPlaylistAgent$4;-><init>(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyShuffleModeChanged()V
    .locals 5

    .line 203
    invoke-direct {p0}, Landroidx/media2/MediaPlaylistAgent;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 204
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    .line 206
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 207
    new-instance v4, Landroidx/media2/MediaPlaylistAgent$3;

    invoke-direct {v4, p0, v2}, Landroidx/media2/MediaPlaylistAgent$3;-><init>(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerPlaylistEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 127
    iget-object v0, p0, Landroidx/media2/MediaPlaylistAgent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlaylistAgent;->mCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p1, "MediaPlaylistAgent"

    const-string p2, "callback is already added. Ignoring."

    .line 129
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-exit v0

    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaPlaylistAgent;->mCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p2, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract removePlaylistItem(Landroidx/media2/MediaItem2;)V
.end method

.method public abstract replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
.end method

.method public abstract setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroidx/media2/MediaMetadata2;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract skipToNextItem()V
.end method

.method public abstract skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
.end method

.method public abstract skipToPreviousItem()V
.end method

.method public final unregisterPlaylistEventCallback(Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Landroidx/media2/MediaPlaylistAgent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlaylistAgent;->mCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
.end method
