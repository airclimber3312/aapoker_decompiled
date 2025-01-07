.class Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;
.super Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;
.source "SessionPlaylistAgentImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/SessionPlaylistAgentImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPlayerEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/SessionPlaylistAgentImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/SessionPlaylistAgentImplBase;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    invoke-direct {p0}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentDataSourceChanged(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;)V
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object v0, v0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    if-eq v1, p1, :cond_0

    .line 89
    monitor-exit v0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 91
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object p1, p1, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    iget-object p2, p1, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget p2, p2, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p2

    iput-object p2, p1, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 93
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;->this$0:Landroidx/media2/SessionPlaylistAgentImplBase;

    invoke-virtual {p1}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 95
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
