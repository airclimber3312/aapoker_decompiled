.class public Lcom/netease/nis/alivedetected/a$a;
.super Ljava/lang/Object;
.source "AliveDetectedHelper.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/alivedetected/a;->a(Lcom/netease/nis/alivedetected/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/nis/alivedetected/d;

.field public final synthetic b:Lcom/netease/nis/alivedetected/a;


# direct methods
.method public constructor <init>(Lcom/netease/nis/alivedetected/a;Lcom/netease/nis/alivedetected/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    iput-object p2, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 13

    const-string/jumbo v0, "\u964d\u7ea7token\u751f\u6210:"

    .line 1
    iget-object v1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 2
    iget v2, v1, Lcom/netease/nis/alivedetected/a;->g:I

    const/4 v3, 0x1

    if-gtz v2, :cond_1

    .line 3
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v4

    iget-object v1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 4
    iget-object v6, v1, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v5, "3"

    const-string v9, ""

    move-object v8, p2

    .line 6
    invoke-virtual/range {v4 .. v9}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    const-string/jumbo p1, "\u83b7\u53d6\u914d\u7f6e\u6587\u4ef6\u5931\u8d25\uff0c\u9519\u8bef\u7801:%d,\u539f\u56e0:%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AliveDetectedHelper"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_0
    sget p1, Lcom/netease/nis/alivedetected/e/b;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x18

    const/4 v2, 0x3

    const-string v4, "reduce1"

    if-ne p1, v2, :cond_0

    .line 13
    :try_start_1
    iget-object p1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    iput-object v1, p1, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, ""

    :goto_0
    move-object v8, p1

    goto :goto_1

    .line 15
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    mul-double v5, v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    double-to-int p1, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v5, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    iput-object v1, v5, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    goto :goto_0

    .line 18
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 19
    iget-object v0, v0, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2"

    .line 21
    sput-object p1, Lcom/netease/nis/alivedetected/e/b;->d:Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    const/4 p2, 0x0

    .line 23
    iput-object p2, p1, Lcom/netease/nis/alivedetected/a;->i:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    .line 24
    iget-object v6, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    .line 25
    iget-object v7, p1, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 26
    invoke-interface/range {v6 .. v12}, Lcom/netease/nis/alivedetected/d;->onGetConfigSuccess(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;)V

    .line 27
    sget p1, Lcom/netease/nis/alivedetected/e/b;->b:I

    if-ge p1, v2, :cond_2

    add-int/2addr p1, v3

    .line 28
    sput p1, Lcom/netease/nis/alivedetected/e/b;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_1
    iget p1, v1, Lcom/netease/nis/alivedetected/a;->h:I

    add-int/2addr p1, v3

    iput p1, v1, Lcom/netease/nis/alivedetected/a;->h:I

    .line 33
    sget-object p2, Lcom/netease/nis/alivedetected/e/b;->a:[Ljava/lang/String;

    aget-object p1, p2, p1

    const-string p2, "https://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/v1/liveperson/getConf"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iput-object p1, v1, Lcom/netease/nis/alivedetected/a;->d:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    iget-object p2, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    invoke-virtual {p1, p2}, Lcom/netease/nis/alivedetected/a;->a(Lcom/netease/nis/alivedetected/d;)V

    .line 36
    iget-object p1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 37
    iget p2, p1, Lcom/netease/nis/alivedetected/a;->g:I

    sub-int/2addr p2, v3

    iput p2, p1, Lcom/netease/nis/alivedetected/a;->g:I

    :cond_2
    :goto_2
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 13

    const-string/jumbo v0, "\u8fd4\u56de\u503cJson\u89e3\u6790\u5f02\u5e38\uff1a"

    const-string v1, "AliveDetectedHelper"

    const-string/jumbo v2, "\u8fd4\u56de\u503cJson\u89e3\u6790\u5f02\u5e38"

    .line 1
    iget-object v3, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    sget-object v4, Lcom/netease/nis/alivedetected/e/b;->a:[Ljava/lang/String;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 2
    iget v5, v3, Lcom/netease/nis/alivedetected/a;->h:I

    .line 3
    aget-object v4, v4, v5

    const-string v5, "https://"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/v1/liveperson/check"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "https://verify.dun.163.com/v1/liveperson/check"

    .line 4
    :goto_0
    iput-object v4, v3, Lcom/netease/nis/alivedetected/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 5
    :try_start_0
    iget-object v5, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 6
    iget-object v5, v5, Lcom/netease/nis/alivedetected/a;->a:Lcom/google/gson/Gson;

    .line 7
    const-class v6, Lcom/netease/nis/alivedetected/entity/GetConfigResponse;

    invoke-virtual {v5, p1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v6

    iget-object v5, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 10
    iget-object v8, v5, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v7, "1"

    const-string v9, ""

    const-string v11, ""

    .line 12
    invoke-virtual/range {v6 .. v11}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v5, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_6

    .line 18
    iget v6, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse;->code:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    .line 19
    iget-object p1, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse;->result:Ljava/lang/String;

    .line 21
    :try_start_1
    iget-object v5, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 22
    iget-object v5, v5, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    .line 23
    invoke-static {p1, v5, v5}, Lcom/netease/nis/basesdk/EncryptUtil;->AESDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u83b7\u53d6\u914d\u7f6e\u6587\u4ef6\u6210\u529f:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :try_start_2
    iget-object v5, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 34
    iget-object v5, v5, Lcom/netease/nis/alivedetected/a;->a:Lcom/google/gson/Gson;

    .line 35
    const-class v6, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;

    invoke-virtual {v5, p1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;

    .line 36
    iget-boolean v6, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->needSample:Z

    sput-boolean v6, Lcom/netease/nis/alivedetected/e/d;->b:Z

    .line 37
    sput-boolean v6, Lcom/netease/nis/alivedetected/e/a;->c:Z

    if-eqz v6, :cond_1

    .line 39
    iget-object v6, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->sampleConfig:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$SampleConfig;

    iget-object v6, v6, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$SampleConfig;->sampleTime:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float v6, v6, v7

    float-to-long v6, v6

    sput-wide v6, Lcom/netease/nis/alivedetected/e/a;->b:J

    .line 42
    :cond_1
    iget-object v8, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->actions:Ljava/lang/String;

    .line 43
    iget-boolean v9, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->asyncUploadImage:Z

    .line 44
    iget-boolean v10, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->needCloudCheck:Z

    .line 45
    iget-boolean v6, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->needHdImage:Z

    .line 46
    iget-object v7, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->hdActions:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v6, :cond_2

    :goto_2
    move-object v11, v3

    goto :goto_3

    :cond_2
    const-string v3, "0"

    if-nez v7, :cond_3

    goto :goto_2

    .line 53
    :cond_3
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 56
    :goto_3
    iget-object v3, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    iget-object v12, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->nosConfig:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    .line 57
    iput-object v12, v3, Lcom/netease/nis/alivedetected/a;->i:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    .line 58
    iget-object v7, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->token:Ljava/lang/String;

    .line 59
    iput-object v7, v3, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 60
    iget-object v6, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    invoke-interface/range {v6 .. v12}, Lcom/netease/nis/alivedetected/d;->onGetConfigSuccess(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;)V

    .line 61
    iget-boolean v3, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->needReduceCheck:Z

    if-eqz v3, :cond_4

    .line 62
    iget v6, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->reduceCount:I

    sput v6, Lcom/netease/nis/alivedetected/e/b;->c:I

    :cond_4
    if-eqz v3, :cond_6

    .line 64
    sget v3, Lcom/netease/nis/alivedetected/e/b;->b:I

    iget v5, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$Result;->reduceCount:I

    if-ge v3, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 65
    sput v3, Lcom/netease/nis/alivedetected/e/b;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v3

    .line 68
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 69
    iget-object v7, v6, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v6, "1"

    const-string v8, ""

    const-string v10, ""

    .line 71
    invoke-virtual/range {v5 .. v10}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v0

    .line 75
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v5

    iget-object v2, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 76
    iget-object v7, v2, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AES\u89e3\u5bc6\u5f02\u5e38"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v6, "1"

    const-string v8, ""

    const-string v10, ""

    .line 78
    invoke-virtual/range {v5 .. v10}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fd4\u56de\u503cAES\u89e3\u5bc6\u5f02\u5e38\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    return-void

    .line 123
    :cond_5
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/alivedetected/a$a;->b:Lcom/netease/nis/alivedetected/a;

    .line 124
    iget-object v7, v1, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 125
    iget v1, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/netease/nis/alivedetected/entity/GetConfigResponse;->msg:Ljava/lang/String;

    const-string v6, "3"

    const-string v10, ""

    move-object v5, v0

    .line 126
    invoke-virtual/range {v5 .. v10}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/netease/nis/alivedetected/a$a;->a:Lcom/netease/nis/alivedetected/d;

    invoke-interface {v0, v4, p1}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method
