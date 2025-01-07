.class Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;
.super Lcom/hyphenate/chat/adapter/EMAContactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMContactManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMAContactListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMContactManager;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMContactManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAContactListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactAdded(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMContactListener;

    invoke-interface {v2, p1}, Lcom/hyphenate/EMContactListener;->onContactAdded(Ljava/lang/String;)V
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

.method public onContactAgreed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMContactListener;

    invoke-interface {v2, p1}, Lcom/hyphenate/EMContactListener;->onFriendRequestAccepted(Ljava/lang/String;)V
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

.method public onContactDeleted(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMContactListener;

    invoke-interface {v2, p1}, Lcom/hyphenate/EMContactListener;->onContactDeleted(Ljava/lang/String;)V
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

.method public onContactInvited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMContactListener;

    invoke-interface {v2, p1, p2}, Lcom/hyphenate/EMContactListener;->onContactInvited(Ljava/lang/String;Ljava/lang/String;)V
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

.method public onContactRefused(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;->this$0:Lcom/hyphenate/chat/EMContactManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMContactManager;->access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMContactListener;

    invoke-interface {v2, p1}, Lcom/hyphenate/EMContactListener;->onFriendRequestDeclined(Ljava/lang/String;)V
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
