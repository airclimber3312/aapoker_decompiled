.class Lcom/hyphenate/chat/EMChatManager$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->asyncReportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$callback:Lcom/hyphenate/EMCallBack;

.field final synthetic val$msgId:Ljava/lang/String;

.field final synthetic val$reportReason:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$16;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$msgId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$reportReason:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$16;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$msgId:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$reportReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMChatManager;->reportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$16;->val$callback:Lcom/hyphenate/EMCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
