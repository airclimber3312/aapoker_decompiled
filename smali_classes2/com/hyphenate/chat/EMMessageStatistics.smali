.class public Lcom/hyphenate/chat/EMMessageStatistics;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAMessageStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMessageStatistics;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public direct()Lcom/hyphenate/chat/EMMessage$Direct;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->direct()Lcom/hyphenate/chat/EMMessage$Direct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttachmentSize()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getAttachmentSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgSize()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getMsgSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMsgTime()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getMsgTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailSize()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getThumbnailSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/hyphenate/chat/EMMessage$Type;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageStatistics;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->getType()Lcom/hyphenate/chat/EMMessage$Type;

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
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EMMessageStatistics{msgId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chatType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$ChatType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msgTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getMsgTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " direct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->direct()Lcom/hyphenate/chat/EMMessage$Direct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Direct;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msgSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getMsgSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " attachmentSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getAttachmentSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " thumbnailSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageStatistics;->getThumbnailSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
