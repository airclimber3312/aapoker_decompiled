.class public Lio/agora/meta/MetaUserInfo;
.super Ljava/lang/Object;


# instance fields
.field public mUserIconUrl:Ljava/lang/String;

.field public mUserId:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/agora/meta/MetaUserInfo;->mUserId:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/meta/MetaUserInfo;->mUserName:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/meta/MetaUserInfo;->mUserIconUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mUserId",
            "mUserName",
            "mUserIconUrl"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/meta/MetaUserInfo;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lio/agora/meta/MetaUserInfo;->mUserName:Ljava/lang/String;

    iput-object p3, p0, Lio/agora/meta/MetaUserInfo;->mUserIconUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/MetaUserInfo;->mUserIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/MetaUserInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/MetaUserInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaUserInfo{mUserId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/meta/MetaUserInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mUserName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/MetaUserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mUserIconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/MetaUserInfo;->mUserIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
