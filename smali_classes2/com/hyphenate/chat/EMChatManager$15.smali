.class Lcom/hyphenate/chat/EMChatManager$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->deleteMessagesBeforeTimestamp(JLcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$callback:Lcom/hyphenate/EMCallBack;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;JLcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$15;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-wide p2, p0, Lcom/hyphenate/chat/EMChatManager$15;->val$timeStamp:J

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$15;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$15;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-wide v1, p0, Lcom/hyphenate/chat/EMChatManager$15;->val$timeStamp:J

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->removeMessagesBeforeTimestamp(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$15;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMConversation$MessageCache;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getAllMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/hyphenate/chat/EMChatManager$15;->val$timeStamp:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$15;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$15;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    const-string v2, "Database operation failed"

    invoke-interface {v0, v1, v2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
