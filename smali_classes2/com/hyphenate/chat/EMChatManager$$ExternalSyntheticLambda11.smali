.class public final synthetic Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMChatManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/hyphenate/chat/EMConversation$EMMarkType;

.field public final synthetic f$3:Lcom/hyphenate/EMCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMChatManager;Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$2:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$3:Lcom/hyphenate/EMCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$2:Lcom/hyphenate/chat/EMConversation$EMMarkType;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;->f$3:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMChatManager;->lambda$asyncRemoveConversationMark$10$com-hyphenate-chat-EMChatManager(Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V

    return-void
.end method
