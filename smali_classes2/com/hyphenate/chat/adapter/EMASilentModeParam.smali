.class public Lcom/hyphenate/chat/adapter/EMASilentModeParam;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method native nativeSetEndTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V
.end method

.method native nativeSetParamType(I)V
.end method

.method native nativeSetRemindType(I)V
.end method

.method native nativeSetSilentDuration(I)V
.end method

.method native nativeSetStartTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V
.end method

.method public setEndTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->nativeSetEndTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V

    return-void
.end method

.method public setParamType(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->nativeSetParamType(I)V

    return-void
.end method

.method public setRemindType(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->nativeSetRemindType(I)V

    return-void
.end method

.method public setSilentDuration(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->nativeSetSilentDuration(I)V

    return-void
.end method

.method public setStartTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeParam;->nativeSetStartTime(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V

    return-void
.end method
