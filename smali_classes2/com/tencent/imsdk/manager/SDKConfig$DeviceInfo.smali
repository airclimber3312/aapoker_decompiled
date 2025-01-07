.class public Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation


# instance fields
.field public deviceBrand:J

.field public deviceId:Ljava/lang/String;

.field public deviceType:Ljava/lang/String;

.field public systemVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceType:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceBrand:J

    .line 26
    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->systemVersion:Ljava/lang/String;

    return-void
.end method

.method public static onGetAppCpuUsage()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static onGetAppMemUsage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static onGetSysCpuUsage()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
