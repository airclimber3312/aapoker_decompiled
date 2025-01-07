.class public abstract Lcom/tencent/imsdk/v2/V2TIMSDKListener;
.super Ljava/lang/Object;
.source "V2TIMSDKListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConnectSuccess()V
    .locals 0

    return-void
.end method

.method public onConnecting()V
    .locals 0

    return-void
.end method

.method public onKickedOffline()V
    .locals 0

    return-void
.end method

.method public onSelfInfoUpdated(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)V
    .locals 0

    return-void
.end method

.method public onUserSigExpired()V
    .locals 0

    return-void
.end method

.method public onUserStatusChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserStatus;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
