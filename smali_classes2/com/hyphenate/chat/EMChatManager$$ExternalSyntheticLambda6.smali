.class public final synthetic Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMChatManager;

.field public final synthetic f$1:Lcom/hyphenate/EMValueCallBack;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$1:Lcom/hyphenate/EMValueCallBack;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$1:Lcom/hyphenate/EMValueCallBack;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/EMChatManager;->lambda$asyncGetReactionDetail$8$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
