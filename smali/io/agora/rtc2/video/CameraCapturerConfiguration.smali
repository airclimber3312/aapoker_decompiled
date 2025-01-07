.class public Lio/agora/rtc2/video/CameraCapturerConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;,
        Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;,
        Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;
    }
.end annotation


# instance fields
.field public cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

.field public cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

.field public cameraId:Ljava/lang/String;

.field public captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

.field public followEncodeDimensionRatio:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDirection"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraId:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->followEncodeDimensionRatio:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    new-instance p1, Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;-><init>(III)V

    iput-object p1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDirection",
            "cameraFocalLengthType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraId:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->followEncodeDimensionRatio:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    iput-object p2, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

    new-instance p1, Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;-><init>(III)V

    iput-object p1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraDirection",
            "cameraFocalLengthType",
            "captureFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraId:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->followEncodeDimensionRatio:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    iput-object p2, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

    iput-object p3, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDirection",
            "captureFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraId:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->followEncodeDimensionRatio:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    iput-object p2, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraId:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

    iput-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->followEncodeDimensionRatio:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    return-void
.end method


# virtual methods
.method public getCameraDirection()Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    return-object v0
.end method

.method public getCameraFocalLengthType()Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureFormat()Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    return-object v0
.end method

.method public isFollowEncodeDimensionRatio()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->followEncodeDimensionRatio:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraCapturerConfiguration{cameraDirection="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", captureDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->captureFormat:Lio/agora/rtc2/video/CameraCapturerConfiguration$CaptureFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", followEncodeDimensionRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->followEncodeDimensionRatio:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraFocalLengthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/video/CameraCapturerConfiguration;->cameraFocalLengthType:Lio/agora/rtc2/video/CameraCapturerConfiguration$CAMERA_FOCAL_LENGTH_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
