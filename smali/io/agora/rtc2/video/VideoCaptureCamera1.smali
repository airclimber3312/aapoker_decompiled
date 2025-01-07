.class public Lio/agora/rtc2/video/VideoCaptureCamera1;
.super Lio/agora/rtc2/video/VideoCaptureCamera;
.source "VideoCaptureCamera1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/video/VideoCaptureCamera1$CameraLengthTask;,
        Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;,
        Lio/agora/rtc2/video/VideoCaptureCamera1$BuggyDeviceHack;
    }
.end annotation


# static fields
.field private static final CAMERA_ERROR_DISABLED:I = 0x3

.field private static final COLOR_TEMPERATURES_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static IMAGE_FORMAT:I = 0x0

.field private static final NUM_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoCaptureCamera1"

.field private static final mFocalLengthLock:Ljava/lang/Object;


# instance fields
.field private mAreaOfInterest:Landroid/hardware/Camera$Area;

.field private mCamera:Landroid/hardware/Camera;

.field private volatile mCameraErrorTrigger:Z

.field private mExpectedFrameSize:I

.field private mIsRunning:Z

.field private final mObjectLock:Ljava/lang/Object;

.field private mPhysicalId:I

.field private mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPreviewParameters:Landroid/hardware/Camera$Parameters;

.field private mVideoCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

