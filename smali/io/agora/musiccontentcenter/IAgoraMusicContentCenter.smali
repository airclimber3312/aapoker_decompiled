.class public abstract Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/musiccontentcenter/IAgoraMusicContentCenter$MusicCacheStatusType;,
        Lio/agora/musiccontentcenter/IAgoraMusicContentCenter$MusicContentCenterStateReason;,
        Lio/agora/musiccontentcenter/IAgoraMusicContentCenter$PreloadState;
    }
.end annotation


# static fields
.field private static mInstance:Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create(Lio/agora/rtc2/RtcEngine;)Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcEngine"
        }
    .end annotation

    const-class v0, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->mInstance:Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;

    if-nez v1, :cond_0

    new-instance v1, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;

    invoke-direct {v1, p0}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;-><init>(Lio/agora/rtc2/RtcEngine;)V

    sput-object v1, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->mInstance:Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;

    :cond_0
    sget-object p0, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->mInstance:Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->mInstance:Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->doDestroy()V

    const/4 v1, 0x0

    sput-object v1, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->mInstance:Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract createMusicPlayer()Lio/agora/musiccontentcenter/IAgoraMusicPlayer;
.end method

.method public abstract destroyMusicPlayer(Lio/agora/musiccontentcenter/IAgoraMusicPlayer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation
.end method

.method protected abstract doDestroy()V
.end method

.method public abstract getCaches()[Lio/agora/musiccontentcenter/MusicCacheInfo;
.end method

.method public abstract getInternalSongCode(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songCode",
            "jsonOption"
        }
    .end annotation
.end method

.method public abstract getLyric(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songCode",
            "lyricType"
        }
    .end annotation
.end method

.method public abstract getMusicCharts()Ljava/lang/String;
.end method

.method public getMusicCollectionByMusicChartId(III)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "musicChartId",
            "page",
            "pageSize"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->getMusicCollectionByMusicChartId(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getMusicCollectionByMusicChartId(IIILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "musicChartId",
            "page",
            "pageSize",
            "jsonOption"
        }
    .end annotation
.end method

.method public abstract getSongSimpleInfo(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation
.end method

.method public abstract initialize(Lio/agora/musiccontentcenter/MusicContentCenterConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation
.end method

.method public abstract isPreloaded(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation
.end method

.method public abstract preload(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songCode",
            "jsonOption"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract preload(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation
.end method

.method public abstract registerEventHandler(Lio/agora/musiccontentcenter/IMusicContentCenterEventHandler;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation
.end method

.method public abstract removeCache(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation
.end method

.method public abstract renewToken(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method

.method public searchMusic(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyword",
            "page",
            "pageSize"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;->searchMusic(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract searchMusic(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyword",
            "page",
            "pageSize",
            "jsonOption"
        }
    .end annotation
.end method

.method public abstract unregisterEventHandler()I
.end method
