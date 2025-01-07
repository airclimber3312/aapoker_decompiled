.class Lcom/hyphenate/chat/EMChatManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->setMessageSendCallback(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$conv:Lcom/hyphenate/chat/EMConversation;

.field final synthetic val$msg:Lcom/hyphenate/chat/EMMessage;

.field final synthetic val$oldId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$4;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$4;->val$msg:Lcom/hyphenate/chat/EMMessage;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$4;->val$conv:Lcom/hyphenate/chat/EMConversation;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$4;->val$oldId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic onProgress(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/EMCallBack$-CC;->$default$onProgress(Lcom/hyphenate/EMCallBack;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$4;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$4;->val$msg:Lcom/hyphenate/chat/EMMessage;

    iget-object v1, v1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMChatManager;->access$200(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$4;->val$conv:Lcom/hyphenate/chat/EMConversation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$4;->val$oldId:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$4;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$MessageCache;->replaceMsgId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
