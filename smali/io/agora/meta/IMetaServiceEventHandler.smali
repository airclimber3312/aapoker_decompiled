.class public interface abstract Lio/agora/meta/IMetaServiceEventHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/meta/IMetaServiceEventHandler$SceneDownloadState;,
        Lio/agora/meta/IMetaServiceEventHandler$ConnectionChangedReason;,
        Lio/agora/meta/IMetaServiceEventHandler$ConnectionState;
    }
.end annotation


# virtual methods
.method public abstract onConnectionStateChanged(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomName",
            "state",
            "reason"
        }
    .end annotation
.end method

.method public abstract onCreateSceneResult(Lio/agora/meta/IMetaScene;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onDownloadSceneAssetsProgress(JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneId",
            "progress",
            "state"
        }
    .end annotation
.end method

.method public abstract onGetSceneAssetsInfoResult([Lio/agora/meta/MetaSceneAssetsInfo;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metaSceneAssetsInfos",
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onTokenWillExpire()V
.end method
