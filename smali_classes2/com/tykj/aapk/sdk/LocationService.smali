.class public Lcom/tykj/aapk/sdk/LocationService;
.super Lcom/tykj/aapk/sdk/Permissions;
.source "LocationService.java"


# static fields
.field static TGA:Ljava/lang/String; = "LocationService"


# instance fields
.field activity:Landroid/app/Activity;

.field private locationClient:Lcom/amap/api/location/AMapLocationClient;

.field locationListener:Lcom/amap/api/location/AMapLocationListener;

.field private locationOption:Lcom/amap/api/location/AMapLocationClientOption;

.field public pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/Permissions;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 21
    iput-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 91
    new-instance v0, Lcom/tykj/aapk/sdk/LocationService$1;

    invoke-direct {v0, p0}, Lcom/tykj/aapk/sdk/LocationService$1;-><init>(Lcom/tykj/aapk/sdk/LocationService;)V

    iput-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationListener:Lcom/amap/api/location/AMapLocationListener;

    .line 27
    iput-object p1, p0, Lcom/tykj/aapk/sdk/LocationService;->activity:Landroid/app/Activity;

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 28
    filled-new-array {v1, v2, v3, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tykj/aapk/sdk/LocationService;->needPermissions:[Ljava/lang/String;

    .line 37
    new-instance p1, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    invoke-direct {p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;-><init>()V

    iput-object p1, p0, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    const-wide/16 v0, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setLatitude(D)V

    .line 40
    iget-object p1, p0, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    invoke-virtual {p1, v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setLongitude(D)V

    .line 41
    iget-object p1, p0, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setStatus(I)V

    .line 42
    iget-object p1, p0, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    const-string v0, "unknow"

    invoke-virtual {p1, v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tykj/aapk/sdk/LocationService;I)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/tykj/aapk/sdk/LocationService;->getGPSStatusString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultOption()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    .line 71
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 72
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x7530

    .line 74
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/32 v2, 0xea60

    .line 76
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 78
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 79
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 80
    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v3}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 82
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 83
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 84
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setGeoLanguage(Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)Lcom/amap/api/location/AMapLocationClientOption;

    return-object v0
.end method

.method private getGPSStatusString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u6ca1\u6709GPS\u5b9a\u4f4d\u6743\u9650\uff0c\u5efa\u8bae\u5f00\u542fgps\u5b9a\u4f4d\u6743\u9650"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "\u9009\u62e9\u7684\u5b9a\u4f4d\u6a21\u5f0f\u4e2d\u4e0d\u5305\u542bGPS\u5b9a\u4f4d\uff0c\u5efa\u8bae\u9009\u62e9\u5305\u542bGPS\u5b9a\u4f4d\u7684\u6a21\u5f0f\uff0c\u63d0\u9ad8\u5b9a\u4f4d\u8d28\u91cf"

    goto :goto_0

    :cond_2
    const-string p1, "GPS\u5173\u95ed\uff0c\u5efa\u8bae\u5f00\u542fGPS\uff0c\u63d0\u9ad8\u5b9a\u4f4d\u8d28\u91cf"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "\u624b\u673a\u4e2d\u6ca1\u6709GPS Provider\uff0c\u65e0\u6cd5\u8fdb\u884cGPS\u5b9a\u4f4d"

    goto :goto_0

    :cond_4
    const-string p1, "GPS\u72b6\u6001\u6b63\u5e38"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public initLocation()V
    .locals 2

    .line 55
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 56
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/LocationService;->getDefaultOption()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 58
    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 60
    iget-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService;->locationListener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method

.method public startLocation()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 194
    iget-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    return-void
.end method

.method public stopLocation()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/tykj/aapk/sdk/LocationService;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    return-void
.end method
