.class public Lcom/hyphenate/chat/adapter/EMAPresence;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeInit(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeInit(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getExpiryTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeGetExpiryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeGetExt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeGetLatestTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeGetPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAPresence;->nativeGetStatusList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetExpiryTime()J
.end method

.method native nativeGetExt()Ljava/lang/String;
.end method

.method native nativeGetLatestTime()J
.end method

.method native nativeGetPublisher()Ljava/lang/String;
.end method

.method native nativeGetStatusList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method native nativeInit(Ljava/lang/String;)V
.end method
