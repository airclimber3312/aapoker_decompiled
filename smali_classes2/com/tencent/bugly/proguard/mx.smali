.class public final Lcom/tencent/bugly/proguard/mx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ba$a;
.implements Lcom/tencent/bugly/proguard/lg;


# instance fields
.field private final Ax:Ljava/lang/String;


# direct methods
.method public static bo(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fd_heap_dump_fail"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "107"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "false"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method

.method private static varargs c([Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/qy$a;->jk()Lcom/tencent/bugly/proguard/qy;

    move-result-object v0

    const-string v1, "RMFdLeakEvent"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qy;->cb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/qs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/qs;-><init>(B)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bZ(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/qs;->f([Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/qv$a;->jg()Lcom/tencent/bugly/proguard/qv;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qv;->e(Lcom/tencent/bugly/proguard/qs;)V

    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fd_monitor_start"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method

.method public final D(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fd_dump_start"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/mn;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "fd_dump_finish"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/String;

    aput-object v2, p1, v3

    iget v2, p2, Lcom/tencent/bugly/proguard/mn;->Ag:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/mn;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/mn;->hb()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    iget-wide v0, p2, Lcom/tencent/bugly/proguard/mn;->Ah:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {}, Lcom/tencent/bugly/proguard/ox;->im()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void

    :cond_0
    new-array p1, v4, [Ljava/lang/String;

    aput-object v2, p1, v3

    iget v2, p2, Lcom/tencent/bugly/proguard/mn;->Ag:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/mn;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/mn;->hb()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v5

    invoke-static {p1}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;II)V
    .locals 1

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    const-string v0, "fd_upload_result"

    aput-object v0, p3, p4

    const/4 p4, 0x1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/mx;->Ax:Ljava/lang/String;

    aput-object v0, p3, p4

    const/4 p4, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x3

    aput-object p2, p3, p1

    invoke-static {p3}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/md;)V
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "fd_analyze_finish"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/tencent/bugly/proguard/md;->zT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/md;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/md;->hb()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/md;->gZ()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/tencent/bugly/proguard/md;->zW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/proguard/mc;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/mc;->zR:Ljava/util/List;

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    :cond_1
    invoke-interface {v8, v3, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/bugly/proguard/mc;->zR:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "fd_analyze_result"

    aput-object v2, v1, v3

    iget v2, p1, Lcom/tencent/bugly/proguard/md;->zT:I

    invoke-static {v2}, Lcom/tencent/bugly/proguard/mu;->G(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p1, Lcom/tencent/bugly/proguard/md;->zU:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v0

    const/4 v0, 0x5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    aput-object v2, v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/md;->gW()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/md;->gV()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final al()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fd_upload_result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/mx;->Ax:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "810"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "fd_upload_result"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/mx;->Ax:Ljava/lang/String;

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "0"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, ""

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method

.method public final c(II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final gQ()V
    .locals 1

    const-string v0, "fd_analyze_start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/mx;->c([Ljava/lang/String;)V

    return-void
.end method
