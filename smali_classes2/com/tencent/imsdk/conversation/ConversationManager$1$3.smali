.class Lcom/tencent/imsdk/conversation/ConversationManager$1$3;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/conversation/ConversationManager$1;->onSyncServerFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$3;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$3;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/conversation/ConversationManager$1;->this$0:Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/tencent/imsdk/conversation/ConversationManager;->access$100(Lcom/tencent/imsdk/conversation/ConversationManager;)Lcom/tencent/imsdk/conversation/ConversationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$3;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/conversation/ConversationManager$1;->this$0:Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/tencent/imsdk/conversation/ConversationManager;->access$100(Lcom/tencent/imsdk/conversation/ConversationManager;)Lcom/tencent/imsdk/conversation/ConversationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationListener;->onSyncServerFailed()V

    :cond_0
    return-void
.end method
