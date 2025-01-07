.class public Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;
.super Ljava/lang/Object;
.source "StatisticItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketName:Ljava/lang/String;

.field private chunkRetryCount:I

.field private clientIP:Ljava/lang/String;

.field private fileSize:J

.field private lbsHttpCode:I

.field private lbsIP:Ljava/lang/String;

.field private lbsSucc:I

.field private lbsUseTime:J

.field private netEnv:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private queryRetryCount:I

.field private sdkVersion:Ljava/lang/String;

.field private uploadRetryCount:I

.field private uploadType:I

.field private uploaderHttpCode:I

.field private uploaderIP:Ljava/lang/String;

.field private uploaderSucc:I

.field private uploaderUseTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem$1;

    invoke-direct {v0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem$1;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    .line 2
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->platform:Ljava/lang/String;

    const-string v0, "2.0"

    .line 4
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsSucc:I

    .line 12
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderSucc:I

    const/16 v1, 0xc8

    .line 13
    iput v1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsHttpCode:I

    .line 14
    iput v1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderHttpCode:I

    .line 15
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->chunkRetryCount:I

    .line 16
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->queryRetryCount:I

    .line 17
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadRetryCount:I

    const/16 v0, 0x3e8

    .line 19
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIIIIIIILjava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 65
    iput-object v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->platform:Ljava/lang/String;

    move-object v1, p2

    .line 66
    iput-object v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    move-object v1, p3

    .line 67
    iput-object v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    move-object v1, p4

    .line 68
    iput-object v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    move-object v1, p5

    .line 69
    iput-object v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    move-wide v1, p6

    .line 70
    iput-wide v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->fileSize:J

    move-object v1, p8

    .line 71
    iput-object v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    move-wide v1, p9

    .line 72
    iput-wide v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsUseTime:J

    move-wide v1, p11

    .line 73
    iput-wide v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderUseTime:J

    move/from16 v1, p13

    .line 74
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsSucc:I

    move/from16 v1, p14

    .line 75
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderSucc:I

    move/from16 v1, p15

    .line 76
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsHttpCode:I

    move/from16 v1, p16

    .line 77
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderHttpCode:I

    move/from16 v1, p17

    .line 78
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->chunkRetryCount:I

    move/from16 v1, p18

    .line 79
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->queryRetryCount:I

    move/from16 v1, p19

    .line 80
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadRetryCount:I

    move-object/from16 v1, p20

    .line 81
    iput-object v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    move/from16 v1, p21

    .line 82
    iput v1, v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getChunkRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->chunkRetryCount:I

    return v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->fileSize:J

    return-wide v0
.end method

.method public getLbsHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsHttpCode:I

    return v0
.end method

.method public getLbsIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLbsSucc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsSucc:I

    return v0
.end method

.method public getLbsUseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsUseTime:J

    return-wide v0
.end method

.method public getNetEnv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->queryRetryCount:I

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadRetryCount:I

    return v0
.end method

.method public getUploadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadType:I

    return v0
.end method

.method public getUploaderHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderHttpCode:I

    return v0
.end method

.method public getUploaderIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderSucc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderSucc:I

    return v0
.end method

.method public getUploaderUseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderUseTime:J

    return-wide v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setChunkRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->chunkRetryCount:I

    return-void
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->fileSize:J

    return-void
.end method

.method public setLbsHttpCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsHttpCode:I

    return-void
.end method

.method public setLbsIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    return-void
.end method

.method public setLbsSucc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsSucc:I

    return-void
.end method

.method public setLbsUseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsUseTime:J

    return-void
.end method

.method public setNetEnv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    return-void
.end method

.method public setQueryRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->queryRetryCount:I

    return-void
.end method

.method public setUploadRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadRetryCount:I

    return-void
.end method

.method public setUploadType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadType:I

    return-void
.end method

.method public setUploaderHttpCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderHttpCode:I

    return-void
.end method

.method public setUploaderIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    return-void
.end method

.method public setUploaderSucc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderSucc:I

    return-void
.end method

.method public setUploaderUseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderUseTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsUseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderUseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsSucc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderSucc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->lbsHttpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploaderHttpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->chunkRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->queryRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->uploadType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
