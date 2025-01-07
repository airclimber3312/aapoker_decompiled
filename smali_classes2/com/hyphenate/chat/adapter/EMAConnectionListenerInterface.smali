.class public interface abstract Lcom/hyphenate/chat/adapter/EMAConnectionListenerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onDatabaseOpened(I)V
.end method

.method public abstract onDisconnected(ILcom/hyphenate/chat/adapter/EMALogoutInfo;)V
.end method

.method public abstract onReceiveToken(Ljava/lang/String;J)V
.end method

.method public abstract onTokenNotification(I)V
.end method

.method public abstract verifyServerCert(Ljava/util/List;Ljava/lang/String;)Z
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
.end method
