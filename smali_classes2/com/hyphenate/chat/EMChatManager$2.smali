.class Lcom/hyphenate/chat/EMChatManager$2;
.super Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$2;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReactionDidChange(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReactionChange;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$2;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$2$1;-><init>(Lcom/hyphenate/chat/EMChatManager$2;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method
