.class public final synthetic Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/hyphenate/chat/EMMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/hyphenate/chat/EMMessage;

    invoke-static {v0}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->lambda$resendMessage$1(Lcom/hyphenate/chat/EMMessage;)V

    return-void
.end method
