.class public final Lcom/tencent/bugly/proguard/fz;
.super Ljava/lang/Object;


# static fields
.field private static volatile rQ:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static b(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/bugly/proguard/fz$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/fz$1;-><init>(ILjava/util/List;)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected static eK()V
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/fz;->b(ILjava/util/List;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_manager_Magnifier"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "abolish fail, app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", userMeta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method protected static r(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v0

    const-string v1, "RMonitor_manager_Magnifier"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/tencent/bugly/proguard/fz;->rQ:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ot;->C(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startMonitors, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has started yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/fz;->rQ:Z

    if-nez v0, :cond_2

    sput-boolean v4, Lcom/tencent/bugly/proguard/fz;->rQ:Z

    :cond_2
    invoke-static {v4, p0}, Lcom/tencent/bugly/proguard/fz;->b(ILjava/util/List;)V

    return-void

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    aput-object v5, v0, v2

    sget-object v5, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    aput-object v5, v0, v4

    const-string v5, "startMonitors fail, app: %s, userMeta: %s"

    invoke-static {p0, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    aput-object p0, v3, v4

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method protected static s(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RMonitor_manager_Magnifier"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ot;->D(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4, p0}, Lcom/tencent/bugly/proguard/fz;->b(ILjava/util/List;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopMonitors, no monitor started for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopMonitors fail app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", userMeta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method
