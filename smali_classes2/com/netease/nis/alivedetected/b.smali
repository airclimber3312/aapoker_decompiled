.class public Lcom/netease/nis/alivedetected/b;
.super Ljava/lang/Object;
.source "AliveDetectedHelper.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# instance fields
.field public final synthetic a:Lcom/netease/nis/alivedetected/d;

.field public final synthetic b:Lcom/netease/nis/alivedetected/a;


# direct methods
.method public constructor <init>(Lcom/netease/nis/alivedetected/a;Lcom/netease/nis/alivedetected/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    iput-object p2, p0, Lcom/netease/nis/alivedetected/b;->a:Lcom/netease/nis/alivedetected/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v0

    const-string v1, "4"

    iget-object v2, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    .line 2
    iget-object v2, v2, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move-object v4, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u8c03\u7528check\u63a5\u53e3\u68c0\u6d4b\u51fa\u9519:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AliveDetectedHelper"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/netease/nis/alivedetected/b;->a:Lcom/netease/nis/alivedetected/d;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/netease/nis/alivedetected/d;->onPassed(Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10

    const-string v0, "AliveDetectedHelper"

    const/4 v1, 0x2

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    .line 2
    iget-object v2, v2, Lcom/netease/nis/alivedetected/a;->a:Lcom/google/gson/Gson;

    .line 3
    const-class v3, Lcom/netease/nis/alivedetected/entity/CheckResponse;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/nis/alivedetected/entity/CheckResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v3

    const-string v4, "1"

    iget-object v5, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    .line 6
    iget-object v5, v5, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u8fd4\u56de\u503cJson\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, ""

    const-string v8, ""

    .line 8
    invoke-virtual/range {v3 .. v8}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fd4\u56de\u503cJson\u89e3\u6790\u5f02\u5e38:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/netease/nis/alivedetected/b;->a:Lcom/netease/nis/alivedetected/d;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u8fd4\u56de\u503cJson\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 14
    iget-object p1, v2, Lcom/netease/nis/alivedetected/entity/CheckResponse;->result:Ljava/lang/String;

    .line 16
    :try_start_1
    iget-object v3, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    .line 17
    iget-object v3, v3, Lcom/netease/nis/alivedetected/a;->c:Ljava/lang/String;

    .line 18
    invoke-static {p1, v3, v3}, Lcom/netease/nis/basesdk/EncryptUtil;->AESDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget v3, v2, Lcom/netease/nis/alivedetected/entity/CheckResponse;->code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 20
    iget-object v2, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    .line 21
    iget-object v2, v2, Lcom/netease/nis/alivedetected/a;->a:Lcom/google/gson/Gson;

    .line 22
    const-class v3, Lcom/netease/nis/alivedetected/entity/CheckResponse$Result;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/nis/alivedetected/entity/CheckResponse$Result;

    .line 23
    iget-object v3, p0, Lcom/netease/nis/alivedetected/b;->a:Lcom/netease/nis/alivedetected/d;

    iget v2, v2, Lcom/netease/nis/alivedetected/entity/CheckResponse$Result;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3, v4}, Lcom/netease/nis/alivedetected/d;->onPassed(Z)V

    goto :goto_2

    .line 25
    :cond_1
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "4"

    :try_start_2
    iget-object v5, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    .line 26
    iget-object v5, v5, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 27
    iget v6, v2, Lcom/netease/nis/alivedetected/entity/CheckResponse;->code:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/netease/nis/alivedetected/entity/CheckResponse;->msg:Ljava/lang/String;

    const-string v8, ""

    .line 28
    invoke-virtual/range {v3 .. v8}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/netease/nis/alivedetected/b;->a:Lcom/netease/nis/alivedetected/d;

    invoke-interface {v2, v1, p1}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 33
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v3

    const-string v4, "1"

    iget-object v5, p0, Lcom/netease/nis/alivedetected/b;->b:Lcom/netease/nis/alivedetected/a;

    .line 34
    iget-object v5, v5, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "AES\u89e3\u5bc6\u5f02\u5e38"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, ""

    const-string v8, ""

    .line 36
    invoke-virtual/range {v3 .. v8}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netease/nis/alivedetected/b;->a:Lcom/netease/nis/alivedetected/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fd4\u56de\u503cAES\u89e3\u5bc6\u5f02\u5e38\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
