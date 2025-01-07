.class Lcom/hyphenate/chat/EMChatRoomManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->leaveChatRoom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$2;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$2;->val$roomId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$2;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$2;->val$roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->leaveChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMOptions;->deleteMessagesOnLeaveChatroom()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$2;->val$roomId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->deleteConversation(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMChatRoomManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "leaveChatroom error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
