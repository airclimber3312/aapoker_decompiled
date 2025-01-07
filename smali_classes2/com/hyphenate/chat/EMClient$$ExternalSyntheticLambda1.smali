.class public final synthetic Lcom/hyphenate/chat/EMClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMClient;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$$ExternalSyntheticLambda1;->f$0:Lcom/hyphenate/chat/EMClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$$ExternalSyntheticLambda1;->f$0:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->lambda$loadDataFromDb$1$com-hyphenate-chat-EMClient()V

    return-void
.end method
