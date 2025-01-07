.class public Lcom/tencent/imsdk/message/VideoElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "VideoElement.java"


# instance fields
.field private snapshotDownloadFlag:I

.field private snapshotDownloadUrl:Ljava/lang/String;

.field private snapshotFilePath:Ljava/lang/String;

.field private snapshotFileSize:I

.field private snapshotHeight:I

.field private snapshotType:Ljava/lang/String;

.field private snapshotUUID:Ljava/lang/String;

.field private snapshotWidth:I

.field private videoBusinessID:I

.field private videoDownloadFlag:I

.field private videoDownloadUrl:Ljava/lang/String;

.field private videoDuration:I

.field private videoFilePath:Ljava/lang/String;

.field private videoFileSize:I

.field private videoType:Ljava/lang/String;

.field private videoUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    const/4 v0, 0x5

    .line 25
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/VideoElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method public getSnapshotDownloadFlag()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotDownloadFlag:I

    return v0
.end method

.method public getSnapshotDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotFilePath()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotFileSize()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotFileSize:I

    return v0
.end method

.method public getSnapshotHeight()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotHeight:I

    return v0
.end method

.method public getSnapshotType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotType:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotUUID()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotWidth()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotWidth:I

    return v0
.end method

.method public getVideoBusinessID()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoBusinessID:I

    return v0
.end method

.method public getVideoDownloadFlag()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoDownloadFlag:I

    return v0
.end method

.method public getVideoDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoDuration:I

    return v0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFileSize()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoFileSize:I

    return v0
.end method

.method public getVideoType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoType:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUUID()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoUUID:Ljava/lang/String;

    return-object v0
.end method

.method public setSnapshotFilePath(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/imsdk/message/VideoElement;->videoDuration:I

    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/imsdk/message/VideoElement;->videoFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVideoType(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/imsdk/message/VideoElement;->videoType:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/tencent/imsdk/message/MessageBaseElement;)Z
    .locals 2

    .line 110
    iget v0, p0, Lcom/tencent/imsdk/message/VideoElement;->elementType:I

    iget v1, p1, Lcom/tencent/imsdk/message/MessageBaseElement;->elementType:I

    if-ne v0, v1, :cond_0

    .line 111
    check-cast p1, Lcom/tencent/imsdk/message/VideoElement;

    .line 112
    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/imsdk/message/VideoElement;->videoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p1, Lcom/tencent/imsdk/message/VideoElement;->videoUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoUUID:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/tencent/imsdk/message/VideoElement;->videoType:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoType:Ljava/lang/String;

    .line 115
    iget v0, p1, Lcom/tencent/imsdk/message/VideoElement;->videoFileSize:I

    iput v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoFileSize:I

    .line 116
    iget v0, p1, Lcom/tencent/imsdk/message/VideoElement;->videoDuration:I

    iput v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoDuration:I

    .line 117
    iget-object v0, p1, Lcom/tencent/imsdk/message/VideoElement;->videoDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoDownloadUrl:Ljava/lang/String;

    .line 118
    iget v0, p1, Lcom/tencent/imsdk/message/VideoElement;->videoDownloadFlag:I

    iput v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoDownloadFlag:I

    .line 119
    iget v0, p1, Lcom/tencent/imsdk/message/VideoElement;->videoBusinessID:I

    iput v0, p0, Lcom/tencent/imsdk/message/VideoElement;->videoBusinessID:I

    .line 121
    iget-object v0, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotUUID:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotType:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotType:Ljava/lang/String;

    .line 123
    iget v0, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotFileSize:I

    iput v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotFileSize:I

    .line 124
    iget v0, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotWidth:I

    iput v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotWidth:I

    .line 125
    iget v0, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotHeight:I

    iput v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotHeight:I

    .line 126
    iget-object v0, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotDownloadUrl:Ljava/lang/String;

    .line 127
    iget p1, p1, Lcom/tencent/imsdk/message/VideoElement;->snapshotDownloadFlag:I

    iput p1, p0, Lcom/tencent/imsdk/message/VideoElement;->snapshotDownloadFlag:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
