.class Lcom/hyphenate/chat/EMChatManager$1HandleError;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->sendMessage(Lcom/hyphenate/chat/EMMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1HandleError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$msg:Lcom/hyphenate/chat/EMMessage;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/chat/EMMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1HandleError;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$1HandleError;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p4, Lcom/hyphenate/chat/EMMessage;->messageStatusCallBack:Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
