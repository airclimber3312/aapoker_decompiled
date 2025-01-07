.class public Lcom/hyphenate/chat/EMSilentModeParam;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMASilentModeParam;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMASilentModeParam;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeParam;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->setParamType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMASilentModeParam;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

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

.method public setParamType(Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;)Lcom/hyphenate/chat/EMSilentModeParam;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeParam;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->setParamType(I)V

    return-object p0
.end method

.method public setRemindType(Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;)Lcom/hyphenate/chat/EMSilentModeParam;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeParam;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->setRemindType(I)V

    return-object p0
.end method

.method public setSilentModeDuration(I)Lcom/hyphenate/chat/EMSilentModeParam;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeParam;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->setSilentDuration(I)V

    return-object p0
.end method

.method public setSilentModeInterval(Lcom/hyphenate/chat/EMSilentModeTime;Lcom/hyphenate/chat/EMSilentModeTime;)Lcom/hyphenate/chat/EMSilentModeParam;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeParam;

    iget-object p1, p1, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->setStartTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMSilentModeParam;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/EMASilentModeParam;

    iget-object p2, p2, Lcom/hyphenate/chat/EMSilentModeTime;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->setEndTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V

    return-object p0
.end method
