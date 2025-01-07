.class public Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;
.super Lcom/tencent/imsdk/v2/V2TIMUserInfo;
.source "V2TIMUserFullInfo.java"


# static fields
.field public static final PROFILE_TYPE_KEY_ALLOWTYPE:Ljava/lang/String; = "Tag_Profile_IM_AllowType"

.field public static final PROFILE_TYPE_KEY_CUSTOM_PREFIX:Ljava/lang/String; = "Tag_Profile_Custom_"

.field public static final PROFILE_TYPE_KEY_FACEURL:Ljava/lang/String; = "Tag_Profile_IM_Image"

.field public static final PROFILE_TYPE_KEY_GENDER:Ljava/lang/String; = "Tag_Profile_IM_Gender"

.field public static final PROFILE_TYPE_KEY_NICK:Ljava/lang/String; = "Tag_Profile_IM_Nick"

.field public static final PROFILE_TYPE_KEY_SELF_SIGNATURE:Ljava/lang/String; = "Tag_Profile_IM_SelfSignature"

.field public static final V2TIM_FRIEND_ALLOW_ANY:I = 0x0

.field public static final V2TIM_FRIEND_DENY_ANY:I = 0x2

.field public static final V2TIM_FRIEND_NEED_CONFIRM:I = 0x1

.field public static final V2TIM_GENDER_FEMALE:I = 0x2

.field public static final V2TIM_GENDER_MALE:I = 0x1

.field public static final V2TIM_GENDER_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowType()I
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getAllowType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public getCustomInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getCustomUserInfoString()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getGender()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getLevel()I

    move-result v0

    return v0
.end method

.method public getRole()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getRole()I

    move-result v0

    return v0
.end method

.method public getSelfSignature()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowType(I)V
    .locals 3

    const-string v0, "Tag_Profile_IM_AllowType"

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 189
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "AllowType_Type_AllowAny"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 192
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "AllowType_Type_DenyAny"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "AllowType_Type_NeedConfirm"

    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v2}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 195
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v2}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 198
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setCustomInfo(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Tag_Profile_Custom_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setFaceUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setGender(I)V
    .locals 2

    const-string v0, "Tag_Profile_IM_Gender"

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/UserInfo;->setGender(I)V

    .line 116
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Gender_Type_Male"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/UserInfo;->setGender(I)V

    .line 119
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Gender_Type_Female"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/UserInfo;->setGender(I)V

    .line 122
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Gender_Type_Unknown"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setLevel(I)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setLevel(I)V

    .line 153
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Tag_Profile_IM_Level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setNickName(Ljava/lang/String;)V

    return-void
.end method

.method public setRole(I)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setRole(I)V

    .line 138
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Tag_Profile_IM_Role"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSelfSignature(Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setSignature(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Tag_Profile_IM_SelfSignature"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMUserFullInfo--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getCustomInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    const-string v3, "\n"

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " |key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "userID:"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender:"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", faceUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getFaceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selfSignature:"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getSelfSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowType:"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getAllowType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
