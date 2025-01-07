.class Lcom/hyphenate/chat/EMChatManager$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->removeMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$msgIdList:Ljava/util/List;

.field final synthetic val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$19;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$conversationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$msgIdList:Ljava/util/List;

    iput-object p5, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$19;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$conversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$msgIdList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->deleteRoamMsgFromServerById(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/util/List;)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$19;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$conversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$msgIdList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->clearCaches(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$callBack:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$19;->val$callBack:Lcom/hyphenate/EMCallBack;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
