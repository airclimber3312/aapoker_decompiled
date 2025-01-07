.class public final Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;
.super Landroidx/media2/MediaSession2$BuilderBase;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/MediaSession2$BuilderBase<",
        "Landroidx/media2/MediaLibraryService2$MediaLibrarySession;",
        "Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;",
        "Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media2/MediaLibraryService2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {p0, p2, p3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->setSessionCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$BuilderBase;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
    .locals 9

    .line 257
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Landroidx/media2/MediaSession2$MainHandlerExecutor;

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/MediaSession2$MainHandlerExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 260
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder$1;

    invoke-direct {v0, p0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder$1;-><init>(Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;)V

    iput-object v0, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    .line 263
    :cond_1
    new-instance v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    iget-object v2, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    iget-object v5, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    iget-object v6, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mSessionActivity:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroidx/media2/MediaSession2;
    .locals 1

    .line 222
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->build()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 252
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setId(Ljava/lang/String;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p1
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->setId(Ljava/lang/String;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 237
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p1
.end method

.method public bridge synthetic setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 242
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p1
.end method

.method public bridge synthetic setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 0

    .line 247
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object p1
.end method

.method public bridge synthetic setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method
