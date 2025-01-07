.class Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;
.super Lcom/tencent/imsdk/conversation/ConversationListener;
.source "V2TIMConversationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-direct {p0}, Lcom/tencent/imsdk/conversation/ConversationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConversationChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/conversation/Conversation;

    .line 82
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;-><init>()V

    .line 83
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 88
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onConversationChanged(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onConversationGroupCreated(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/conversation/Conversation;

    .line 103
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;-><init>()V

    .line 104
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V

    .line 105
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 108
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 109
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onConversationGroupCreated(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onConversationGroupDeleted(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 116
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onConversationGroupDeleted(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConversationGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 123
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onConversationGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConversationsAddedToGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/conversation/Conversation;

    .line 131
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;-><init>()V

    .line 132
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 136
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 137
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onConversationsAddedToGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onConversationsDeletedFromGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/conversation/Conversation;

    .line 146
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;-><init>()V

    .line 147
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V

    .line 148
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 151
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 152
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onConversationsDeletedFromGroup(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onNewConversation(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/conversation/Conversation;

    .line 68
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;-><init>()V

    .line 69
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 74
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onNewConversation(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSyncServerFailed()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 60
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onSyncServerFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSyncServerFinish()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 53
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onSyncServerFinish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSyncServerStart()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 46
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onSyncServerStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTotalUnreadMessageCountChanged(J)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    .line 95
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationListener;->onTotalUnreadMessageCountChanged(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
