.class Lcom/tykj/aapk/sdk/LocationService$1;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tykj/aapk/sdk/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/LocationService;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/LocationService;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    const-string v2, "\n"

    if-nez v1, :cond_0

    const-string/jumbo v1, "\u5b9a\u4f4d\u6210\u529f\n"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    iget-object v1, v1, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setLatitude(D)V

    .line 121
    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    iget-object v1, v1, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setLongitude(D)V

    .line 122
    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    iget-object v1, v1, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setStatus(I)V

    .line 123
    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    iget-object v1, v1, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    iget-object v1, v1, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationQualityReport()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationQualityReport;->getGPSStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setStatus(I)V

    const-string/jumbo v1, "\u5b9a\u4f4d\u5931\u8d25\n"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9519\u8bef\u7801:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9519\u8bef\u4fe1\u606f:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9519\u8bef\u63cf\u8ff0:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "***\u5b9a\u4f4d\u8d28\u91cf\u62a5\u544a***\n* WIFI\u5f00\u5173\uff1a"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationQualityReport()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationQualityReport;->isWifiAble()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u5f00\u542f"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "\u5173\u95ed"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n* GPS\u72b6\u6001\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationQualityReport()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationQualityReport;->getGPSStatus()I

    move-result v3

    invoke-static {v1, v3}, Lcom/tykj/aapk/sdk/LocationService;->access$000(Lcom/tykj/aapk/sdk/LocationService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n* GPS\u661f\u6570\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationQualityReport()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationQualityReport;->getGPSSatellites()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "* \u7f51\u7edc\u7c7b\u578b\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationQualityReport()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationQualityReport;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "* \u7f51\u7edc\u8017\u65f6\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationQualityReport()Lcom/amap/api/location/AMapLocationQualityReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationQualityReport;->getNetUseTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\n****************\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u56de\u8c03\u65f6\u95f4: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v4, v1}, Lcom/tykj/aapk/sdk/Utils;->formatUTC(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    sget-object p1, Lcom/tykj/aapk/sdk/LocationService;->TGA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    iget-object p1, p1, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;->setStatus(I)V

    .line 145
    sget-object p1, Lcom/tykj/aapk/sdk/LocationService;->TGA:Ljava/lang/String;

    const-string/jumbo v0, "\u5b9a\u4f4d\u5931\u8d25\uff0cloc is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_2
    iget-object p1, p0, Lcom/tykj/aapk/sdk/LocationService$1;->this$0:Lcom/tykj/aapk/sdk/LocationService;

    iget-object p1, p1, Lcom/tykj/aapk/sdk/LocationService;->pLocation:Lcom/tykj/aapk/sdk/protocal/ProtocalLocation;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/4 v1, 0x3

    .line 150
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 152
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method
