.class public Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;
.super Ljava/lang/Object;
.source "GetConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/alivedetected/entity/GetConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public actions:Ljava/lang/String;

.field public asyncUploadImage:Z

.field public hdActions:Ljava/lang/String;

.field public needCloudCheck:Z

.field public needHdImage:Z

.field public needReduceCheck:Z

.field public needSample:Z

.field public nosConfig:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

.field public reduceCount:I

.field public sampleConfig:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$SampleConfig;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
