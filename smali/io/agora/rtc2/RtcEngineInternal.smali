.class public abstract Lio/agora/rtc2/RtcEngineInternal;
.super Lio/agora/rtc2/RtcEngineEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/RtcEngineEx;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enableTransportQualityIndication(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract makeQualityReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "listenerUid",
            "speakerUid",
            "format"
        }
    .end annotation
.end method

.method public abstract monitorAudioRouteChange(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMonitoring"
        }
    .end annotation
.end method

.method public abstract setApiCallMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncCallTimeout"
        }
    .end annotation
.end method

.method public abstract setProfile(Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "merge"
        }
    .end annotation
.end method

.method public abstract setTextureId(ILandroid/opengl/EGLContext;IIJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "eglContext",
            "width",
            "height",
            "ts"
        }
    .end annotation
.end method

.method public abstract setTextureId(ILjavax/microedition/khronos/egl/EGLContext;IIJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "eglContext",
            "width",
            "height",
            "ts"
        }
    .end annotation
.end method

.method public abstract updateSharedContext(Landroid/opengl/EGLContext;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation
.end method

.method public abstract updateSharedContext(Ljavax/microedition/khronos/egl/EGLContext;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation
.end method
