.class public Lcom/hyphenate/chat/EMSilentModeTime;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMASilentModeTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    invoke-direct {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;-><init>(II)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->getHour()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->getMinute()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public setHour(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->setHour(I)V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->setMinute(I)V

    return-void
.end method
