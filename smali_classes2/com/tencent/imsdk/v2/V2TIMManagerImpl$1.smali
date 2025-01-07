.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/manager/SDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

.field final synthetic val$logListener:Lcom/tencent/imsdk/v2/V2TIMLogListener;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMLogListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->val$logListener:Lcom/tencent/imsdk/v2/V2TIMLogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(ILjava/lang/String;)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$2;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnecting()V
    .locals 2

    .line 92
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKickedOffline()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$4;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLog(ILjava/lang/String;)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 2

    .line 152
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;Lcom/tencent/imsdk/relationship/UserInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserSigExpired()V
    .locals 2

    .line 140
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$5;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserStatusChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/UserStatus;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$8;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
