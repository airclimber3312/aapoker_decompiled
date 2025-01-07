.class public Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;
.super Ljava/lang/Object;
.source "V2TIMOfflinePushConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    invoke-direct {v0}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    long-to-int p2, p1

    .line 19
    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->setBusinessID(I)V

    .line 20
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    invoke-virtual {p1, p3}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->setDeviceToken(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->setIsTPNSToken(Z)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    invoke-direct {v0}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    long-to-int p2, p1

    .line 45
    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->setBusinessID(I)V

    .line 46
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    invoke-virtual {p1, p3}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->setDeviceToken(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    invoke-virtual {p1, p4}, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->setIsTPNSToken(Z)V

    return-void
.end method


# virtual methods
.method getOfflinePushToken()Lcom/tencent/imsdk/offlinePush/OfflinePushToken;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;->offlinePushToken:Lcom/tencent/imsdk/offlinePush/OfflinePushToken;

    return-object v0
.end method
