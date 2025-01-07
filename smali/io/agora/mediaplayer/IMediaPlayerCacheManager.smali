.class public interface abstract Lio/agora/mediaplayer/IMediaPlayerCacheManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enableAutoRemoveCache(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract getCacheDir()Ljava/lang/String;
.end method

.method public abstract getCacheFileCount()I
.end method

.method public abstract getMaxCacheFileCount()I
.end method

.method public abstract getMaxCacheFileSize()J
.end method

.method public abstract removeAllCaches()I
.end method

.method public abstract removeCacheByUri(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract removeOldCache()I
.end method

.method public abstract setCacheDir(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract setMaxCacheFileCount(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation
.end method

.method public abstract setMaxCacheFileSize(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation
.end method
