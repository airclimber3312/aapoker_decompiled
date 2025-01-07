.class Lcom/hyphenate/chat/EMUserInfoManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMUserInfoManager;->fetchUserInfoByAttribute([Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMUserInfoManager;

.field final synthetic val$attributes:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$userIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMUserInfoManager;[Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->this$0:Lcom/hyphenate/chat/EMUserInfoManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$userIds:[Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$attributes:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    iput-object p4, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$userIds:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$attributes:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetchUserInfoByAttribute param: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EMUserInfoManager"

    invoke-static {v4, v3}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->this$0:Lcom/hyphenate/chat/EMUserInfoManager;

    iget-object v3, v3, Lcom/hyphenate/chat/EMUserInfoManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    invoke-virtual {v3, v1, v2, v0}, Lcom/hyphenate/chat/adapter/EMAUserInfoManager;->fetchUserInfoByAttribute(Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchUserInfoByAttribute response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "fetchUserInfoByAttribute success"

    invoke-static {v4, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$userIds:[Ljava/lang/String;

    array-length v4, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v8, Lcom/hyphenate/chat/EMUserInfo;

    invoke-direct {v8}, Lcom/hyphenate/chat/EMUserInfo;-><init>()V

    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->NICKNAME:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hyphenate/chat/EMUserInfo;->setNickName(Ljava/lang/String;)V

    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->GENDER:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/hyphenate/chat/EMUserInfo;->setGender(I)V

    :cond_2
    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EMAIL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hyphenate/chat/EMUserInfo;->setEmail(Ljava/lang/String;)V

    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->PHONE:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hyphenate/chat/EMUserInfo;->setPhoneNumber(Ljava/lang/String;)V

    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->SIGN:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hyphenate/chat/EMUserInfo;->setSignature(Ljava/lang/String;)V

    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->AVATAR_URL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hyphenate/chat/EMUserInfo;->setAvatarUrl(Ljava/lang/String;)V

    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EXT:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hyphenate/chat/EMUserInfo;->setExt(Ljava/lang/String;)V

    sget-object v9, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->BIRTH:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v9}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/hyphenate/chat/EMUserInfo;->setBirth(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/hyphenate/chat/EMUserInfo;->setUserId(Ljava/lang/String;)V

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :catch_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v0, v2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v0, "fetchUserInfoByAttribute response is null "

    invoke-static {v4, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/hyphenate/chat/EMUserInfoManager$4;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchUserInfoByAttribute failed error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  errorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
