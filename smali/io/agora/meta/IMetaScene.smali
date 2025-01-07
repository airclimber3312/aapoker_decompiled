.class public abstract Lio/agora/meta/IMetaScene;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addEventHandler(Lio/agora/meta/IMetaSceneEventHandler;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation
.end method

.method public abstract addSceneView(Landroid/view/TextureView;Lio/agora/meta/SceneDisplayConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "config"
        }
    .end annotation
.end method

.method public abstract enableFaceCapture(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSceneVideoCapture(Landroid/view/TextureView;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enable"
        }
    .end annotation
.end method

.method public abstract enableVideoDisplay(Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayId",
            "enable"
        }
    .end annotation
.end method

.method public abstract enterScene(Lio/agora/meta/EnterSceneConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract getLocalUserAvatar()Lio/agora/meta/ILocalUserAvatar;
.end method

.method public abstract leaveScene()I
.end method

.method public abstract pushVideoFrameToDisplay(Ljava/lang/String;Lio/agora/base/VideoFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayId",
            "frame"
        }
    .end annotation
.end method

.method public abstract pushVideoFrameToDisplay(Ljava/lang/String;Lio/agora/rtc2/video/AgoraVideoFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayId",
            "frame"
        }
    .end annotation
.end method

.method public abstract release()I
.end method

.method public abstract removeEventHandler(Lio/agora/meta/IMetaSceneEventHandler;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation
.end method

.method public abstract removeSceneView(Landroid/view/TextureView;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method public abstract sendSceneMessage([B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract setSceneParameters(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonParam"
        }
    .end annotation
.end method
