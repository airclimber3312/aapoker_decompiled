.class public interface abstract Lio/agora/meta/ILocalUserAvatar;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyInfo()I
.end method

.method public abstract getExtraInfo()[B
.end method

.method public abstract getModelInfo()Lio/agora/meta/AvatarModelInfo;
.end method

.method public abstract getUserInfo()Lio/agora/meta/MetaUserInfo;
.end method

.method public abstract setExtraInfo([B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraInfo"
        }
    .end annotation
.end method

.method public abstract setModelInfo(Lio/agora/meta/AvatarModelInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelInfo"
        }
    .end annotation
.end method

.method public abstract setUserInfo(Lio/agora/meta/MetaUserInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation
.end method
