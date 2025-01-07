.class public Lcom/hyphenate/chat/adapter/EMAPushConfigs;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAPushConfigs;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeInit(Lcom/hyphenate/chat/adapter/EMAPushConfigs;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDisplayNickname()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeGetDisplayNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayStyle()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeGetDisplayStyle()I

    move-result v0

    return v0
.end method

.method public getNoDisturbEndHour()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeGetNoDisturbEndHour()I

    move-result v0

    return v0
.end method

.method public getNoDisturbStartHour()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeGetNoDisturbStartHour()I

    move-result v0

    return v0
.end method

.method public isNoDisturbOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPushConfigs;->nativeIsNoDisturbOn()Z

    move-result v0

    return v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetDisplayNickname()Ljava/lang/String;
.end method

.method native nativeGetDisplayStyle()I
.end method

.method native nativeGetNoDisturbEndHour()I
.end method

.method native nativeGetNoDisturbStartHour()I
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAPushConfigs;)V
.end method

.method native nativeIsNoDisturbOn()Z
.end method
