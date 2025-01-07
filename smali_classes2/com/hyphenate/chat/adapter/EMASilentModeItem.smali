.class public Lcom/hyphenate/chat/adapter/EMASilentModeItem;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeGetConversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeGetConversationType()I

    move-result v0

    return v0
.end method

.method public getExpireTimestamp()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeGetExpireTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemindType()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeGetRemindType()I

    move-result v0

    return v0
.end method

.method public getSilentModeEndTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeGetSilentModeEndTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    move-result-object v0

    return-object v0
.end method

.method public getSilentModeStartTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->nativeGetSilentModeStartTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetConversationId()Ljava/lang/String;
.end method

.method native nativeGetConversationType()I
.end method

.method native nativeGetExpireTimestamp()J
.end method

.method native nativeGetRemindType()I
.end method

.method native nativeGetSilentModeEndTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;
.end method

.method native nativeGetSilentModeStartTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;
.end method

.method native nativeInit()V
.end method
