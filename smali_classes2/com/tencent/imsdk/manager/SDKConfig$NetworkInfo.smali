.class public Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInfo"
.end annotation


# instance fields
.field public initializeCostTime:J

.field public ipType:I

.field public networkConnected:Z

.field public networkId:Ljava/lang/String;

.field public networkType:I

.field public wifiNetworkHandle:J

.field public xgNetworkHandle:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    const/4 v1, 0x1

    .line 43
    iput v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    const-string v1, ""

    .line 44
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 45
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->wifiNetworkHandle:J

    .line 46
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->xgNetworkHandle:J

    .line 47
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 48
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    const/4 v1, 0x1

    .line 52
    iput v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    const-string v1, ""

    .line 53
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->wifiNetworkHandle:J

    .line 55
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->xgNetworkHandle:J

    .line 56
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 57
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    return-void
.end method
