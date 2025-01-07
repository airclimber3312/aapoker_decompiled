.class Lcom/hyphenate/chat/EMChatRoomManager$7;
.super Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMChatRoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddAdmin(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onAdminAdded(Ljava/lang/String;Ljava/lang/String;)V
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

.method public onAddMuteList(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/hyphenate/EMChatRoomChangeListener;->onMuteListAdded(Ljava/lang/String;Ljava/util/List;J)V
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

.method public onAllMemberMuteStateChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Z)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onAllMemberMuteStateChanged(Ljava/lang/String;Z)V
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

.method public onAnnouncementChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onAnnouncementChanged(Ljava/lang/String;Ljava/lang/String;)V
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

.method public onAttributesRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v3, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->access$300(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2, p1, v3, p3}, Lcom/hyphenate/EMChatRoomChangeListener;->onAttributesRemoved(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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

.method public onAttributesUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v3, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->access$200(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2, p1, v3, p3}, Lcom/hyphenate/EMChatRoomChangeListener;->onAttributesUpdate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
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

.method public onLeaveChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;I)V
    .locals 6

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hyphenate/EMChatRoomChangeListener;->onChatRoomDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/hyphenate/EMChatRoomChangeListener;->onRemovedFromChatRoom(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public onMemberJoinedChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onMemberJoined(Ljava/lang/String;Ljava/lang/String;)V
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

.method public onMemberLeftChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onMemberExited(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public onOwnerChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Lcom/hyphenate/EMChatRoomChangeListener;->onOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public onRemoveAdmin(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onAdminRemoved(Ljava/lang/String;Ljava/lang/String;)V
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

.method public onRemoveMutes(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onMuteListRemoved(Ljava/lang/String;Ljava/util/List;)V
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

.method public onUpdateSpecificationFromChatroom(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    new-instance v3, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {v3, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    invoke-interface {v2, v3}, Lcom/hyphenate/EMChatRoomChangeListener;->onSpecificationChanged(Lcom/hyphenate/chat/EMChatRoom;)V
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

.method public onWhiteListAdded(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onWhiteListAdded(Ljava/lang/String;Ljava/util/List;)V
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

.method public onWhiteListRemoved(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$7;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoomManager;->access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMChatRoomChangeListener;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/hyphenate/EMChatRoomChangeListener;->onWhiteListRemoved(Ljava/lang/String;Ljava/util/List;)V
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
