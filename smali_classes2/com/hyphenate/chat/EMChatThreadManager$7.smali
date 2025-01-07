.class Lcom/hyphenate/chat/EMChatThreadManager$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatThreadManager;->removeMemberFromChatThread(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatThreadManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$chatThreadId:Ljava/lang/String;

.field final synthetic val$member:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->val$chatThreadId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->val$member:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->val$chatThreadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->val$member:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadManager;->access$700(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->val$callBack:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$7;->val$callBack:Lcom/hyphenate/EMCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMChatThreadManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeMemberFromThread error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
