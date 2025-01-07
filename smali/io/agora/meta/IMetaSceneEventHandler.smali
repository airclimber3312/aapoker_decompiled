.class public interface abstract Lio/agora/meta/IMetaSceneEventHandler;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAddSceneViewResult(Landroid/view/TextureView;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onEnterSceneResult(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onLeaveSceneResult(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onReleasedScene(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract onRemoveSceneViewResult(Landroid/view/TextureView;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onSceneMessageReceived([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract onSceneVideoFrameCaptured(Landroid/view/TextureView;Lio/agora/base/VideoFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "videoFrame"
        }
    .end annotation
.end method

.method public abstract onUserPositionChanged(Ljava/lang/String;Lio/agora/meta/MetaUserPositionInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "posInfo"
        }
    .end annotation
.end method
