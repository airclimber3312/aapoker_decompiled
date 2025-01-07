.class public final synthetic Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMChatThreadManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/hyphenate/EMValueCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/EMValueCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMChatThreadManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadManager;->lambda$getChatThreadLatestMessage$0$com-hyphenate-chat-EMChatThreadManager(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    return-void
.end method
