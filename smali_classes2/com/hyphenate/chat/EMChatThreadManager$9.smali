.class Lcom/hyphenate/chat/EMChatThreadManager$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatThreadManager;->getJoinedChatThreadsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatThreadManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$cursor:Ljava/lang/String;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatThreadManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iput p2, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->val$limit:I

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->val$cursor:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->this$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iget v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->val$limit:I

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->val$cursor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadManager;->access$900(Lcom/hyphenate/chat/EMChatThreadManager;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$9;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMChatThreadManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getJoinedThreadsFromServer error: "

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
