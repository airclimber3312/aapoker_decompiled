.class public Lcom/hyphenate/chat/adapter/EMARecallTuple;
.super Ljava/lang/Object;


# instance fields
.field private ext:Ljava/lang/String;

.field private recallBy:Ljava/lang/String;

.field private recallMessage:Lcom/hyphenate/chat/adapter/message/EMAMessage;

.field private recallMessageId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallBy:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallMessageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->ext:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallMessage:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    return-void
.end method


# virtual methods
.method public getRecallBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallBy:Ljava/lang/String;

    return-object v0
.end method

.method public getRecallExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getRecallMessage()Lcom/hyphenate/chat/EMMessage;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallMessage:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    iget-object v1, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallMessage:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-object v0
.end method

.method public getRecallMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallMessageId:Ljava/lang/String;

    return-object v0
.end method

.method protected setRecallBy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallBy:Ljava/lang/String;

    return-void
.end method

.method protected setRecallExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->ext:Ljava/lang/String;

    return-void
.end method

.method protected setRecallMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallMessage:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    return-void
.end method

.method protected setRecallMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMARecallTuple;->recallMessageId:Ljava/lang/String;

    return-void
.end method
