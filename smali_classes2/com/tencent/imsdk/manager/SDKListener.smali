.class public interface abstract Lcom/tencent/imsdk/manager/SDKListener;
.super Ljava/lang/Object;
.source "SDKListener.java"


# virtual methods
.method public abstract onConnectFailed(ILjava/lang/String;)V
.end method

.method public abstract onConnectSuccess()V
.end method

.method public abstract onConnecting()V
.end method

.method public abstract onKickedOffline()V
.end method

.method public abstract onLog(ILjava/lang/String;)V
.end method

.method public abstract onSelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V
.end method

.method public abstract onUserSigExpired()V
.end method

.method public abstract onUserStatusChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/UserStatus;",
            ">;)V"
        }
    .end annotation
.end method
