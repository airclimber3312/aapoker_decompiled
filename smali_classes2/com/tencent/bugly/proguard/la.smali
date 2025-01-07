.class public Lcom/tencent/bugly/proguard/la;
.super Ljava/lang/Object;


# static fields
.field private static zv:Lcom/tencent/bugly/proguard/kz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/u;)Lcom/tencent/bugly/proguard/kz;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/bugly/proguard/u;->z()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Lcom/tencent/bugly/proguard/kz;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/kz;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->NUMBER_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v2}, Lcom/tencent/bugly/proguard/u;->f(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/bugly/proguard/kz;->putNumberParam(Ljava/lang/String;D)Z

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->STRING_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_4

    invoke-interface {p0, v2, v4}, Lcom/tencent/bugly/proguard/u;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/proguard/kz;->putStringParam(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->STRING_ARRAY_PARAM_KEYS:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0, v2}, Lcom/tencent/bugly/proguard/u;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/tencent/bugly/proguard/kz;->addStringToStringArrayParam(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/tencent/bugly/proguard/kz;->zm:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/ky;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0, v2}, Lcom/tencent/bugly/proguard/u;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/tencent/bugly/proguard/kz;->E(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    const-string v3, "user_data_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v4}, Lcom/tencent/bugly/proguard/u;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/tencent/bugly/proguard/kz;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static gG()Lcom/tencent/bugly/proguard/kz;
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/la;->zv:Lcom/tencent/bugly/proguard/kz;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/la;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/la;->zv:Lcom/tencent/bugly/proguard/kz;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/kz;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/kz;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/aa$a;->C()Lcom/tencent/bugly/proguard/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->B()Lcom/tencent/bugly/proguard/t;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/kz;->zu:Lcom/tencent/bugly/proguard/t;

    sput-object v1, Lcom/tencent/bugly/proguard/la;->zv:Lcom/tencent/bugly/proguard/kz;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/la;->zv:Lcom/tencent/bugly/proguard/kz;

    return-object v0
.end method
