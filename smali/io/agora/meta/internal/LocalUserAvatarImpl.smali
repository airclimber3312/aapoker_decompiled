.class public Lio/agora/meta/internal/LocalUserAvatarImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lio/agora/meta/ILocalUserAvatar;


# instance fields
.field private mNativeHandle:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    return-void
.end method

.method private native nativeApplyInfo(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeLocalUserAvatarAndroid"
        }
    .end annotation
.end method

.method private native nativeGetExtraInfo(J)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeLocalUserAvatarAndroid"
        }
    .end annotation
.end method

.method private native nativeGetModelInfo(J)Lio/agora/meta/AvatarModelInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeLocalUserAvatarAndroid"
        }
    .end annotation
.end method

.method private native nativeGetUserInfo(J)Lio/agora/meta/MetaUserInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeLocalUserAvatarAndroid"
        }
    .end annotation
.end method

.method private native nativeSetExtraInfo(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeLocalUserAvatarAndroid",
            "extraCustomInfo"
        }
    .end annotation
.end method

.method private native nativeSetModelInfo(JLio/agora/meta/AvatarModelInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeLocalUserAvatarAndroid",
            "modelInfo"
        }
    .end annotation
.end method

.method private native nativeSetUserInfo(JLio/agora/meta/MetaUserInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeLocalUserAvatarAndroid",
            "userInfo"
        }
    .end annotation
.end method


# virtual methods
.method public applyInfo()I
    .locals 2

    iget-wide v0, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/meta/internal/LocalUserAvatarImpl;->nativeApplyInfo(J)I

    move-result v0

    return v0
.end method

.method public getExtraInfo()[B
    .locals 2

    iget-wide v0, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/meta/internal/LocalUserAvatarImpl;->nativeGetExtraInfo(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getModelInfo()Lio/agora/meta/AvatarModelInfo;
    .locals 2

    iget-wide v0, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/meta/internal/LocalUserAvatarImpl;->nativeGetModelInfo(J)Lio/agora/meta/AvatarModelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lio/agora/meta/MetaUserInfo;
    .locals 2

    iget-wide v0, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/meta/internal/LocalUserAvatarImpl;->nativeGetUserInfo(J)Lio/agora/meta/MetaUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public setExtraInfo([B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraInfo"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/LocalUserAvatarImpl;->nativeSetExtraInfo(J[B)I

    move-result p1

    return p1
.end method

.method public setModelInfo(Lio/agora/meta/AvatarModelInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelInfo"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/LocalUserAvatarImpl;->nativeSetModelInfo(JLio/agora/meta/AvatarModelInfo;)I

    move-result p1

    return p1
.end method

.method public setUserInfo(Lio/agora/meta/MetaUserInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/meta/internal/LocalUserAvatarImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/LocalUserAvatarImpl;->nativeSetUserInfo(JLio/agora/meta/MetaUserInfo;)I

    move-result p1

    return p1
.end method
