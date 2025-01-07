.class Lcom/hyphenate/chat/EMChatRoomManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->leaveChatRoom(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$callback:Lcom/hyphenate/EMCallBack;

.field final synthetic val$options:Lcom/hyphenate/chat/EMOptions;

.field final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Lcom/hyphenate/chat/EMOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$roomId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$callback:Lcom/hyphenate/EMCallBack;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$options:Lcom/hyphenate/chat/EMOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->leaveChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    const/16 v2, 0x2c1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$options:Lcom/hyphenate/chat/EMOptions;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMOptions;->deleteMessagesOnLeaveChatroom()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$roomId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->deleteConversation(Ljava/lang/String;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$3;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    :cond_3
    :goto_1
    return-void
.end method
