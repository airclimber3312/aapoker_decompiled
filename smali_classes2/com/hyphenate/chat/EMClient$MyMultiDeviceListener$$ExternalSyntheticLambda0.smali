.class public final synthetic Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/hyphenate/chat/EMConversation$EMConversationType;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iput p2, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$3:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iget v1, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$$ExternalSyntheticLambda0;->f$3:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;->lambda$onConversationEvent$1$com-hyphenate-chat-EMClient$MyMultiDeviceListener(ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;)V

    return-void
.end method
