.class public Lcom/hyphenate/chat/adapter/EMASilentModeTime;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->nativeInit(II)V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getHour()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->nativeGetHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->nativeGetMinute()I

    move-result v0

    return v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetHour()I
.end method

.method native nativeGetMinute()I
.end method

.method native nativeInit(II)V
.end method

.method native nativeSetHour(I)V
.end method

.method native nativeSetMinute(I)V
.end method

.method public setHour(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->nativeSetHour(I)V

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASilentModeTime;->nativeSetMinute(I)V

    return-void
.end method
