.class public Lcom/hyphenate/chat/EMMessagePinInfo;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessagePinInfo;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessagePinInfo;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public operatorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessagePinInfo;->emaObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessagePinInfo;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;->pinnedBy()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pinTime()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessagePinInfo;->emaObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessagePinInfo;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;->pinnedAt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
