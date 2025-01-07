.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;
.super Lcom/tencent/imsdk/message/MessageListener;
.source "V2TIMMessageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveC2CMessageReceipt(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/C2CMessageReceipt;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 90
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 91
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/message/C2CMessageReceipt;

    .line 92
    new-instance v5, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;

    invoke-direct {v5}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;-><init>()V

    .line 93
    invoke-virtual {v5, v4}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->setC2CMessageReceipt(Lcom/tencent/imsdk/message/C2CMessageReceipt;)V

    .line 94
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    .line 97
    invoke-virtual {v4}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->getMessageID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;

    if-eqz v3, :cond_3

    .line 107
    invoke-virtual {v2, v0}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvMessageReadReceipts(Ljava/util/List;)V

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v2, v0}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvC2CReadReceipt(Ljava/util/List;)V

    goto :goto_2

    .line 112
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceiveGroupMessageReceipt(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/GroupMessageReceipt;",
            ">;)V"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/message/GroupMessageReceipt;

    .line 119
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;-><init>()V

    .line 120
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->setGroupMessageReceipt(Lcom/tencent/imsdk/message/GroupMessageReceipt;)V

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;

    .line 126
    invoke-virtual {v2, v0}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvMessageReadReceipts(Ljava/util/List;)V

    goto :goto_1

    .line 128
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceiveMessageExtensionsChanged(Lcom/tencent/imsdk/message/MessageKey;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/message/MessageKey;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageExtension;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/tencent/imsdk/message/MessageKey;->getMessageID()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/message/MessageExtension;

    .line 166
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;-><init>()V

    .line 167
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->setMessageExtension(Lcom/tencent/imsdk/message/MessageExtension;)V

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;

    .line 172
    invoke-virtual {v2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvMessageExtensionsChanged(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 174
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceiveMessageExtensionsDeleted(Lcom/tencent/imsdk/message/MessageKey;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/message/MessageKey;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageExtension;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/tencent/imsdk/message/MessageKey;->getMessageID()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/message/MessageExtension;

    .line 185
    invoke-virtual {v1}, Lcom/tencent/imsdk/message/MessageExtension;->getExtensionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_1
    iget-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;

    .line 189
    invoke-virtual {v2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvMessageExtensionsDeleted(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 191
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceiveMessageModified(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/Message;

    .line 148
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 149
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    .line 150
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;

    .line 152
    invoke-virtual {v3, v1}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvMessageModified(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    goto :goto_1

    .line 154
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public onReceiveMessageRevoked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 133
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MessageKey;

    .line 137
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-static {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;

    .line 139
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageKey;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;->onRecvMessageRevoked(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public onReceiveNewMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/Message;

    .line 79
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 80
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
