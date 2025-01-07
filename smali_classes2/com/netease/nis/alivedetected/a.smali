.class public Lcom/netease/nis/alivedetected/a;
.super Ljava/lang/Object;
.source "AliveDetectedHelper.java"


# instance fields
.field public final a:Lcom/google/gson/Gson;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/alivedetected/a;->a:Lcom/google/gson/Gson;

    .line 20
    sget-object v0, Lcom/netease/nis/alivedetected/e/b;->a:[Ljava/lang/String;

    const-string v1, "https://"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v0, v0, v2

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/v1/liveperson/getConf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://verify.dun.163.com/v1/liveperson/getConf"

    :goto_0
    iput-object v0, p0, Lcom/netease/nis/alivedetected/a;->d:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/netease/nis/alivedetected/e/b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    aget-object v0, v0, v2

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/v1/liveperson/check"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "https://verify.dun.163.com/v1/liveperson/check"

    :goto_1
    iput-object v0, p0, Lcom/netease/nis/alivedetected/a;->e:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/netease/nis/alivedetected/e/b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/netease/nis/alivedetected/a;->g:I

    .line 27
    iput v2, p0, Lcom/netease/nis/alivedetected/a;->h:I

    .line 29
    iput-object p1, p0, Lcom/netease/nis/alivedetected/a;->f:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/netease/nis/alivedetected/a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "businessKey"

    .line 62
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "timestamp"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 p1, 0x20

    .line 64
    invoke-static {p1}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "nonce"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    const-string v2, "3.2.3"

    .line 65
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    sget-object v3, Lcom/netease/nis/alivedetected/e/b;->d:Ljava/lang/String;

    const-string v4, "picType"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    sget-object v3, Lcom/netease/nis/alivedetected/e/b;->d:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 69
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 70
    :goto_0
    sget-object v6, Lcom/netease/nis/alivedetected/e/b;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    if-nez v5, :cond_0

    .line 72
    sget-object v6, Lcom/netease/nis/alivedetected/e/b;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/netease/nis/alivedetected/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "avatar"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 74
    :cond_0
    sget-object v6, Lcom/netease/nis/alivedetected/e/b;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/netease/nis/alivedetected/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "checkImages"

    .line 77
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    const-string v5, "token"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdkType"

    const/4 v5, 0x1

    .line 80
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "terminal"

    const-string v6, "1"

    .line 81
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    .line 82
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "systemVersion"

    .line 84
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->j:Ljava/lang/String;

    const-string v6, "sessionId"

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    invoke-static {v1, v3, v3}, Lcom/netease/nis/basesdk/EncryptUtil;->AESEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    const-string v6, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB"

    invoke-static {v3, v6}, Lcom/netease/nis/basesdk/EncryptUtil;->RSAEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v1, v0

    .line 96
    :goto_2
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v6

    const-string v7, "1"

    iget-object v8, p0, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\u53c2\u6570\u8bbe\u7f6eJson\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    if-nez v11, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual/range {v6 .. v11}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 100
    :goto_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "d"

    .line 101
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rk"

    .line 102
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public a(Lcom/netease/nis/alivedetected/d;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/nis/alivedetected/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "terminal"

    const-string v3, "1"

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    const-string v3, "3.2.3"

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osVersion"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lcom/netease/nis/alivedetected/a;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    iget-object v2, p0, Lcom/netease/nis/alivedetected/a;->j:Ljava/lang/String;

    const-string v3, "sessionId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/netease/nis/alivedetected/a;->d:Ljava/lang/String;

    new-instance v3, Lcom/netease/nis/alivedetected/a$a;

    invoke-direct {v3, p0, p1}, Lcom/netease/nis/alivedetected/a$a;-><init>(Lcom/netease/nis/alivedetected/a;Lcom/netease/nis/alivedetected/d;)V

    invoke-static {v2, v0, v1, v3}, Lcom/netease/nis/basesdk/HttpUtil;->doPostRequestByForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-void

    :catch_0
    move-exception v0

    .line 19
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u53c2\u6570\u8bbe\u7f6eJson\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "1"

    const-string v4, ""

    const-string v6, ""

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AliveDetectedHelper"

    invoke-static {v2, v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    .locals 8

    .line 25
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nis/alivedetected/a;->i:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    if-nez v0, :cond_0

    goto :goto_2

    .line 30
    :cond_0
    new-instance v6, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    invoke-direct {v6}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/netease/nis/alivedetected/a;->i:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    iget-object v0, v0, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->bucketName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosBucketName(Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 34
    iget-object p2, p0, Lcom/netease/nis/alivedetected/a;->i:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    iget-object p2, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->avatarErrorData:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;

    iget-object v0, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;->xNosToken:Ljava/lang/String;

    .line 35
    iget-object p2, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;->objectName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 38
    iget-object v0, p0, Lcom/netease/nis/alivedetected/a;->i:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    iget-object v0, v0, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->errorImageDatas:[Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;

    .line 39
    aget-object v1, v0, p2

    iget-object v1, v1, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;->xNosToken:Ljava/lang/String;

    .line 40
    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;->objectName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    move-object p2, v1

    .line 43
    :goto_0
    :try_start_0
    new-instance v7, Lcom/netease/nis/alivedetected/a$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/nis/alivedetected/a$b;-><init>(Lcom/netease/nis/alivedetected/a;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;)V

    invoke-static {p4, v6, p2, p1, v7}, Lcom/netease/nis/alivedetected/e/a;->a(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    :try_end_0
    .catch Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netease/cloud/nos/yidun/exception/InvalidChunkSizeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 60
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u4e0a\u4f20\u5f02\u5e38\u52a8\u4f5c\u56fe\u7247\u5230nos\u670d\u52a1\u5668\u5931\u8d25:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AliveDetectedHelper"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "businessKey"

    .line 2
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p1, 0x20

    .line 3
    invoke-static {p1}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "nonce"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "timestamp"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "version"

    const-string v2, "3.2.3"

    .line 5
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdkType"

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    sget v3, Lcom/netease/nis/alivedetected/e/b;->b:I

    sget v5, Lcom/netease/nis/alivedetected/e/b;->c:I

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v5, "reduceType"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v3, 0x10

    .line 8
    invoke-static {v3}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    invoke-static {v1, v3, v3}, Lcom/netease/nis/basesdk/EncryptUtil;->AESEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    const-string v5, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB"

    invoke-static {v3, v5}, Lcom/netease/nis/basesdk/EncryptUtil;->RSAEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v0

    .line 15
    :goto_1
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v7

    const-string v8, "1"

    iget-object v9, p0, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    const-string v10, ""

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\u53c2\u6570\u8bbe\u7f6eJson\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual/range {v7 .. v12}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 20
    :goto_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "d"

    .line 21
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rk"

    .line 22
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method
