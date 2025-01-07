.class public final synthetic Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMChatManager;

.field public final synthetic f$1:Lcom/hyphenate/chat/EMCustomConversationFilter;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/hyphenate/EMValueCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMCustomConversationFilter;ZLcom/hyphenate/EMValueCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$1:Lcom/hyphenate/chat/EMCustomConversationFilter;

    iput-boolean p3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$2:Z

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$3:Lcom/hyphenate/EMValueCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$1:Lcom/hyphenate/chat/EMCustomConversationFilter;

    iget-boolean v2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$2:Z

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;->f$3:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMChatManager;->lambda$asyncFilterConversationsFromDB$1$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/chat/EMCustomConversationFilter;ZLcom/hyphenate/EMValueCallBack;)V

    return-void
.end method
