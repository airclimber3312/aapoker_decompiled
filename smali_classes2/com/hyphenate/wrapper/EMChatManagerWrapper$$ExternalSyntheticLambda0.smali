.class public final synthetic Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/hyphenate/chat/EMConversation$EMConversationType;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

.field public final synthetic f$6:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    iput p4, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$5:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    iput-object p7, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$6:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$2:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    iget v3, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$5:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    iget-object v6, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;->f$6:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->lambda$fetchHistoryMessages$9$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method
