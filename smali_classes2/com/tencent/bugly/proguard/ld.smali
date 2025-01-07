.class public final Lcom/tencent/bugly/proguard/ld;
.super Ljava/lang/Object;


# static fields
.field private static zy:Ljava/io/File;


# direct methods
.method public static gK()Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/ku;->be()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/ld;->zy:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "fd_leak"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ld;->zy:Ljava/io/File;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/ld;->zy:Ljava/io/File;

    return-object v0
.end method

.method public static gL()Z
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/fy;->aY()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v0

    iget v0, v0, Lcom/tencent/bugly/proguard/gu;->tf:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static gM()I
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/fy;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v0

    iget v0, v0, Lcom/tencent/bugly/proguard/gu;->tV:I

    return v0
.end method

.method public static gN()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/fy;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gu;->th:Z

    return v0
.end method

.method private static gO()Lcom/tencent/bugly/proguard/gh;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    return-object v0
.end method

.method public static gP()Lcom/tencent/bugly/proguard/gu;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gO()Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    check-cast v0, Lcom/tencent/bugly/proguard/gu;

    return-object v0
.end method
