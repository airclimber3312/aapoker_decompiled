.class Lcom/hyphenate/chat/EMGroupManager$1;
.super Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMGroupManager;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAdminFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onAdminAdded(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAddMutesFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/hyphenate/EMGroupChangeListener;->onMuteListAdded(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAllMemberMuteStateChanged(Lcom/hyphenate/chat/adapter/EMAGroup;Z)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onAllMemberMuteStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAnnouncementChanged(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onAnnouncementChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAssignOwnerFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Lcom/hyphenate/EMGroupChangeListener;->onOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAutoAcceptInvitationFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Lcom/hyphenate/EMGroupChangeListener;->onAutoAcceptInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDeleteShareFileFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onSharedFileDeleted(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onGroupMemberAttributeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hyphenate/EMGroupChangeListener;->onGroupMemberAttributeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onLeaveGroup(Lcom/hyphenate/chat/adapter/EMAGroup;I)V
    .locals 5

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    sget-object v3, Lcom/hyphenate/chat/adapter/EMAGroup$EMGroupLeaveReason;->BE_KICKED:Lcom/hyphenate/chat/adapter/EMAGroup$EMGroupLeaveReason;

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMAGroup$EMGroupLeaveReason;->ordinal()I

    move-result v3

    if-ne p2, v3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSubject()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hyphenate/EMGroupChangeListener;->onUserRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSubject()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hyphenate/EMGroupChangeListener;->onGroupDestroyed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onMemberExited(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onMemberExited(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onMemberJoined(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onMemberJoined(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceiveAcceptionFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;)V
    .locals 6

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->getOwner()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/hyphenate/EMGroupChangeListener;->onRequestToJoinAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceiveInviteAcceptionFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, p2, v4}, Lcom/hyphenate/EMGroupChangeListener;->onInvitationAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceiveInviteDeclineFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object p3, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object p3, p3, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, p2, v3}, Lcom/hyphenate/EMGroupChangeListener;->onInvitationDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceiveInviteFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hyphenate/EMGroupChangeListener;->onInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceiveJoinGroupApplication(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSubject()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p2, p3}, Lcom/hyphenate/EMGroupChangeListener;->onRequestToJoinReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceiveRejectionFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/EMGroup;->groupSubject()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v7, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/EMGroupChangeListener;

    invoke-interface {v1, p1, v0, p3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onRequestToJoinDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/hyphenate/EMGroupChangeListener;->onRequestToJoinDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    monitor-exit v7

    return-void

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRemoveAdminFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onAdminRemoved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRemoveMutesFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onMuteListRemoved(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStateChangedFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Z)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onStateChanged(Lcom/hyphenate/chat/EMGroup;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onUpdateMyGroupList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSpecificationFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    new-instance v3, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    invoke-interface {v2, v3}, Lcom/hyphenate/EMGroupChangeListener;->onSpecificationChanged(Lcom/hyphenate/chat/EMGroup;)V
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

.method public onUploadShareFileFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hyphenate/chat/EMMucSharedFile;

    invoke-direct {v4, p2}, Lcom/hyphenate/chat/EMMucSharedFile;-><init>(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V

    invoke-interface {v2, v3, v4}, Lcom/hyphenate/EMGroupChangeListener;->onSharedFileAdded(Ljava/lang/String;Lcom/hyphenate/chat/EMMucSharedFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onWhiteListAdded(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onWhiteListAdded(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onWhiteListRemoved(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager$1;->this$0:Lcom/hyphenate/chat/EMGroupManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMGroupChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMGroupChangeListener;->onWhiteListRemoved(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
