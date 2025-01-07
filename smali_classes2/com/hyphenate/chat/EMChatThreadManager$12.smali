.class Lcom/hyphenate/chat/EMChatThreadManager$12;
.super Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMChatThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatThreadManager;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatThreadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThreadManager$12;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeaveThread(Lcom/hyphenate/chat/adapter/EMAThreadInfo;I)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager$12;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$12;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatThreadChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->BE_KICKED:Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;->ordinal()I

    move-result v3

    if-ne p2, v3, :cond_0

    new-instance v3, Lcom/hyphenate/chat/EMChatThreadEvent;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMChatThreadEvent;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {v2, v3}, Lcom/hyphenate/EMChatThreadChangeListener;->onChatThreadUserRemoved(Lcom/hyphenate/chat/EMChatThreadEvent;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/hyphenate/chat/EMChatThreadEvent;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMChatThreadEvent;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {v2, v3}, Lcom/hyphenate/EMChatThreadChangeListener;->onChatThreadDestroyed(Lcom/hyphenate/chat/EMChatThreadEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onMemberExited(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    return-void
.end method

.method public onMemberJoined(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    return-void
.end method

.method public onThreadNameUpdated(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    return-void
.end method

.method public onThreadNotifyChange(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager$12;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$12;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatThreadChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lcom/hyphenate/chat/EMChatThreadManager$13;->$SwitchMap$com$hyphenate$chat$EMChatThreadEvent$TYPE:[I

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getType()Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/hyphenate/chat/EMChatThreadEvent;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMChatThreadEvent;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {v2, v3}, Lcom/hyphenate/EMChatThreadChangeListener;->onChatThreadDestroyed(Lcom/hyphenate/chat/EMChatThreadEvent;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/hyphenate/chat/EMChatThreadEvent;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMChatThreadEvent;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {v2, v3}, Lcom/hyphenate/EMChatThreadChangeListener;->onChatThreadUpdated(Lcom/hyphenate/chat/EMChatThreadEvent;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/hyphenate/chat/EMChatThreadEvent;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMChatThreadEvent;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {v2, v3}, Lcom/hyphenate/EMChatThreadChangeListener;->onChatThreadCreated(Lcom/hyphenate/chat/EMChatThreadEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lcom/hyphenate/chat/EMChatThreadManager;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
