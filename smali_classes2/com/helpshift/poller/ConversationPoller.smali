.class public Lcom/helpshift/poller/ConversationPoller;
.super Ljava/lang/Object;
.source "ConversationPoller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConvPolr"


# instance fields
.field private pollerController:Lcom/helpshift/poller/PollerController;

.field private userManager:Lcom/helpshift/user/UserManager;


# direct methods
.method public constructor <init>(Lcom/helpshift/poller/PollerController;Lcom/helpshift/user/UserManager;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/helpshift/poller/ConversationPoller;->pollerController:Lcom/helpshift/poller/PollerController;

    .line 19
    iput-object p2, p0, Lcom/helpshift/poller/ConversationPoller;->userManager:Lcom/helpshift/user/UserManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized startPoller()V
    .locals 5

    const-string v0, "Not starting poller, shouldPoll: "

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/poller/ConversationPoller;->userManager:Lcom/helpshift/user/UserManager;

    invoke-virtual {v1}, Lcom/helpshift/user/UserManager;->shouldPoll()Z

    move-result v1

    .line 25
    iget-object v2, p0, Lcom/helpshift/poller/ConversationPoller;->userManager:Lcom/helpshift/user/UserManager;

    invoke-virtual {v2}, Lcom/helpshift/user/UserManager;->isPushTokenSynced()Z

    move-result v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ConvPolr"

    const-string v1, "Starting poller."

    .line 31
    invoke-static {v0, v1}, Lcom/helpshift/log/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/helpshift/poller/ConversationPoller;->pollerController:Lcom/helpshift/poller/PollerController;

    invoke-virtual {v0}, Lcom/helpshift/poller/PollerController;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v3, "ConvPolr"

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  push synced: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/helpshift/log/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPoller()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ConvPolr"

    const-string v1, "Stopping poller."

    .line 36
    invoke-static {v0, v1}, Lcom/helpshift/log/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/helpshift/poller/ConversationPoller;->pollerController:Lcom/helpshift/poller/PollerController;

    invoke-virtual {v0}, Lcom/helpshift/poller/PollerController;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
