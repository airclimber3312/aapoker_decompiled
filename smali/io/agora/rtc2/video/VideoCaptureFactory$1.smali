.class Lio/agora/rtc2/video/VideoCaptureFactory$1;
.super Ljava/lang/Object;
.source "VideoCaptureFactory.java"

# interfaces
.implements Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureFactory;->createFallbackWrapper(Lio/agora/rtc2/video/IVideoCaptureCamera;IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)Lio/agora/rtc2/video/IVideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$autoFaceDetect:Z

.field final synthetic val$autoWhiteBalance:Z

.field final synthetic val$captureToTexture:Z

.field final synthetic val$enableTextureCopy:Z

.field final synthetic val$extraSurface:Z

.field final synthetic val$focalLengthType:I

.field final synthetic val$focusMode:I

.field final synthetic val$fpsRangeEnable:Z

.field final synthetic val$index:I

.field final synthetic val$nativeVideoCaptureDeviceAndroid:J

.field final synthetic val$noiseReduction:I

.field final synthetic val$physicalId:I

.field final synthetic val$pqFirst:Z

.field final synthetic val$sharedContext:Lio/agora/base/internal/video/EglBase$Context;

.field final synthetic val$skipControl:I

.field final synthetic val$templateType:I


# direct methods
.method constructor <init>(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)V
    .locals 3

    move-object v0, p0

    move v1, p1

    .line 200
    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$index:I

    move-wide v1, p2

    iput-wide v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$nativeVideoCaptureDeviceAndroid:J

    move v1, p4

    iput-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$captureToTexture:Z

    move v1, p5

    iput-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$enableTextureCopy:Z

    move v1, p6

    iput-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$pqFirst:Z

    move v1, p7

    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$skipControl:I

    move-object v1, p8

    iput-object v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    move v1, p9

    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$templateType:I

    move v1, p10

    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$noiseReduction:I

    move v1, p11

    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$focusMode:I

    move v1, p12

    iput-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$autoFaceDetect:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$extraSurface:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$autoWhiteBalance:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$fpsRangeEnable:Z

    move/from16 v1, p16

    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$focalLengthType:I

    move/from16 v1, p17

    iput v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$physicalId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFallbackCamera()Lio/agora/rtc2/video/IVideoCaptureCamera;
    .locals 21

    move-object/from16 v0, p0

    .line 203
    new-instance v19, Lio/agora/rtc2/video/VideoCaptureCamera1;

    move-object/from16 v1, v19

    iget v2, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$index:I

    iget-wide v3, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$nativeVideoCaptureDeviceAndroid:J

    iget-boolean v5, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$captureToTexture:Z

    iget-boolean v6, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$enableTextureCopy:Z

    iget-boolean v7, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$pqFirst:Z

    iget v8, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$skipControl:I

    iget-object v9, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    iget v10, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$templateType:I

    iget v11, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$noiseReduction:I

    iget v12, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$focusMode:I

    iget-boolean v13, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$autoFaceDetect:Z

    iget-boolean v14, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$extraSurface:Z

    iget-boolean v15, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$autoWhiteBalance:Z

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$fpsRangeEnable:Z

    move/from16 v16, v1

    iget v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$focalLengthType:I

    move/from16 v17, v1

    iget v1, v0, Lio/agora/rtc2/video/VideoCaptureFactory$1;->val$physicalId:I

    move/from16 v18, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lio/agora/rtc2/video/VideoCaptureCamera1;-><init>(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)V

    return-object v19
.end method
