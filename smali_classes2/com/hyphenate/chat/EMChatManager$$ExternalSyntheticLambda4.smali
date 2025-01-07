.class public final synthetic Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMChatManager;

.field public final synthetic f$1:Lcom/hyphenate/EMValueCallBack;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/hyphenate/chat/EMMessage$ChatType;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/EMValueCallBack;Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$1:Lcom/hyphenate/EMValueCallBack;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$3:Lcom/hyphenate/chat/EMMessage$ChatType;

    iput-object p5, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$1:Lcom/hyphenate/EMValueCallBack;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$3:Lcom/hyphenate/chat/EMMessage$ChatType;

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hyphenate/chat/EMChatManager;->lambda$asyncGetReactionList$7$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/EMValueCallBack;Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;)V

    return-void
.end method
