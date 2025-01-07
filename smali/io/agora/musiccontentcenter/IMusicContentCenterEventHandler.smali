.class public interface abstract Lio/agora/musiccontentcenter/IMusicContentCenterEventHandler;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onLyricResult(Ljava/lang/String;JLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "songCode",
            "lyricUrl",
            "reason"
        }
    .end annotation
.end method

.method public abstract onMusicChartsResult(Ljava/lang/String;[Lio/agora/musiccontentcenter/MusicChartInfo;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "list",
            "reason"
        }
    .end annotation
.end method

.method public abstract onMusicCollectionResult(Ljava/lang/String;III[Lio/agora/musiccontentcenter/Music;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "page",
            "pageSize",
            "total",
            "list",
            "reason"
        }
    .end annotation
.end method

.method public abstract onPreLoadEvent(Ljava/lang/String;JILjava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "songCode",
            "percent",
            "lyricUrl",
            "state",
            "reason"
        }
    .end annotation
.end method

.method public abstract onSongSimpleInfoResult(Ljava/lang/String;JLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "songCode",
            "simpleInfo",
            "reason"
        }
    .end annotation
.end method
