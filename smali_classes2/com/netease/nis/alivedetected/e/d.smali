.class public Lcom/netease/nis/alivedetected/e/d;
.super Ljava/lang/Object;
.source "ErrorInfoUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/alivedetected/e/d$b;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/netease/nis/alivedetected/e/d; = null

.field public static b:Z = false


# instance fields
.field public final c:Lcom/netease/nis/alivedetected/e/d$b;

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/nis/alivedetected/e/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/nis/alivedetected/e/d$b;-><init>(Lcom/netease/nis/alivedetected/e/d$a;)V

    iput-object v0, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    return-void
.end method

.method public static a()Lcom/netease/nis/alivedetected/e/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/alivedetected/e/d;->a:Lcom/netease/nis/alivedetected/e/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/nis/alivedetected/e/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/alivedetected/e/d;->a:Lcom/netease/nis/alivedetected/e/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/alivedetected/e/d;

    invoke-direct {v1}, Lcom/netease/nis/alivedetected/e/d;-><init>()V

    sput-object v1, Lcom/netease/nis/alivedetected/e/d;->a:Lcom/netease/nis/alivedetected/e/d;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/nis/alivedetected/e/d;->a:Lcom/netease/nis/alivedetected/e/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v9, ""

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/e/d;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 12
    iput-object p1, v0, Lcom/netease/nis/alivedetected/e/d$b;->b:Ljava/lang/String;

    .line 13
    iput-object p2, v0, Lcom/netease/nis/alivedetected/e/d$b;->i:Ljava/lang/String;

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, ""

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 16
    iput-object p3, p1, Lcom/netease/nis/alivedetected/e/d$b;->c:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 18
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b;->c:Ljava/lang/String;

    .line 19
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 21
    iput-object p4, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->a:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 23
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->a:Ljava/lang/String;

    .line 24
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 26
    iput-object p5, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->b:Ljava/lang/String;

    goto :goto_2

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 28
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->b:Ljava/lang/String;

    .line 29
    :goto_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 31
    iput-object p6, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->c:Ljava/lang/String;

    goto :goto_3

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 33
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->c:Ljava/lang/String;

    .line 34
    :goto_3
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 35
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 36
    iput-object p7, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->d:Ljava/lang/String;

    goto :goto_4

    .line 37
    :cond_4
    iget-object p1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 38
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b$a;->d:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/netease/nis/alivedetected/e/d;->b:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 3
    iget-object v0, v0, Lcom/netease/nis/alivedetected/e/d$b;->i:Ljava/lang/String;

    const-string v1, "2"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 5
    iget-object v0, v0, Lcom/netease/nis/alivedetected/e/d$b;->i:Ljava/lang/String;

    const-string v1, "8"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 7
    iget-object v0, v0, Lcom/netease/nis/alivedetected/e/d$b;->i:Ljava/lang/String;

    const-string v1, "9"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 14
    :cond_1
    sget-boolean v0, Lcom/netease/nis/alivedetected/AliveDetector;->isAllowedUploadInfo:Z

    if-nez v0, :cond_2

    return-void

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://da.dun.163.com/sn.gif?d="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pid=liveperson&bid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&nts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&tt=1&os="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&ip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&dns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/nis/alivedetected/e/d$b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&name=&value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/netease/nis/alivedetected/e/d$b;->j:Lcom/netease/nis/alivedetected/e/d$b$a;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "hc"

    .line 363
    :try_start_0
    iget-object v5, v1, Lcom/netease/nis/alivedetected/e/d$b$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "em"

    .line 364
    :try_start_1
    iget-object v5, v1, Lcom/netease/nis/alivedetected/e/d$b$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "fa"

    .line 365
    :try_start_2
    iget-object v5, v1, Lcom/netease/nis/alivedetected/e/d$b$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "ons"

    .line 366
    :try_start_3
    iget-object v1, v1, Lcom/netease/nis/alivedetected/e/d$b$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 369
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 370
    :goto_0
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/nis/alivedetected/e/d$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/alivedetected/e/d$a;-><init>(Lcom/netease/nis/alivedetected/e/d;)V

    invoke-static {v0, v1}, Lcom/netease/nis/basesdk/HttpUtil;->doGetRequestByForm(Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-void
.end method
