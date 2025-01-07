.class public final synthetic Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMChatManager;

.field public final synthetic f$1:Lcom/hyphenate/chat/EMMessage;

.field public final synthetic f$2:Lcom/hyphenate/EMValueCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;->f$1:Lcom/hyphenate/chat/EMMessage;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;->f$2:Lcom/hyphenate/EMValueCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;->f$1:Lcom/hyphenate/chat/EMMessage;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;->f$2:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->lambda$downloadAndParseCombineMessage$0$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMValueCallBack;)V

    return-void
.end method