.field private physicalCameraInVaild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseArray;

    const/16 v1, 0xb22

    const-string v2, "incandescent"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb86

    const-string/jumbo v2, "warm-fluorescent"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x109a

    const-string v2, "fluorescent"

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x11f8

    const-string v2, "twilight"

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x157c

    const-string v2, "daylight"

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1770

    const-string v2, "cloudy-daylight"

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1b58

    const-string v2, "shade"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0x11

    .line 120
    sput v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->IMAGE_FORMAT:I

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mFocalLengthLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)V
    .locals 3

    move-object v0, p0

    move/from16 v1, p17

    .line 468
    invoke-direct/range {p0 .. p17}, Lio/agora/rtc2/video/VideoCaptureCamera;-><init>(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)V

    const/4 v2, -0x1

    .line 123
    iput v2, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPhysicalId:I

    .line 130
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x0

    .line 133
    iput-boolean v2, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->physicalCameraInVaild:Z

    .line 134
    iput-boolean v2, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraErrorTrigger:Z

    .line 135
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mObjectLock:Ljava/lang/Object;

    if-ltz v1, :cond_0

    .line 472
    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPhysicalId:I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lio/agora/rtc2/video/VideoCaptureCamera1;I)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->toCamera1ABMode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lio/agora/rtc2/video/VideoCaptureCamera1;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraErrorTrigger:Z

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 62
    iget-object p0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$1300(Lio/agora/rtc2/video/VideoCaptureCamera1;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$1401(Lio/agora/rtc2/video/VideoCaptureCamera1;I)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera;->onFrameDropped(I)V

    return-void
.end method

.method static synthetic access$1500(Lio/agora/rtc2/video/VideoCaptureCamera1;)I
    .locals 0

    .line 62
    iget p0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mExpectedFrameSize:I

    return p0
.end method

.method static synthetic access$200(Lio/agora/rtc2/video/VideoCaptureCamera1;)I
    .locals 0

    .line 62
    iget p0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPhysicalId:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .line 62
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mFocalLengthLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lio/agora/rtc2/video/VideoCaptureCamera1;)Landroid/hardware/Camera;
    .locals 0

    .line 62
    iget-object p0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$402(Lio/agora/rtc2/video/VideoCaptureCamera1;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .line 62
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$500(Lio/agora/rtc2/video/VideoCaptureCamera1;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->physicalCameraInVaild:Z

    return p0
.end method

.method static synthetic access$502(Lio/agora/rtc2/video/VideoCaptureCamera1;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->physicalCameraInVaild:Z

    return p1
.end method

.method static synthetic access$600(Lio/agora/rtc2/video/VideoCaptureCamera1;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->physicalFallback()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lio/agora/rtc2/video/VideoCaptureCamera1;[Landroid/hardware/Camera$Face;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->notifyFaceDetection([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method static synthetic access$800(Lio/agora/rtc2/video/VideoCaptureCamera1;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->safetyStopFaceDetection()V

    return-void
.end method

.method static synthetic access$900(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/lang/Object;
    .locals 0

    .line 62
    iget-object p0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mObjectLock:Ljava/lang/Object;

    return-object p0
.end method

.method private static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 3

    .line 140
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 142
    :try_start_0
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 144
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCameraInfo: Camera.getCameraInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getCaptureApiType(I)I
    .locals 0

    .line 232
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0xb

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0
.end method

.method private getClosestWhiteBalance(ILjava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 155
    :goto_0
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->COLOR_TEMPERATURES_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 156
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v4, v0, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    move v0, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static getDeviceId(I)Ljava/lang/String;
    .locals 0

    .line 269
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDeviceSupportedFormats(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/agora/rtc2/video/VideoCaptureFormat;",
            ">;"
        }
    .end annotation

    const-string v0, "Failed to release camera: "

    const-string v1, "Failed to get camera parameters "

    const-string v2, "Camera.open: "

    .line 274
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceSupportedFormats() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->mFocalLengthLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    .line 280
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 287
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 291
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 293
    :try_start_3
    sget-object v6, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v5}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    :goto_0
    sget v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->IMAGE_FORMAT:I

    invoke-static {v4, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getFormatsFromParemeters(Landroid/hardware/Camera$Parameters;I)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 299
    :try_start_5
    sget-object v4, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :goto_1
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 282
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    monitor-exit v3

    return-object v4

    .line 301
    :goto_2
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method static getFacingMode(I)I
    .locals 2

    .line 239
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 244
    :cond_0
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method static getFocalLength(Landroid/hardware/Camera$Parameters;)F
    .locals 3

    if-eqz p0, :cond_0

    .line 1066
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result p0

    .line 1067
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCameraParameters: Camera.focalLength: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 1070
    :cond_0
    sget-object p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v0, "failed get focalLength"

    invoke-static {p0, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method static getFocalLengthInfo(IIZ[Lio/agora/rtc2/video/FocalLengthInfo;)Z
    .locals 17

    move/from16 v1, p1

    move/from16 v0, p2

    const-string v2, " focalLengthType: 2 front: "

    const-string v3, " focalLengthType: 1 front: "

    const-string v4, "getFocalLengthInfo cameraDirection "

    const-string v5, "getFocalLengthInfo cameraDirection "

    const-string v6, "Failed to release camera: "

    const-string v7, "The "

    const-string v8, "Failed to get camera parameters "

    const-string v9, "Camera.open: "

    .line 351
    sget-object v10, Lio/agora/rtc2/video/VideoCaptureCamera1;->mFocalLengthLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v11, 0x0

    .line 355
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 362
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v11

    .line 366
    :cond_0
    :try_start_2
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    :try_start_3
    invoke-static {v8}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getFocalLength(Landroid/hardware/Camera$Parameters;)F

    move-result v8

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 373
    :goto_0
    sget-object v14, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v7, "front Camera "

    goto :goto_1

    :cond_2
    const-string v7, "rear Camera "

    .line 374
    :goto_1
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "minimum supported value is: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v7, v7, v8

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "mm"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-static {v14, v7}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, p0, -0x1

    mul-int/lit8 v7, v7, 0x6

    if-eqz v0, :cond_3

    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    const/16 v16, 0x3

    :goto_2
    add-int v16, v7, v16

    add-int/lit8 v15, v16, 0x0

    .line 377
    new-instance v12, Lio/agora/rtc2/video/FocalLengthInfo;

    invoke-direct {v12, v13, v15, v1, v11}, Lio/agora/rtc2/video/FocalLengthInfo;-><init>(IIII)V

    aput-object v12, p3, v15

    const v12, 0x4019999a    # 2.4f

    cmpl-float v15, v8, v12

    if-ltz v15, :cond_5

    const/high16 v15, 0x40600000    # 3.5f

    cmpg-float v15, v8, v15

    if-gez v15, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x3

    :goto_3
    add-int/2addr v7, v11

    const/4 v2, 0x1

    add-int/2addr v7, v2

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " index: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lio/agora/rtc2/video/FocalLengthInfo;

    const/4 v3, 0x1

    invoke-direct {v0, v13, v7, v1, v3}, Lio/agora/rtc2/video/FocalLengthInfo;-><init>(IIII)V

    aput-object v0, p3, v7

    :goto_4
    const/4 v11, 0x1

    goto :goto_6

    :cond_5
    const/4 v3, 0x1

    cmpg-float v5, v8, v12

    if-gez v5, :cond_7

    float-to-double v11, v8

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v11, v15

    if-lez v8, :cond_7

    if-eqz v0, :cond_6

    const/4 v11, 0x0

    goto :goto_5

    :cond_6
    const/4 v11, 0x3

    :goto_5
    add-int/2addr v7, v11

    const/4 v5, 0x2

    add-int/2addr v7, v5

    .line 388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " index: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " id: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lio/agora/rtc2/video/FocalLengthInfo;

    invoke-direct {v0, v13, v7, v1, v5}, Lio/agora/rtc2/video/FocalLengthInfo;-><init>(IIII)V

    aput-object v0, p3, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    .line 395
    :goto_6
    :try_start_4
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 397
    :try_start_5
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    :goto_7
    monitor-exit v10

    return v11

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 368
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    monitor-exit v10

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 357
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    monitor-exit v10

    const/4 v1, 0x0

    return v1

    .line 399
    :goto_8
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private static getFormatsFromParemeters(Landroid/hardware/Camera$Parameters;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "I)",
            "Ljava/util/List<",
            "Lio/agora/rtc2/video/VideoCaptureFormat;",
            ">;"
        }
    .end annotation

    .line 406
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "getFormatsFromParemeters() "

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v1

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 413
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 418
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 421
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_3

    goto :goto_0

    .line 430
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 432
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Camera.Parameters.getSupportedPreviewFpsRange: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 438
    fill-array-data v3, :array_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x1

    .line 444
    aget v4, v4, v5

    add-int/lit16 v4, v4, 0x3e7

    div-int/lit16 v4, v4, 0x3e8

    if-ge v3, v4, :cond_6

    move v3, v4

    goto :goto_2

    .line 450
    :cond_7
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 451
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_0

    .line 454
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 455
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v5, v6}, Lio/agora/rtc2/video/VideoCaptureCamera1;->shouldExcludeSize(II)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    .line 458
    :cond_9
    new-instance v5, Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    const/16 v7, 0x11

    invoke-direct {v5, v6, v4, v3, v7}, Lio/agora/rtc2/video/VideoCaptureFormat;-><init>(IIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    return-object v1

    :cond_b
    :goto_4
    const-string p0, "failed to getFormatsFromParemeters, preview formats null or empty"

    .line 414
    invoke-static {v0, p0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static getName(I)Ljava/lang/String;
    .locals 3

    .line 256
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , failed to getCameraInfo."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 262
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", facing "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "front"

    goto :goto_0

    :cond_1
    const-string p0, "back"

    .line 264
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNumberOfCameras()I
    .locals 1

    .line 227
    new-instance v0, Lio/agora/rtc2/video/VideoCaptureCamera1$CameraLengthTask;

    invoke-direct {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1$CameraLengthTask;-><init>()V

    .line 228
    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1$CameraLengthTask;->getCameraIdLength()I

    move-result v0

    return v0
.end method

.method private getZoomRatios()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1824
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1825
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1826
    invoke-direct {p0, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1887
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isZoomSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1835
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1839
    :cond_0
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "camera zoom is not supported!"

    invoke-static {p1, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private listenForBytebufferFrames()V
    .locals 2

    .line 1767
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureCamera1$12;

    invoke-direct {v1, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$12;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method private listenForTextureFrames()V
    .locals 2

    .line 1718
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    if-nez v0, :cond_0

    return-void

    .line 1721
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureCamera1$11;

    invoke-direct {v1, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$11;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    invoke-interface {v0, v1}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->startListening(Lio/agora/base/internal/video/VideoSink;)V

    return-void
.end method

.method private notifyFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1847
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1848
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    iget v4, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    .line 1855
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_8

    .line 1856
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 1859
    :cond_0
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v1, v6

    .line 1860
    new-instance v8, Landroid/graphics/RectF;

    iget-object v7, v7, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v8}, Lio/agora/rtc2/video/CoordinatesTransform;->cameraToNormalized(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-nez v9, :cond_1

    goto/16 :goto_4

    .line 1864
    :cond_1
    iget v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1865
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-double v10, v7

    const-wide v12, -0x40115810624dd2f2L    # -0.958

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x4026795810624dd3L    # 11.237

    goto :goto_1

    .line 1866
    :cond_2
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-double v10, v7

    const-wide v12, -0x4010ed916872b021L    # -0.971

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x402d7020c49ba5e3L    # 14.719

    :goto_1
    mul-double v10, v10, v12

    .line 1864
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1867
    iget-object v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v7}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v10

    iget-object v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v7}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v11

    iget-object v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    .line 1868
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    iget-object v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v13, v7, Landroid/hardware/Camera$Size;->height:I

    iget v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v7, v8, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 1870
    :goto_2
    iget v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, -0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result v15

    mul-int v15, v15, v7

    iget v7, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderMode:I

    move/from16 v16, v7

    .line 1867
    invoke-static/range {v9 .. v16}, Lio/agora/rtc2/video/CoordinatesTransform;->normalizedToView(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1873
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 1876
    :cond_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1878
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    .line 1882
    :cond_7
    iget-object v1, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 1883
    invoke-virtual {v1}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v1

    iget-object v4, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-virtual {v4}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v4

    .line 1882
    invoke-virtual {v0, v1, v4, v2, v3}, Lio/agora/rtc2/video/VideoCaptureCamera1;->notifyFaceDetection(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private onFaceDetectionRequestChanged()V
    .locals 3

    .line 866
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableAutoFaceFocus:Z

    if-eqz v0, :cond_0

    .line 867
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection for auto focus enabled"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v0, Lio/agora/rtc2/video/VideoCaptureCamera1$3;

    invoke-direct {v0, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$3;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    .line 942
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isFaceDetectSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    invoke-direct {p0, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->safetyStarFaceDetection(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_0

    .line 945
    :cond_0
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableFaceDetection:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isFaceDetectSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    new-instance v0, Lio/agora/rtc2/video/VideoCaptureCamera1$4;

    invoke-direct {v0, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$4;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    .line 953
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v2, "startFaceDetection for face dectect enabled"

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-direct {p0, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->safetyStarFaceDetection(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_0

    .line 956
    :cond_1
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->safetyStopFaceDetection()V

    :cond_2
    :goto_0
    return-void
.end method

.method private physicalFallback()Z
    .locals 5

    const-string v0, "allocate: Camera.open: "

    .line 712
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mFocalLengthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_0
    iget v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :try_start_1
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 716
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 719
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static queryCameraFocalLengthCapability()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/agora/rtc2/video/FocalLengthInfo;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getNumberOfCameras()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0xc

    new-array v2, v1, [Lio/agora/rtc2/video/FocalLengthInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    .line 315
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 316
    invoke-static {v4, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v7, 0x1

    .line 317
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-gt v4, v8, :cond_2

    .line 320
    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v7, v4, v6, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getFocalLengthInfo(IIZ[Lio/agora/rtc2/video/FocalLengthInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 326
    :cond_2
    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v8, 0x2

    invoke-static {v8, v4, v6, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getFocalLengthInfo(IIZ[Lio/agora/rtc2/video/FocalLengthInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    .line 334
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v4, "Logical Camera, FocalLengths empty!"

    invoke-static {v0, v4}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 336
    :cond_6
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v4, "Logical Camera, FocalLengths available."

    invoke-static {v0, v4}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-ge v3, v1, :cond_8

    .line 340
    aget-object v4, v2, v3

    .line 341
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 342
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    return-object v0
.end method

.method private releaseCamera()V
    .locals 4

    .line 1691
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1692
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "proxyThread unavailable"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1696
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureCamera1$10;

    invoke-direct {v1, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$10;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1713
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "releaseCamera: failed to release camera, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private safetyStarFaceDetection(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 3

    .line 961
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "facedetect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableFaceDetection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 964
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 967
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 968
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startFaceDetection()V

    const/4 p1, 0x1

    .line 969
    iput-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsFaceDetectionStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 972
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "Failed to stop face detection"

    invoke-static {v0, v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 973
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    .line 974
    invoke-virtual {p1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 975
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    const/4 p1, 0x0

    .line 976
    iput-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsFaceDetectionStarted:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private safetyStopFaceDetection()V
    .locals 4

    .line 982
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection()"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 984
    :try_start_0
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsFaceDetectionStarted:Z

    if-eqz v1, :cond_1

    .line 985
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 986
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    :cond_0
    const/4 v1, 0x0

    .line 988
    iput-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsFaceDetectionStarted:Z

    .line 989
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPerFrameFaceDetectionInfoQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :cond_1
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 995
    :goto_0
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 992
    :try_start_1
    sget-object v2, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v3, "Failed to stop face detection"

    invoke-static {v2, v3, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 995
    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    :cond_3
    throw v1
.end method

.method private setPreviewFrameRateMode(Landroid/hardware/Camera$Parameters;IZ)V
    .locals 9

    .line 843
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 845
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 849
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-le v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x3e8

    .line 850
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 851
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 853
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 854
    new-instance v7, Lio/agora/rtc2/video/VideoCapture$FramerateRange;

    aget v8, v6, v1

    mul-int v8, v8, v2

    aget v6, v6, v3

    mul-int v6, v6, v2

    invoke-direct {v7, v8, v6}, Lio/agora/rtc2/video/VideoCapture$FramerateRange;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    mul-int/lit16 p2, p2, 0x3e8

    .line 857
    invoke-static {v5, p2, p3}, Lio/agora/rtc2/video/VideoCaptureCamera1;->findBestFrameRateRange(Ljava/util/List;IZ)Lio/agora/rtc2/video/VideoCapture$FramerateRange;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 859
    iget p3, p2, Lio/agora/rtc2/video/VideoCapture$FramerateRange;->min:I

    div-int/2addr p3, v2

    iget p2, p2, Lio/agora/rtc2/video/VideoCapture$FramerateRange;->max:I

    div-int/2addr p2, v2

    invoke-virtual {p1, p3, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_3

    .line 846
    :cond_3
    :goto_2
    sget-object p3, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v0, "allocate: camera don\'t supported fps first."

    invoke-static {p3, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private setPreviewFrameRateModePQ(Landroid/hardware/Camera$Parameters;I)V
    .locals 6

    .line 817
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 818
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 822
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 823
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 824
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 825
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_1

    .line 828
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v2

    move v2, v5

    goto :goto_0

    .line 832
    :cond_2
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 833
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v4, v4, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    .line 835
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v1, v1, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    const/4 p2, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p2

    const-string p2, "allocate: matched (%d x %d) @%d -set- @%d, PQ first"

    .line 834
    invoke-static {v0, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 833
    invoke-static {p1, p2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 819
    :cond_3
    :goto_1
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v2, "allocate: camera don\'t supported PQ first."

    invoke-static {v0, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-direct {p0, p1, p2, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setPreviewFrameRateMode(Landroid/hardware/Camera$Parameters;IZ)V

    :goto_2
    return-void
.end method

.method private toCamera1ABMode(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "auto"

    return-object p1

    :cond_0
    const-string p1, "60hz"

    return-object p1

    :cond_1
    const-string p1, "50hz"

    return-object p1

    :cond_2
    const-string p1, "off"

    return-object p1
.end method


# virtual methods
.method public allocate(Lio/agora/rtc2/video/VideoCaptureFormat;)Z
    .locals 12

    const-string v0, "allocate: "

    .line 526
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    .line 527
    invoke-virtual {p1}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 528
    invoke-virtual {p1}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lio/agora/rtc2/video/VideoCaptureFormat;->getFramerate()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "allocate: requested (%d x %d) @%dfps"

    .line 527
    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    if-nez v2, :cond_0

    const-string p1, "surfaceTextureHelper null"

    .line 532
    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 536
    :cond_0
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    const-string p1, "proxyThread unavailable"

    .line 537
    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 541
    :cond_1
    iget v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-static {v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "failed to get camera info for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    return v6

    .line 548
    :cond_2
    iput-boolean v6, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->physicalCameraInVaild:Z

    .line 551
    :try_start_0
    iget-object v4, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    new-instance v5, Lio/agora/rtc2/video/VideoCaptureCamera1$1;

    invoke-direct {v5, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$1;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    const-wide/16 v9, 0x7d0

    invoke-static {v4, v9, v10, v5}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v4, :cond_12

    .line 586
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_6

    .line 589
    :cond_3
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mVideoCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 590
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraNativeOrientation:I

    .line 592
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mInvertDeviceOrientationReadings:Z

    .line 594
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    .line 596
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getDeviceRotation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraNativeOrientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-boolean v5, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mInvertDeviceOrientationReadings:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "allocate: Rotation dev=%d, cam=%d, facing back? %s"

    .line 595
    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 602
    sget-object v2, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to get camera parameters for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 605
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v0, "failed to get camera parameters"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    return v6

    .line 611
    :cond_5
    sget v2, Lio/agora/rtc2/video/VideoCaptureCamera1;->IMAGE_FORMAT:I

    invoke-static {v1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getFormatsFromParemeters(Landroid/hardware/Camera$Parameters;I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    return v6

    .line 615
    :cond_6
    sget-object v4, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "format list: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {v2, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->FindBestMatchedCapability(Ljava/util/List;Lio/agora/rtc2/video/VideoCaptureFormat;)Lio/agora/rtc2/video/VideoCaptureFormat;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 617
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    if-nez p1, :cond_7

    const-string p1, "failed to match capability"

    .line 618
    invoke-static {v4, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    return v6

    .line 623
    :cond_7
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget p1, p1, Lio/agora/rtc2/video/VideoCaptureFormat;->mFramerate:I

    .line 624
    iget-boolean v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFpsRangeEnable:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPQFirst:Z

    if-eqz v2, :cond_8

    .line 625
    invoke-direct {p0, v1, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setPreviewFrameRateModePQ(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_2

    .line 627
    :cond_8
    iget-boolean v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPQFirst:Z

    invoke-direct {p0, v1, p1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setPreviewFrameRateMode(Landroid/hardware/Camera$Parameters;IZ)V

    .line 630
    :goto_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    const-string v2, "Continuous focus mode not supported."

    const-string v5, "auto"

    const-string v9, "continuous-video"

    if-eqz p1, :cond_e

    .line 631
    iget v10, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusMode:I

    if-eqz v10, :cond_e

    .line 632
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "supported focusModes: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusMode:I

    if-eq v10, v8, :cond_9

    iget v8, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusMode:I

    if-ne v8, v7, :cond_a

    .line 635
    :cond_9
    invoke-virtual {v1, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string p1, "Continuous focus mode continuous video."

    .line 636
    invoke-static {v4, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v8, "continuous-picture"

    .line 637
    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusMode:I

    if-eq v10, v3, :cond_b

    iget v10, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusMode:I

    if-ne v10, v7, :cond_c

    .line 639
    :cond_b
    invoke-virtual {v1, v8}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string p1, "Continuous focus mode continuous picture."

    .line 640
    invoke-static {v4, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 641
    :cond_c
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusMode:I

    if-ne p1, v7, :cond_d

    .line 643
    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string p1, "Continuous focus mode auto."

    .line 644
    invoke-static {v4, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 646
    :cond_d
    invoke-static {v4, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_e
    :goto_3
    iget p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mSkipControl:I

    if-eq p1, v7, :cond_f

    .line 651
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 653
    invoke-virtual {v1, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_4

    .line 655
    :cond_f
    invoke-static {v4, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_4
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Camera "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "supports white balance: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-boolean v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraAutoWhiteBalance:Z

    if-eqz v2, :cond_10

    .line 662
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 663
    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 667
    :cond_10
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget p1, p1, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    invoke-virtual {v1, p1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 668
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget p1, p1, Lio/agora/rtc2/video/VideoCaptureFormat;->mPixelFormat:I

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 671
    :try_start_2
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 679
    :try_start_3
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v1, v1, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    invoke-interface {p1, v1, v2}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->setTextureSize(II)V

    .line 680
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    invoke-interface {v1}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 691
    new-instance p1, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;

    invoke-direct {p1, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    .line 693
    invoke-virtual {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->notifyInjector(Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 697
    iget-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureToTexture:Z

    if-nez p1, :cond_11

    .line 698
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget p1, p1, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v0, v0, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    mul-int p1, p1, v0

    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v0, v0, Lio/agora/rtc2/video/VideoCaptureFormat;->mPixelFormat:I

    .line 699
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mExpectedFrameSize:I

    const/4 p1, 0x0

    :goto_5
    if-ge p1, v3, :cond_11

    .line 701
    iget v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mExpectedFrameSize:I

    new-array v0, v0, [B

    .line 702
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 707
    :cond_11
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return v7

    :catch_1
    move-exception p1

    .line 686
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    return v6

    :catch_2
    move-exception p1

    .line 682
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    return v6

    :catch_3
    move-exception p1

    .line 673
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    :catch_4
    :cond_12
    :goto_6
    return v6
.end method

.method public deallocate()V
    .locals 2

    .line 1668
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "deallocate()"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->stopCaptureAndBlockUntilStopped()V

    .line 1670
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "proxyThread unavailable"

    .line 1671
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1674
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureCamera1$9;

    invoke-direct {v1, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$9;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1687
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    return-void
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .line 1811
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1813
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v2, "getCameraParameters: Camera.getParameters: "

    invoke-static {v1, v2, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1814
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1815
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->safetyStopFaceDetection()V

    .line 1816
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->releaseCamera()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 3

    .line 1143
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1144
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1146
    invoke-direct {p0, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1150
    :goto_0
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 1152
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public isAutoFaceFocusSupported()Z
    .locals 3

    .line 1322
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "auto"

    .line 1326
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCameraExposureSupported()Z
    .locals 6

    .line 1563
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1566
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 1567
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 1568
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isCameraExposureSupported compensation min: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isExposureSupported()Z
    .locals 2

    .line 1552
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1553
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFaceDetectSupported()Z
    .locals 5

    .line 1491
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1492
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1494
    sget-object v2, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "face dedect, numDetectedFaces: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFocusSupported()Z
    .locals 3

    .line 1160
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "auto"

    .line 1164
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isTorchSupported()Z
    .locals 2

    .line 1503
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "torch"

    .line 1506
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .line 1077
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1079
    invoke-direct {p0, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needFallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onCameraAvailable, Wrong state, mIsRunning: "

    .line 478
    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 481
    :cond_0
    iget p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 483
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to get camera info for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 486
    :cond_1
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 488
    :try_start_0
    iget-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraErrorTrigger:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_0

    .line 495
    :cond_2
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    .line 497
    invoke-virtual {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onAvailable(I)V

    return-void

    .line 489
    :cond_3
    :goto_0
    :try_start_1
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " cameraError: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraErrorTrigger:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected onCameraUnavailable(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onCameraUnavailable, Wrong state, mIsRunning: "

    .line 502
    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 505
    :cond_0
    iget p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 507
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to get camera info for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 510
    :cond_1
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 512
    :try_start_0
    iget-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraErrorTrigger:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto :goto_0

    .line 519
    :cond_2
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    .line 521
    invoke-virtual {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onAvailable(I)V

    return-void

    .line 513
    :cond_3
    :goto_0
    :try_start_1
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " cameraError: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraErrorTrigger:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAntiBandingMode(I)I
    .locals 3

    .line 1401
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1404
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    new-instance v2, Lio/agora/rtc2/video/VideoCaptureCamera1$8;

    invoke-direct {v2, p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1$8;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;I)V

    .line 1405
    invoke-static {v0, v2}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1431
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public setAutoFaceFocus(Z)I
    .locals 2

    .line 1334
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableAutoFaceFocus:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 1338
    :cond_0
    iput-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableAutoFaceFocus:Z

    .line 1339
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onFaceDetectionRequestChanged()V

    return v1
.end method

.method public setEdgeEnhanceMode(I)I
    .locals 1

    .line 1395
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v0, "EdgeEnhancement not supported in camera1 "

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setExposure(FF)I
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 1577
    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_10

    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v3}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v3}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_8

    .line 1582
    :cond_0
    iget-boolean v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraExposureStarted:Z

    if-eqz v3, :cond_1

    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aget v3, v3, v4

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v6, v8

    if-gez v3, :cond_1

    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aget v3, v3, v5

    sub-float/2addr v3, v2

    .line 1583
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v6, v8

    if-gez v3, :cond_1

    return v4

    .line 1586
    :cond_1
    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aput v0, v3, v4

    .line 1587
    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aput v2, v3, v5

    .line 1589
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setExposure called camera api1 x = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    cmpg-float v8, v0, v6

    if-ltz v8, :cond_f

    .line 1591
    iget-object v8, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v8}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-gtz v8, :cond_f

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_f

    iget-object v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    .line 1592
    invoke-virtual {v6}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_2

    goto/16 :goto_7

    .line 1597
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v6, :cond_e

    .line 1598
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_6

    .line 1601
    :cond_3
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v0, v2, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    .line 1603
    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v9

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v10

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    .line 1604
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v12, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v0, v5, :cond_4

    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    .line 1605
    :goto_0
    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v0, v5, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result v2

    mul-int v14, v0, v2

    iget v15, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderMode:I

    .line 1601
    invoke-static/range {v8 .. v15}, Lio/agora/rtc2/video/CoordinatesTransform;->viewToNormalized(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;

    move-result-object v0

    const-string v2, "Failed to translate input coordinate"

    if-nez v0, :cond_6

    .line 1608
    invoke-static {v3, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 1612
    :cond_6
    iget v6, v0, Landroid/graphics/RectF;->left:F

    .line 1613
    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x3fc00000    # 1.5f

    .line 1615
    invoke-static {v6, v0, v8}, Lio/agora/rtc2/video/CoordinatesTransform;->calculateFocusArea(FFF)Landroid/graphics/Rect;

    move-result-object v0

    .line 1616
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v6}, Lio/agora/rtc2/video/CoordinatesTransform;->cameraToNormalized(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 1617
    iget-object v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v9, v6, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    iget-object v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v10, v6, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    iget-object v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v11, v6, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    iget-object v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v12, v6, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lio/agora/rtc2/video/CoordinatesTransform;->normalizedToSensor(Landroid/graphics/RectF;IIIIIZ)Landroid/graphics/RectF;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1620
    invoke-static {v3, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 1623
    :cond_7
    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1625
    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_a

    .line 1626
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v0, "getCameraParameters null"

    .line 1628
    invoke-static {v3, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 1632
    :cond_8
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v6

    if-lez v6, :cond_9

    .line 1633
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    new-instance v8, Landroid/hardware/Camera$Area;

    const/16 v9, 0x320

    invoke-direct {v8, v0, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    invoke-virtual {v2, v6}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_2

    :cond_9
    const-string v6, "metering areas not supported"

    .line 1637
    invoke-static {v3, v6}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :goto_2
    :try_start_0
    iput-boolean v5, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraExposureStarted:Z

    .line 1642
    iget-object v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1643
    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1645
    sget-object v2, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setExposure failed, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 1650
    :cond_a
    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1651
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v9

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 1652
    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v10

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v11, v0, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v12, v0, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    const/4 v13, 0x0

    .line 1651
    invoke-static/range {v8 .. v13}, Lio/agora/rtc2/video/CoordinatesTransform;->sensorToNormalized(Landroid/graphics/RectF;IIIIZ)Landroid/graphics/RectF;

    move-result-object v14

    .line 1653
    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v15

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v16

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 1654
    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v17

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v18

    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v0, v5, :cond_b

    const/16 v19, 0x1

    goto :goto_4

    :cond_b
    const/16 v19, 0x0

    .line 1656
    :goto_4
    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v0, v5, :cond_c

    goto :goto_5

    :cond_c
    const/4 v5, -0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result v0

    mul-int v20, v5, v0

    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderMode:I

    move/from16 v21, v0

    .line 1653
    invoke-static/range {v14 .. v21}, Lio/agora/rtc2/video/CoordinatesTransform;->normalizedToView(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "failed to translate coordinate from normalized to view!"

    .line 1658
    invoke-static {v3, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 1661
    :cond_d
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1662
    invoke-virtual {v1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->notifyCameraExposureAreaChanged(Landroid/graphics/Rect;)V

    return v4

    :cond_e
    :goto_6
    return v7

    :cond_f
    :goto_7
    const-string v0, "setExposure unreasonable inputs!"

    .line 1593
    invoke-static {v3, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 1578
    :cond_10
    :goto_8
    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aput v0, v3, v4

    .line 1579
    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aput v2, v0, v5

    return v4
.end method

.method public setExposureCompensation(I)I
    .locals 10

    const-string v0, "cur index="

    .line 1451
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1452
    iput p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposureCompensation:I

    return v2

    .line 1455
    :cond_0
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsExposureCompensationStarted:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposureCompensation:I

    if-ne v1, p1, :cond_1

    return v2

    .line 1458
    :cond_1
    iput p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposureCompensation:I

    .line 1460
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setExposureCompensation:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1463
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    .line 1464
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v5

    .line 1465
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v6

    .line 1466
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v7

    .line 1467
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "compensation step="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", cur index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, p1

    :goto_0
    if-ge p1, v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    .line 1474
    :goto_1
    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    const/4 p1, 0x1

    .line 1476
    :try_start_0
    iput-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsExposureCompensationStarted:Z

    .line 1477
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1478
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result p1

    int-to-float v3, p1

    mul-float v4, v4, v3

    .line 1480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ev="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1483
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exposure compensation got exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public setFaceDetection(Z)I
    .locals 2

    .line 1345
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableFaceDetection:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 1348
    :cond_0
    iput-boolean p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableFaceDetection:Z

    .line 1349
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onFaceDetectionRequestChanged()V

    return v1
.end method

.method public setFocus(FF)I
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "mCamera.setParameters Exception: "

    .line 1178
    iget-object v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_14

    iget-object v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v4}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v4}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_e

    .line 1183
    :cond_0
    iget-boolean v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraFocusStarted:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aget v4, v4, v5

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v7, v9

    if-gez v4, :cond_1

    iget-object v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aget v4, v4, v6

    sub-float/2addr v4, v2

    .line 1184
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    cmpg-double v4, v7, v9

    if-gez v4, :cond_1

    return v5

    .line 1187
    :cond_1
    iget-object v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aput v0, v4, v5

    .line 1188
    iget-object v4, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aput v2, v4, v6

    .line 1190
    sget-object v4, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setFocus "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    cmpg-float v9, v0, v7

    if-ltz v9, :cond_13

    .line 1191
    iget-object v9, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v9}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v0, v9

    if-gtz v9, :cond_13

    cmpg-float v7, v2, v7

    if-ltz v7, :cond_13

    iget-object v7, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v7}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    goto/16 :goto_d

    .line 1196
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    iput-object v7, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v7, :cond_12

    .line 1197
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    if-nez v7, :cond_3

    goto/16 :goto_c

    .line 1201
    :cond_3
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v0, v2, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v10

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    .line 1202
    invoke-virtual {v0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v11

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v12, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    .line 1203
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v0, v6, :cond_4

    const/4 v14, 0x1

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    .line 1204
    :goto_0
    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v0, v6, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result v2

    mul-int v15, v0, v2

    iget v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderMode:I

    move/from16 v16, v0

    .line 1201
    invoke-static/range {v9 .. v16}, Lio/agora/rtc2/video/CoordinatesTransform;->viewToNormalized(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "Failed to translate input coordinate"

    .line 1207
    invoke-static {v4, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    .line 1211
    :cond_6
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 1212
    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1213
    invoke-static {v2, v0, v7}, Lio/agora/rtc2/video/CoordinatesTransform;->calculateFocusArea(FFF)Landroid/graphics/Rect;

    move-result-object v7

    const/high16 v9, 0x3fc00000    # 1.5f

    .line 1214
    invoke-static {v2, v0, v9}, Lio/agora/rtc2/video/CoordinatesTransform;->calculateFocusArea(FFF)Landroid/graphics/Rect;

    move-result-object v2

    .line 1215
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lio/agora/rtc2/video/CoordinatesTransform;->cameraToNormalized(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    .line 1216
    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    .line 1217
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v12, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewParameters:Landroid/hardware/Camera$Parameters;

    .line 1218
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1216
    invoke-static/range {v9 .. v15}, Lio/agora/rtc2/video/CoordinatesTransform;->normalizedToSensor(Landroid/graphics/RectF;IIIIIZ)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "Failed to translate input coordinate"

    .line 1220
    invoke-static {v4, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    .line 1223
    :cond_7
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "mCamera.autoFocus focusRect: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", meteringRect: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :try_start_0
    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1229
    sget-object v4, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to cancle AutoFocus"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_8

    return v8

    .line 1237
    :cond_8
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v4

    const/16 v9, 0x320

    if-lez v4, :cond_9

    .line 1238
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    new-instance v10, Landroid/hardware/Camera$Area;

    invoke-direct {v10, v7, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_3

    .line 1242
    :cond_9
    sget-object v4, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v10, "focus areas not supported"

    invoke-static {v4, v10}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :goto_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v4

    if-lez v4, :cond_a

    .line 1246
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    new-instance v10, Landroid/hardware/Camera$Area;

    invoke-direct {v10, v2, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_4

    .line 1250
    :cond_a
    sget-object v4, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v9, "metering areas not supported"

    invoke-static {v4, v9}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    const-string v9, "macro"

    .line 1255
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "macro"

    .line 1256
    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1257
    iget-object v9, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mObjectLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1259
    :try_start_1
    iget-object v10, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 1261
    :try_start_2
    sget-object v10, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :goto_5
    monitor-exit v9

    goto :goto_7

    :goto_6
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_b
    const-string v0, "focus"

    const-string v3, "FOCUS_MODE_MACRO is not supported"

    .line 1265
    invoke-static {v0, v3}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :goto_7
    :try_start_3
    iput-boolean v6, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraFocusStarted:Z

    .line 1270
    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    new-instance v3, Lio/agora/rtc2/video/VideoCaptureCamera1$7;

    invoke-direct {v3, v1, v4}, Lio/agora/rtc2/video/VideoCaptureCamera1$7;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1291
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1292
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v10

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 1293
    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v11

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v12, v2, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v13, v2, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    const/4 v14, 0x0

    .line 1292
    invoke-static/range {v9 .. v14}, Lio/agora/rtc2/video/CoordinatesTransform;->sensorToNormalized(Landroid/graphics/RectF;IIIIZ)Landroid/graphics/RectF;

    move-result-object v15

    .line 1294
    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v16

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v17

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 1295
    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v18

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v19

    iget v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v2, v6, :cond_c

    const/16 v20, 0x1

    goto :goto_8

    :cond_c
    const/16 v20, 0x0

    .line 1297
    :goto_8
    iget v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v2, v6, :cond_d

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, -0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result v3

    mul-int v21, v2, v3

    iget v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderMode:I

    move/from16 v22, v2

    .line 1294
    invoke-static/range {v15 .. v22}, Lio/agora/rtc2/video/CoordinatesTransform;->normalizedToView(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_e

    .line 1299
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v2, "failed to translate coordinate from normalized to view!"

    invoke-static {v0, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    .line 1302
    :cond_e
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1303
    invoke-virtual {v1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->notifyCameraExposureAreaChanged(Landroid/graphics/Rect;)V

    .line 1305
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v2}, Lio/agora/rtc2/video/CoordinatesTransform;->cameraToNormalized(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    .line 1306
    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getWidth()I

    move-result v10

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderView:Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;

    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->getHeight()I

    move-result v11

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 1307
    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v12

    iget-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-virtual {v2}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v13

    iget v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v2, v6, :cond_f

    const/4 v14, 0x1

    goto :goto_a

    :cond_f
    const/4 v14, 0x0

    .line 1309
    :goto_a
    iget v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mId:I

    if-ne v2, v6, :cond_10

    goto :goto_b

    :cond_10
    const/4 v6, -0x1

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result v2

    mul-int v15, v6, v2

    iget v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mRenderMode:I

    move/from16 v16, v2

    .line 1306
    invoke-static/range {v9 .. v16}, Lio/agora/rtc2/video/CoordinatesTransform;->normalizedToView(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_11

    .line 1311
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v2, "failed to translate coordinate from normalized to view!"

    invoke-static {v0, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    .line 1314
    :cond_11
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1315
    invoke-virtual {v1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;)V

    return v5

    :catch_2
    move-exception v0

    .line 1287
    sget-object v2, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCamera.autoFocus Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_c
    return v8

    :cond_13
    :goto_d
    const-string v0, "set focus unreasonable inputs"

    .line 1192
    invoke-static {v4, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    .line 1179
    :cond_14
    :goto_e
    iget-object v3, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aput v0, v3, v5

    .line 1180
    iget-object v0, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aput v2, v0, v6

    return v5
.end method

.method public setNoiseReductionMode(I)I
    .locals 1

    .line 1389
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v0, "NoiseReduction not supported in camera1 "

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setTorchMode(Z)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1515
    :goto_0
    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 1516
    :goto_1
    iput v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mTorchMode:I

    return v4

    .line 1519
    :cond_2
    iget-boolean v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsCameraTorchStarted:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mTorchMode:I

    if-ne v3, v2, :cond_3

    return v4

    .line 1522
    :cond_3
    iput v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mTorchMode:I

    .line 1523
    sget-object v2, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "setTorchMode isOn: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1526
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "torch"

    .line 1527
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "setTorchMode isFlashSupported: true"

    .line 1528
    invoke-static {v2, v5}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "off"

    if-eqz p1, :cond_4

    .line 1530
    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_2

    .line 1532
    :cond_4
    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1535
    :goto_2
    :try_start_0
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsCameraTorchStarted:Z

    .line 1536
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    .line 1538
    sget-object v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setTorchMode failed, mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v2

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    const-string p1, "setTorchMode isFlashSupported: false"

    .line 1543
    invoke-static {v2, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    const/4 p1, -0x2

    return p1
.end method

.method public setVideoEdgeMode(I)I
    .locals 3

    .line 1355
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVideoEdgeMode failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setVideoStabilityMode(I)I
    .locals 5

    .line 1361
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVideoStabilityMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 1365
    :cond_0
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 1369
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "not supported VideoStability Mode = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 1374
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 1376
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1379
    :cond_4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1381
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setVideoStabilityMode failed, mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public setZoom(F)I
    .locals 6

    .line 1090
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1091
    iput p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraZoomFactor:F

    return v1

    .line 1094
    :cond_0
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraZoomStarted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraZoomFactor:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 1097
    :cond_1
    iput p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraZoomFactor:F

    .line 1099
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setCameraZoom api1 called zoomValue ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, -0x1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    return v2

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 1105
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x0

    .line 1112
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1113
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p1, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 1121
    :goto_1
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 1122
    invoke-direct {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 1125
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    if-le v3, v0, :cond_7

    .line 1127
    sget-object p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "zoom value is larger than maxZoom value"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1130
    :cond_7
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    const/4 v0, 0x1

    .line 1132
    :try_start_0
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraZoomStarted:Z

    .line 1133
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1135
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "setParameters failed, zoomLevel: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public startCaptureMaybeAsync()Z
    .locals 7

    .line 725
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCaptureMaybeAsync, use Texture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureToTexture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "startCaptureAsync: mCamera is null"

    .line 727
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 730
    :cond_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    const-string v1, "proxyThread unavailable"

    .line 731
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 734
    :cond_1
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 736
    :try_start_0
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 740
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_2
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 743
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureToTexture:Z

    if-eqz v1, :cond_3

    .line 744
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->listenForTextureFrames()V

    goto :goto_0

    .line 746
    :cond_3
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->listenForBytebufferFrames()V

    .line 751
    :goto_0
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    new-instance v4, Lio/agora/rtc2/video/VideoCaptureCamera1$2;

    invoke-direct {v4, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$2;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    const-wide/16 v5, 0x7d0

    invoke-static {v1, v5, v6, v4}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_f

    .line 768
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    .line 771
    :cond_4
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsCameraTorchStarted:Z

    if-nez v1, :cond_6

    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mTorchMode:I

    if-eqz v1, :cond_6

    .line 772
    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mTorchMode:I

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setTorchMode(Z)I

    .line 774
    :cond_6
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraExposureStarted:Z

    const/4 v4, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aget v1, v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    .line 776
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aget v1, v1, v2

    iget-object v5, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposurePositions:[F

    aget v5, v5, v3

    invoke-virtual {p0, v1, v5}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setExposure(FF)I

    .line 778
    :cond_7
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraFocusStarted:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aget v1, v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_8

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v4

    if-lez v1, :cond_8

    .line 779
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aget v1, v1, v2

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraFocusPositions:[F

    aget v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setFocus(FF)I

    .line 781
    :cond_8
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraZoomStarted:Z

    if-nez v1, :cond_9

    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraZoomFactor:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_9

    .line 782
    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraZoomFactor:F

    invoke-virtual {p0, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setZoom(F)I

    .line 784
    :cond_9
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsExposureCompensationStarted:Z

    if-nez v1, :cond_a

    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposureCompensation:I

    if-eqz v1, :cond_a

    .line 785
    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraExposureCompensation:I

    invoke-virtual {p0, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setExposureCompensation(I)I

    .line 787
    :cond_a
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraAutoFaceFocus:Z

    if-eqz v1, :cond_b

    .line 788
    iget-boolean v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCameraAutoFaceFocus:Z

    invoke-virtual {p0, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->setAutoFaceFocus(Z)I

    .line 791
    :cond_b
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onFaceDetectionRequestChanged()V

    .line 793
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 795
    :try_start_2
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onStarted()V

    .line 796
    iput-boolean v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 798
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 800
    invoke-static {}, Lio/agora/base/internal/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_c

    goto :goto_2

    .line 805
    :cond_c
    invoke-static {}, Lio/agora/base/internal/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_d

    .line 808
    invoke-virtual {p0, v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->registerCameraAvailableCallback(Landroid/hardware/camera2/CameraManager;)V

    :cond_d
    return v3

    :cond_e
    :goto_2
    const-string v1, "context or proxyThread unavailable"

    .line 801
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception v0

    .line 798
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    :cond_f
    :goto_3
    return v2

    :catchall_1
    move-exception v0

    .line 740
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopCaptureAndBlockUntilStopped()V
    .locals 4

    .line 1002
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureAndBlockUntilStopped()"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->unRegisterAvailabilityCallback()V

    .line 1004
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "proxyThread unavailable"

    .line 1005
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1010
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1013
    :try_start_1
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1018
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsCameraTorchStarted:Z

    .line 1019
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraExposureStarted:Z

    .line 1020
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraFocusStarted:Z

    .line 1021
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsmCameraZoomStarted:Z

    .line 1022
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mIsExposureCompensationStarted:Z

    .line 1023
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureCamera1$5;

    invoke-direct {v1, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$5;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1031
    :try_start_2
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mProxyThreadHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureCamera1$6;

    invoke-direct {v1, p0}, Lio/agora/rtc2/video/VideoCaptureCamera1$6;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1055
    sget-object v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopPreview got exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 1015
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
