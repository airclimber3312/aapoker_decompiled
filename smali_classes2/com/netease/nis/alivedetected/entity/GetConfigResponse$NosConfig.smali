.class public Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;
.super Ljava/lang/Object;
.source "GetConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/alivedetected/entity/GetConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NosConfig"
.end annotation


# instance fields
.field public avatarData:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;

.field public avatarErrorData:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;

.field public bucketName:Ljava/lang/String;

.field public checkImageDatas:[Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;

.field public errorImageDatas:[Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;

.field public hdActionImageData:[Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;

.field public hdAvatarData:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;

.field public host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
