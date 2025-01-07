.class abstract Landroidx/media2/MediaSession2$BuilderBase;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/media2/MediaSession2;",
        "U:",
        "Landroidx/media2/MediaSession2$BuilderBase<",
        "TT;TU;TC;>;C:",
        "Landroidx/media2/MediaSession2$SessionCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCallback:Landroidx/media2/MediaSession2$SessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final mContext:Landroid/content/Context;

.field mId:Ljava/lang/String;

.field mPlayer:Landroidx/media2/MediaPlayerConnector;

.field mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

.field mSessionActivity:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1761
    iput-object p1, p0, Landroidx/media2/MediaSession2$BuilderBase;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 1763
    iput-object p1, p0, Landroidx/media2/MediaSession2$BuilderBase;->mId:Ljava/lang/String;

    return-void

    .line 1759
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method abstract build()Landroidx/media2/MediaSession2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method setId(Ljava/lang/String;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1827
    iput-object p1, p0, Landroidx/media2/MediaSession2$BuilderBase;->mId:Ljava/lang/String;

    return-object p0

    .line 1825
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPlayer(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaPlayerConnector;",
            ")TU;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1777
    iput-object p1, p0, Landroidx/media2/MediaSession2$BuilderBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    return-object p0

    .line 1775
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "player shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPlaylistAgent(Landroidx/media2/MediaPlaylistAgent;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaPlaylistAgent;",
            ")TU;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1797
    iput-object p1, p0, Landroidx/media2/MediaSession2$BuilderBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    return-object p0

    .line 1795
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "playlistAgent shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")TU;"
        }
    .end annotation

    .line 1809
    iput-object p1, p0, Landroidx/media2/MediaSession2$BuilderBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object p0
.end method

.method setSessionCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$BuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;)TU;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1845
    iput-object p1, p0, Landroidx/media2/MediaSession2$BuilderBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1846
    iput-object p2, p0, Landroidx/media2/MediaSession2$BuilderBase;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    return-object p0

    .line 1843
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1840
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
