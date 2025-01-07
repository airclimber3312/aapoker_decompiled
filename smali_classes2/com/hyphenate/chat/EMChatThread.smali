.class public Lcom/hyphenate/chat/EMChatThread;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChatThreadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getThreadId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatThreadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateAt()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getCreateAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastMessage()Lcom/hyphenate/chat/EMMessage;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getLastMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getLastMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getMemberCount()I

    move-result v0

    return v0
.end method

.method public getMessageCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getMessageCount()I

    move-result v0

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThread;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getChatThreadName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getChatThreadId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
