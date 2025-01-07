.class public Lcom/tencent/imsdk/v2/V2TIMUserInfo;
.super Ljava/lang/Object;
.source "V2TIMUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field modifyParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field userInfo:Lcom/tencent/imsdk/relationship/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getBirthday()J
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getBirthday()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getModifyParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserInfo()Lcom/tencent/imsdk/relationship/UserInfo;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    return-object v0
.end method

.method public setBirthday(J)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/relationship/UserInfo;->setBirthday(J)V

    .line 52
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Tag_Profile_IM_BirthDay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setFaceUrl(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setFaceUrl(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Tag_Profile_IM_Image"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setNickName(Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Tag_Profile_IM_Nick"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setUserID(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setUserID(Ljava/lang/String;)V

    return-void
.end method

.method setUserInfo(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    return-void
.end method
