.class public abstract Lcom/hyphenate/chat/adapter/EMAConnectionListener;
.super Lcom/hyphenate/chat/adapter/EMABase;

# interfaces
.implements Lcom/hyphenate/chat/adapter/EMAConnectionListenerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConnectionListener;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConnectionListener;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onDatabaseOpened(I)V
    .locals 0

    return-void
.end method

.method public onDisconnected(ILcom/hyphenate/chat/adapter/EMALogoutInfo;)V
    .locals 0

    return-void
.end method

.method public onReceiveToken(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onTokenNotification(I)V
    .locals 0

    return-void
.end method

.method public verifyServerCert(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
