.class public Lcom/tencent/imsdk/manager/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;,
        Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;,
        Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;,
        Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;,
        Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;,
        Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;
    }
.end annotation


# instance fields
.field public databaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

.field public deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

.field public forceUseQuicChannel:Z

.field public isIPv6Prior:Z

.field public isTestEnvironment:Z

.field public logSetting:Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;

.field public networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

.field public numberUIPlatform:I

.field public packetRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

.field public proxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

.field public sdkAppId:J

.field public sdkInitPath:Ljava/lang/String;

.field public sdkInstanceType:J

.field public stringUIPlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->sdkAppId:J

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lcom/tencent/imsdk/manager/SDKConfig;->sdkInitPath:Ljava/lang/String;

    .line 9
    iput-wide v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->sdkInstanceType:J

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->isTestEnvironment:Z

    .line 11
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->forceUseQuicChannel:Z

    .line 12
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->isIPv6Prior:Z

    .line 13
    iput-object v2, p0, Lcom/tencent/imsdk/manager/SDKConfig;->stringUIPlatform:Ljava/lang/String;

    .line 14
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->numberUIPlatform:I

    .line 15
    new-instance v0, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    .line 16
    new-instance v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    .line 17
    new-instance v0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->proxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    .line 18
    new-instance v0, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->databaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    .line 19
    new-instance v0, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->packetRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    .line 20
    new-instance v0, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig;->logSetting:Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;

    return-void
.end method

.method public static getAppCpuUsage()F
    .locals 1

    .line 108
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getAppCpuUsage()F

    move-result v0

    return v0
.end method

.method public static getAppMemoryUsage()F
    .locals 1

    .line 104
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getAppMemory()F

    move-result v0

    return v0
.end method

.method public static getSysCpuUsage()F
    .locals 1

    .line 112
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSysCpuUsage()F

    move-result v0

    return v0
.end method
