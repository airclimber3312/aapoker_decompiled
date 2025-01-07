.class public Lcom/hyphenate/chat/EMPushConfigs;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAPushConfigs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAPushConfigs;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMPushConfigs;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDisplayNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushConfigs;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->getDisplayNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayStyle()Lcom/hyphenate/chat/EMPushManager$DisplayStyle;
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMPushManager$DisplayStyle;->values()[Lcom/hyphenate/chat/EMPushManager$DisplayStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushConfigs;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->getDisplayStyle()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNoDisturbEndHour()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->getSilentModeEnd()I

    move-result v0

    return v0
.end method

.method public getNoDisturbStartHour()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->getSilentModeStart()I

    move-result v0

    return v0
.end method

.method public getSilentModeEnd()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushConfigs;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->getNoDisturbEndHour()I

    move-result v0

    return v0
.end method

.method public getSilentModeStart()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushConfigs;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->getNoDisturbStartHour()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNoDisturbOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->silentModeEnabled()Z

    move-result v0

    return v0
.end method

.method public silentModeEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushConfigs;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->isNoDisturbOn()Z

    move-result v0

    return v0
.end method
