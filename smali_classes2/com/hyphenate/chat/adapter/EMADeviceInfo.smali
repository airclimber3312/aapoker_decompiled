.class public Lcom/hyphenate/chat/adapter/EMADeviceInfo;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeGetDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeGetDeviceUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeGetResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetDeviceName()Ljava/lang/String;
.end method

.method native nativeGetDeviceUUID()Ljava/lang/String;
.end method

.method native nativeGetResource()Ljava/lang/String;
.end method

.method native nativeInit()V
.end method

.method native nativeSetDeviceName(Ljava/lang/String;)V
.end method

.method native nativeSetDeviceUUID(Ljava/lang/String;)V
.end method

.method native nativeSetResource(Ljava/lang/String;)V
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeSetDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceUUID(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeSetDeviceUUID(Ljava/lang/String;)V

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMADeviceInfo;->nativeSetResource(Ljava/lang/String;)V

    return-void
.end method
