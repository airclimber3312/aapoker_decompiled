.class Lcom/hyphenate/chat/EMChatManager$1$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$1;->onReceivePrivateMessages(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$1;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1$10;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$1$10;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "EMChatManager"

    const-string v1, "onPrivateMessages"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1$10;->val$messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    new-instance v2, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v2, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-static {}, Lcom/hyphenate/notification/core/b;->a()Lcom/hyphenate/notification/core/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hyphenate/notification/core/b;->a(Lcom/hyphenate/chat/EMMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method
