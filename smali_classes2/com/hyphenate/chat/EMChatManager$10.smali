.class Lcom/hyphenate/chat/EMChatManager$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->deleteConversationFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZLcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$deleteCallBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$isDeleteServerMessages:Z

.field final synthetic val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$10;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$username:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$isDeleteServerMessages:Z

    iput-object p5, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$deleteCallBack:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    sget-object v1, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    :goto_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$10;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$username:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$isDeleteServerMessages:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->deleteConversationFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;Z)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$deleteCallBack:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$10;->val$deleteCallBack:Lcom/hyphenate/EMCallBack;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
