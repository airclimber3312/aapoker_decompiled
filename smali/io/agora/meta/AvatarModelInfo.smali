.class public Lio/agora/meta/AvatarModelInfo;
.super Ljava/lang/Object;


# instance fields
.field public mBundleCode:Ljava/lang/String;

.field public mLocalVisible:Z

.field public mRemoteVisible:Z

.field public mSyncPosition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/agora/meta/AvatarModelInfo;->mBundleCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/meta/AvatarModelInfo;->mLocalVisible:Z

    iput-boolean v0, p0, Lio/agora/meta/AvatarModelInfo;->mRemoteVisible:Z

    iput-boolean v0, p0, Lio/agora/meta/AvatarModelInfo;->mSyncPosition:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundleCode",
            "localVisible",
            "remoteVisible",
            "syncPosition"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/meta/AvatarModelInfo;->mBundleCode:Ljava/lang/String;

    iput-boolean p2, p0, Lio/agora/meta/AvatarModelInfo;->mLocalVisible:Z

    iput-boolean p3, p0, Lio/agora/meta/AvatarModelInfo;->mRemoteVisible:Z

    iput-boolean p4, p0, Lio/agora/meta/AvatarModelInfo;->mSyncPosition:Z

    return-void
.end method


# virtual methods
.method public getBundleCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/AvatarModelInfo;->mBundleCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalVisible()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/meta/AvatarModelInfo;->mLocalVisible:Z

    return v0
.end method

.method public getRemoteVisible()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/meta/AvatarModelInfo;->mRemoteVisible:Z

    return v0
.end method

.method public getSyncPosition()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/meta/AvatarModelInfo;->mSyncPosition:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AvatarModelInfo{mBundleCode=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/meta/AvatarModelInfo;->mBundleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mLocalVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/meta/AvatarModelInfo;->mLocalVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/meta/AvatarModelInfo;->mRemoteVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSyncPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/meta/AvatarModelInfo;->mSyncPosition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
