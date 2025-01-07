.class Lcom/hyphenate/chat/EMChatManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$2;->onMessageReactionDidChange(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$2;

.field final synthetic val$reactionChangeList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$2$1;->this$1:Lcom/hyphenate/chat/EMChatManager$2;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$2$1;->val$reactionChangeList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "EMChatManager"

    const-string v1, "onMessageReactionDidChange"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$2$1;->val$reactionChangeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$2$1;->val$reactionChangeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;

    new-instance v3, Lcom/hyphenate/chat/EMMessageReactionChange;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMMessageReactionChange;-><init>(Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$2$1;->this$1:Lcom/hyphenate/chat/EMChatManager$2;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager$2;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatManager;->access$000(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMMessageListener;

    :try_start_0
    invoke-interface {v2, v0}, Lcom/hyphenate/EMMessageListener;->onReactionChanged(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method
