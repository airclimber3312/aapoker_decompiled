.class public Lcom/tencent/imsdk/message/DownloadParam;
.super Ljava/lang/Object;
.source "DownloadParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static DOWNLOAD_FLAG_REQUEST_COS:I = 0x1

.field public static DOWNLOAD_FLAG_REQUEST_DIRECT_DOWNLOAD:I = 0x2

.field public static DOWNLOAD_FLAG_REQUEST_JIAPING:I = 0x0

.field public static UUID_TYPE_VIDEO_AUDIO:I = 0x3

.field public static UUID_TYPE_VIDEO_FILE:I = 0x1

.field public static UUID_TYPE_VIDEO_THUMB:I = 0x0

.field public static UUID_TYPE_VIDEO_VIDEO:I = 0x2


# instance fields
.field private businessID:I

.field private downloadFlag:I

.field private downloadUrl:Ljava/lang/String;

.field private fileSavePath:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private uuidType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBusinessID(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/tencent/imsdk/message/DownloadParam;->businessID:I

    return-void
.end method

.method public setDownloadFlag(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/tencent/imsdk/message/DownloadParam;->downloadFlag:I

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tencent/imsdk/message/DownloadParam;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileSavePath(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/imsdk/message/DownloadParam;->fileSavePath:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/imsdk/message/DownloadParam;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setUuidType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/tencent/imsdk/message/DownloadParam;->uuidType:I

    return-void
.end method
