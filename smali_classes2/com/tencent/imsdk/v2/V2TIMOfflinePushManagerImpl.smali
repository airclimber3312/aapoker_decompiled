.class public Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;
.source "V2TIMOfflinePushManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$V2TIMOfflinePushManagerImplHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;-><init>()V

    const-string v0, "V2TIMOfflinePushManagerImpl"

    .line 11
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;
    .locals 1

    .line 17
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$V2TIMOfflinePushManagerImplHolder;->access$000()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doBackground(ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 48
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getInstanceType()I

    move-result v0

    .line 49
    new-instance v1, Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;-><init>()V

    .line 50
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;->setC2cUnreadMessageCount(I)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;->setDeviceBrand(I)V

    .line 52
    invoke-static {}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->getInstance()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    move-result-object p1

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v1, v0}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->doEnterBackground(Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public doForeground(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    .line 67
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getInstanceType()I

    move-result v0

    .line 68
    new-instance v1, Lcom/tencent/imsdk/offlinePush/EnterForegroundParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/offlinePush/EnterForegroundParam;-><init>()V

    .line 69
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/offlinePush/EnterForegroundParam;->setDeviceBrand(I)V

    .line 70
    invoke-static {}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->getInstance()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    move-result-object v0

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->doEnterForeground(Lcom/tencent/imsdk/offlinePush/EnterForegroundParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setOfflinePushConfig(Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;

    const-wide/16 v0, 0x0

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;-><init>(JLjava/lang/String;)V

    .line 26
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getInstanceType()I

    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->getOfflinePushToken()Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->setDeviceBrand(I)V

    .line 28
    invoke-static {}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->getInstance()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->getOfflinePushToken()Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->setOfflinePushToken(Lcom/tencent/imsdk/offlinePush/OfflinePushToken;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 40
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(I)V

    return-void
.end method
