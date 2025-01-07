.class public final synthetic Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hyphenate/chat/EMContactManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/hyphenate/EMValueCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/hyphenate/chat/EMContactManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMContactManager;

    iput p2, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$3:Lcom/hyphenate/EMValueCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$0:Lcom/hyphenate/chat/EMContactManager;

    iget v1, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;->f$3:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMContactManager;->lambda$asyncFetchAllContactsFromServer$0$com-hyphenate-chat-EMContactManager(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-void
.end method
