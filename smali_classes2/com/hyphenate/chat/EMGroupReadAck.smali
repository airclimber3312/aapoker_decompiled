.class public Lcom/hyphenate/chat/EMGroupReadAck;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAGroupReadAck;",
        ">;"
    }
.end annotation


# instance fields
.field emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAGroupReadAck;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;-><init>(Lcom/hyphenate/chat/adapter/EMAGroupReadAck;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAckId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->getAckId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->getCount()I

    move-result v0

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupReadAck;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method
