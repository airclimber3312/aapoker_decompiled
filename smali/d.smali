.class public Ld;
.super Ljava/lang/Object;
.source "LocationActivityManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public a:Landroid/location/LocationManager;

.field public b:Landroid/content/Context;

.field public c:Lcom/aapoker/ProtocalLocation;

.field public d:Landroid/location/Location;

.field public final e:J

.field public f:Landroid/os/Handler;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 9
    iput-wide v0, p0, Ld;->e:J

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld;->f:Landroid/os/Handler;

    .line 20
    new-instance v0, Ld$a;

    invoke-direct {v0, p0}, Ld$a;-><init>(Ld;)V

    iput-object v0, p0, Ld;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Ld;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 2
    iput-object p1, p0, Ld;->d:Landroid/location/Location;

    return-object p1
.end method

.method public static synthetic a(Ld;)Landroid/location/LocationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Ld;->a:Landroid/location/LocationManager;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 16

    move-object/from16 v6, p0

    .line 6
    iget-object v0, v6, Ld;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v7, 0x2710

    const-string v9, ""

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-eqz v0, :cond_2

    const-string v0, "GPS"

    const-string/jumbo v1, "\u6709GPS\u6743\u9650"

    .line 7
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, v6, Ld;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Ld;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v13, v14}, Lcom/aapoker/ProtocalLocation;->setLatitude(D)V

    .line 12
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v13, v14}, Lcom/aapoker/ProtocalLocation;->setLongitude(D)V

    .line 13
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v10}, Lcom/aapoker/ProtocalLocation;->setStatus(I)V

    .line 14
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const-string v1, "unknow"

    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    .line 15
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    .line 17
    invoke-virtual {v1, v12}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 18
    invoke-virtual {v1, v0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    iget-object v0, v6, Ld;->d:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 23
    iget-object v0, v6, Ld;->f:Landroid/os/Handler;

    iget-object v1, v6, Ld;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, v6, Ld;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0xbb8

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 25
    iget-object v0, v6, Ld;->f:Landroid/os/Handler;

    iget-object v1, v6, Ld;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aapoker/ProtocalLocation;->setLatitude(D)V

    .line 28
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    iget-object v1, v6, Ld;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aapoker/ProtocalLocation;->setLongitude(D)V

    .line 29
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v15}, Lcom/aapoker/ProtocalLocation;->setStatus(I)V

    .line 30
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v9}, Lcom/aapoker/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    .line 31
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    .line 33
    invoke-virtual {v1, v12}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_1
    iget-object v1, v6, Ld;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    iget-object v0, v6, Ld;->d:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 41
    iget-object v0, v6, Ld;->f:Landroid/os/Handler;

    iget-object v1, v6, Ld;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    iget-object v0, v6, Ld;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0xbb8

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 43
    iget-object v0, v6, Ld;->f:Landroid/os/Handler;

    iget-object v1, v6, Ld;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 45
    :cond_3
    iget-object v1, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aapoker/ProtocalLocation;->setLatitude(D)V

    .line 46
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    iget-object v1, v6, Ld;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aapoker/ProtocalLocation;->setLongitude(D)V

    .line 47
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v15}, Lcom/aapoker/ProtocalLocation;->setStatus(I)V

    .line 48
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v9}, Lcom/aapoker/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    .line 49
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    .line 51
    invoke-virtual {v1, v12}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v11, v0

    :goto_2
    if-nez v11, :cond_5

    .line 59
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v13, v14}, Lcom/aapoker/ProtocalLocation;->setLatitude(D)V

    .line 60
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v13, v14}, Lcom/aapoker/ProtocalLocation;->setLongitude(D)V

    .line 61
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v10}, Lcom/aapoker/ProtocalLocation;->setStatus(I)V

    .line 62
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const-string v1, "unkonw"

    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    .line 64
    iget-object v0, v6, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    .line 66
    invoke-virtual {v1, v12}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 3
    iput-object p1, p0, Ld;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/aapoker/ProtocalLocation;

    invoke-direct {v0}, Lcom/aapoker/ProtocalLocation;-><init>()V

    iput-object v0, p0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const-string v0, "location"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Ld;->a:Landroid/location/LocationManager;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const-string v0, "onLocationChanged"

    const-string v1, "GPS"

    .line 1
    invoke-static {v1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Ld;->f:Landroid/os/Handler;

    iget-object v2, p0, Ld;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iput-object p1, p0, Ld;->d:Landroid/location/Location;

    .line 8
    iget-object v0, p0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aapoker/ProtocalLocation;->setLatitude(D)V

    .line 9
    iget-object v0, p0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aapoker/ProtocalLocation;->setLongitude(D)V

    .line 10
    iget-object p1, p0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/aapoker/ProtocalLocation;->setStatus(I)V

    .line 11
    iget-object p1, p0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/aapoker/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v0}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/4 v2, 0x3

    .line 15
    invoke-virtual {v0, v2}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
