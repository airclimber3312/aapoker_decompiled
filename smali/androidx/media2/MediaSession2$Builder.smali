.class public final Landroidx/media2/MediaSession2$Builder;
.super Landroidx/media2/MediaSession2$BuilderBase;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/MediaSession2$BuilderBase<",
        "Landroidx/media2/MediaSession2;",
        "Landroidx/media2/MediaSession2$Builder;",
        "Landroidx/media2/MediaSession2$SessionCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1311
    invoke-direct {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/MediaSession2;
    .locals 9

    .line 1342
    iget-object v0, p0, Landroidx/media2/MediaSession2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 1343
    new-instance v0, Landroidx/media2/MediaSession2$MainHandlerExecutor;

    iget-object v1, p0, Landroidx/media2/MediaSession2$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/MediaSession2$MainHandlerExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/MediaSession2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1345
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSession2$Builder;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    if-nez v0, :cond_1

    .line 1346
    new-instance v0, Landroidx/media2/MediaSession2$Builder$1;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2$Builder$1;-><init>(Landroidx/media2/MediaSession2$Builder;)V

    iput-object v0, p0, Landroidx/media2/MediaSession2$Builder;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    .line 1348
    :cond_1
    new-instance v0, Landroidx/media2/MediaSession2;

    iget-object v2, p0, Landroidx/media2/MediaSession2$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media2/MediaSession2$Builder;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/MediaSession2$Builder;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    iget-object v5, p0, Landroidx/media2/MediaSession2$Builder;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    iget-object v6, p0, Landroidx/media2/MediaSession2$Builder;->mSessionActivity:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroidx/media2/MediaSession2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Landroidx/media2/MediaSession2$Builder;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/media2/MediaSession2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Landroidx/media2/MediaSession2$Builder;
    .locals 0

    .line 1331
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setId(Ljava/lang/String;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$Builder;

    return-object p1
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 1309
    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2$Builder;->setId(Ljava/lang/String;)Landroidx/media2/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaSession2$Builder;
    .locals 0

    .line 1316
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$Builder;

    return-object p1
.end method

.method public bridge synthetic setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 1309
    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2$Builder;->setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaSession2$Builder;
    .locals 0

    .line 1321
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$Builder;

    return-object p1
.end method

.method public bridge synthetic setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 1309
    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2$Builder;->setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaSession2$Builder;
    .locals 0

    .line 1326
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2$BuilderBase;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$Builder;

    return-object p1
.end method

.method public bridge synthetic setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 1309
    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$Builder;
    .locals 0

    .line 1337
    invoke-super {p0, p1, p2}, Landroidx/media2/MediaSession2$BuilderBase;->setSessionCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$BuilderBase;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$Builder;

    return-object p1
.end method

.method public bridge synthetic setSessionCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0

    .line 1309
    invoke-virtual {p0, p1, p2}, Landroidx/media2/MediaSession2$Builder;->setSessionCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method
