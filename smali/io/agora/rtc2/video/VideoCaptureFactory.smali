.class Lio/agora/rtc2/video/VideoCaptureFactory;
.super Ljava/lang/Object;
.source "VideoCaptureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/video/VideoCaptureFactory$CAMERA_MODULE_SELECTED;,
        Lio/agora/rtc2/video/VideoCaptureFactory$ChromiumCameraInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCaptureFactory"

.field private static final TEMPLATETYPE_EXCEPTION_MODELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXTURE_EXCEPTION_MODELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "SM-A7000"

    const-string v1, "MI MAX"

    const-string v2, "LG-H848"

    const-string v3, "Pixel 4a"

    .line 42
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/agora/rtc2/video/VideoCaptureFactory;->TEXTURE_EXCEPTION_MODELS:Ljava/util/List;

    const-string v0, "PRA-AL00X"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/agora/rtc2/video/VideoCaptureFactory;->TEMPLATETYPE_EXCEPTION_MODELS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    return v0
.end method

.method static createCameraCapture(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIIZZIIZZII)Lio/agora/rtc2/video/IVideoCapture;
    .locals 36

    move/from16 v15, p0

    move/from16 v0, p8

    move/from16 v1, p9

    .line 149
    invoke-static/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->getCamera2SupportedLevel(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RMX3231"

    .line 151
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "Not support for "

    const-string v6, "VideoCaptureFactory"

    if-eqz v3, :cond_0

    invoke-static/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "front"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 155
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "createVideoCapture() "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", captureToTexture: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", camera_selected: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", camera_selected_level: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", enableTextureCopy: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p4

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", pqFirst: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", templateType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", noiseReduction: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", autoFaceDetect: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p12

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", extraSurface: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p13

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", autoWhiteBalance: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p16

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hardware level: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " focalLengthType: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p18

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " physicalId: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p19

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v8, Lio/agora/rtc2/video/VideoCaptureFactory;->TEXTURE_EXCEPTION_MODELS:Ljava/util/List;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x0

    goto :goto_1

    :cond_1
    move/from16 v22, v9

    .line 167
    :goto_1
    sget-object v2, Lio/agora/rtc2/video/VideoCaptureFactory;->TEMPLATETYPE_EXCEPTION_MODELS:Ljava/util/List;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "templateType use preview, model: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, 0x0

    goto :goto_2

    :cond_2
    move/from16 v27, v10

    .line 171
    :goto_2
    invoke-static/range {p0 .. p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 173
    invoke-static {v15, v1}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLessSelectedLevel(II)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v16, 0x1

    :goto_4
    if-eqz v16, :cond_5

    .line 176
    new-instance v18, Lio/agora/rtc2/video/VideoCaptureCamera1;

    move-object/from16 v0, v18

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, v22

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, v27

    move/from16 v10, p11

    move/from16 v11, p14

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p16

    move/from16 v15, p17

    move/from16 v16, p18

    move/from16 v17, p19

    invoke-direct/range {v0 .. v17}, Lio/agora/rtc2/video/VideoCaptureCamera1;-><init>(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)V

    return-object v18

    .line 181
    :cond_5
    new-instance v0, Lio/agora/rtc2/video/VideoCaptureCamera2;

    move-object/from16 v18, v0

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, v22

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, v27

    move/from16 v10, p11

    move/from16 v11, p15

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p16

    move/from16 v15, p17

    move/from16 v16, p18

    move/from16 v17, p19

    invoke-direct/range {v0 .. v17}, Lio/agora/rtc2/video/VideoCaptureCamera2;-><init>(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)V

    const/16 v35, -0x1

    move/from16 v19, p0

    move-wide/from16 v20, p1

    move/from16 v23, p4

    move/from16 v24, p5

    move/from16 v25, p6

    move-object/from16 v26, p7

    move/from16 v28, p11

    move/from16 v29, p15

    move/from16 v30, p12

    move/from16 v31, p13

    move/from16 v32, p16

    move/from16 v33, p17

    move/from16 v34, p18

    .line 186
    invoke-static/range {v18 .. v35}, Lio/agora/rtc2/video/VideoCaptureFactory;->createFallbackWrapper(Lio/agora/rtc2/video/IVideoCaptureCamera;IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)Lio/agora/rtc2/video/IVideoCaptureCamera;

    move-result-object v0

    return-object v0
.end method

.method static createCameraCapture(IJZZZILio/agora/base/internal/video/EglBase$Context;Lio/agora/rtc2/video/VideoCaptureParameter;)Lio/agora/rtc2/video/IVideoCapture;
    .locals 21

    move-object/from16 v0, p8

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 130
    iget v9, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->lowCameraSelected:I

    iget v10, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->hardwareLevelSelected:I

    iget v11, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->templateType:I

    iget v12, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->noiseReduce:I

    iget-boolean v13, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->faceFocusing:Z

    iget-boolean v14, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->extraSurface:Z

    iget v15, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->camera1FocusMode:I

    iget v1, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->camera2FocusMode:I

    move/from16 v16, v1

    iget-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->autoWhiteBalance:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->camera1FpsRange:Z

    move/from16 v18, v1

    iget v1, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->focalLengthType:I

    move/from16 v19, v1

    iget v0, v0, Lio/agora/rtc2/video/VideoCaptureParameter;->physicalId:I

    move/from16 v20, v0

    move/from16 v1, p0

    invoke-static/range {v1 .. v20}, Lio/agora/rtc2/video/VideoCaptureFactory;->createCameraCapture(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIIZZIIZZII)Lio/agora/rtc2/video/IVideoCapture;

    move-result-object v0

    return-object v0
.end method

.method static createFallbackWrapper(Lio/agora/rtc2/video/IVideoCaptureCamera;IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)Lio/agora/rtc2/video/IVideoCaptureCamera;
    .locals 20

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    .line 199
    new-instance v0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureFactory$1;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lio/agora/rtc2/video/VideoCaptureFactory$1;-><init>(IJZZZILio/agora/base/internal/video/EglBase$Context;IIIZZZZII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v1, v0, v2}, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;-><init>(Lio/agora/rtc2/video/IVideoCaptureCamera;Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;)V

    return-object v1
.end method

.method static createScreenCapture(JLio/agora/base/internal/video/EglBase$Context;Landroid/content/Intent;)Lio/agora/rtc2/video/VideoCapture;
    .locals 1

    .line 214
    new-instance v0, Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/agora/rtc2/video/VideoCaptureScreen;-><init>(JLio/agora/base/internal/video/EglBase$Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method static getCamera2SupportedLevel(I)Ljava/lang/String;
    .locals 2

    .line 234
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    const-string v1, "legacy"

    if-eqz v0, :cond_0

    return-object v1

    .line 237
    :cond_0
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getCamera2SupportedLevel(I)I

    move-result p0

    if-nez p0, :cond_1

    const-string v1, "limited"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v1, "full"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v1, "level_3"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v1, "external"

    :cond_4
    :goto_0
    return-object v1
.end method

.method static getCaptureApiType(I)I
    .locals 1

    .line 225
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCaptureApiType(I)I

    move-result p0

    return p0

    .line 228
    :cond_0
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getCaptureApiType(I)I

    move-result p0

    return p0
.end method

.method static getDeviceId(I)Ljava/lang/String;
    .locals 1

    .line 261
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_0
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDeviceName(I)Ljava/lang/String;
    .locals 1

    .line 270
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 273
    :cond_0
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDeviceSupportedFormats(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/agora/rtc2/video/VideoCaptureFormat;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getDeviceSupportedFormats(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 282
    :cond_0
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getDeviceSupportedFormats(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getFacingMode(I)I
    .locals 1

    .line 252
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLegacyOrDeprecatedDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getFacingMode(I)I

    move-result p0

    return p0

    .line 255
    :cond_0
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getFacingMode(I)I

    move-result p0

    return p0
.end method

.method static getNumberOfCameras()I
    .locals 1

    .line 220
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureFactory$ChromiumCameraInfo;->access$100()I

    move-result v0

    return v0
.end method

.method static isInCamera2BlackList()Z
    .locals 3

    const-string v0, "ocean"

    .line 298
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "oe106"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "trident"

    .line 303
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "de106"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "shark"

    .line 308
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "skr-a0"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "hnnem-h"

    .line 313
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "on7xelte"

    .line 319
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SM-G610F"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "m2c"

    .line 323
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "M578CA"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string v0, "samsung"

    .line 329
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 330
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-G930"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-G935"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-G950"

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-G955"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SC-02H"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SCV33"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SC-02J"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SCV36"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SM-G892A"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SM-G892U"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SC-03J"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SCV35"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return v1

    :cond_7
    const-string v0, "oneplus"

    .line 340
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "PCAM00"

    .line 345
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const-string v0, "h8296"

    .line 349
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method private static isLReleaseOrLater()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static isLegacyOrDeprecatedDevice(I)Z
    .locals 1

    .line 99
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->isLegacyDevice(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 100
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureFactory;->isInCamera2BlackList()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isLessSelectedLevel(II)Z
    .locals 2

    .line 110
    invoke-static {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getCamera2SupportedLevel(I)I

    move-result p0

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    .line 112
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera2;->ANDROID_CAMERA_HARDWARE_LEVEL_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera2;->ANDROID_CAMERA_HARDWARE_LEVEL_MAP:Landroid/util/SparseIntArray;

    .line 113
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static queryCameraFocalLengthCapability(IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lio/agora/rtc2/video/FocalLengthInfo;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureFactory;->isInCamera2BlackList()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->queryCameraFocalLengthCapability(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 291
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera1;->queryCameraFocalLengthCapability()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
