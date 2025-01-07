.class public interface abstract Lcom/hyphenate/EMConnectionListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onDisconnected(I)V
.end method

.method public abstract onLogout(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onLogout(ILcom/hyphenate/chat/EMLoginExtensionInfo;)V
.end method

.method public abstract onLogout(ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onTokenExpired()V
.end method

.method public abstract onTokenWillExpire()V
.end method
