.class public final Lcom/tencent/bugly/proguard/gb;
.super Ljava/lang/Object;


# static fields
.field protected static final rU:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/proguard/gb;->rU:Ljava/util/HashSet;

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_manager_sdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, ", invalid property, key = "

    aput-object v2, v1, p0

    const/4 p0, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, ", value = "

    aput-object p1, v1, p0

    if-nez p2, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x5

    aput-object p0, v1, p1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/Object;Z)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_manager_sdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, ", key = "

    aput-object v2, v1, p0

    const/4 p0, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, ", value = "

    aput-object p1, v1, p0

    if-nez p2, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x5

    aput-object p0, v1, p1

    const/4 p0, 0x6

    const-string p1, ", ret = "

    aput-object p1, v1, p0

    const/4 p0, 0x7

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/qp;->jd()Lcom/tencent/bugly/proguard/qp;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/qp;->GE:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/ql;

    const-string v1, "setProperty"

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/ql;->e(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, p0, p1}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;Z)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ra;->jl()Lcom/tencent/bugly/proguard/ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ra;->jo()V

    return v0
.end method

.method public static av(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->r(Ljava/util/List;)V

    return-void
.end method

.method public static aw(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->s(Ljava/util/List;)V

    return-void
.end method

.method public static b(ILjava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/qp;->jd()Lcom/tencent/bugly/proguard/qp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/qp;->M(I)Lcom/tencent/bugly/proguard/qm;

    move-result-object v0

    const-string v1, "addProperty"

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/qm;->f(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, p0, p1}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;Z)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ra;->jl()Lcom/tencent/bugly/proguard/ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ra;->jo()V

    return v0
.end method

.method public static c(ILjava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/qp;->jd()Lcom/tencent/bugly/proguard/qp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/qp;->M(I)Lcom/tencent/bugly/proguard/qm;

    move-result-object v0

    const-string v1, "removeProperty"

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/qm;->g(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, p0, p1}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;Z)V

    return v0
.end method

.method public static eK()V
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v0

    const-string v1, "RMonitor_manager_sdk"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "abolish fail for "

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gw()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "abolish"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/fz;->eK()V

    return-void
.end method

.method public static enterScene(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p0, v0, Lcom/tencent/bugly/proguard/kd;->xT:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/kd;->aV(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/kd;->xO:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/kf;

    invoke-interface {v2, p0}, Lcom/tencent/bugly/proguard/kf;->aW(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/kd;->gc()V

    :cond_1
    return-void
.end method

.method public static ep()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v0

    return v0
.end method

.method public static exitScene(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object v0

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/kd;->xT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/proguard/kd;->xT:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/kd;->xS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/tencent/bugly/proguard/kd;->xS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/kd;->aV(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/kd;->xO:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/kf;

    invoke-interface {v2, p0}, Lcom/tencent/bugly/proguard/kf;->aX(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/kd;->gc()V

    :cond_3
    return-void
.end method

.method public static f(ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/qp;->jd()Lcom/tencent/bugly/proguard/qp;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/qp;->GD:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/qn;

    const-string v1, "setProperty"

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/qn;->bB(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, p0, p1}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/bugly/proguard/gb;->a(Ljava/lang/String;ILjava/lang/Object;Z)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ra;->jl()Lcom/tencent/bugly/proguard/ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ra;->jo()V

    return v0
.end method

.method public static getGlobalCustomDataEditor()Lcom/tencent/rmonitor/custom/ICustomDataEditor;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v0

    return-object v0
.end method

.method public static r(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RMonitor_manager_sdk"

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, "start monitor fail for "

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "start monitor, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "start monitor, need: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/bugly/proguard/gb;->rU:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/proguard/fz;->r(Ljava/util/List;)V

    sget-object v0, Lcom/tencent/bugly/proguard/gb;->rU:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "start monitor fail for list is null or empty."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method public static s(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RMonitor_manager_sdk"

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, "stop monitor fail for "

    aput-object v0, v1, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "stop monitor, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/bugly/proguard/fz;->s(Ljava/util/List;)V

    sget-object v0, Lcom/tencent/bugly/proguard/gb;->rU:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "stop monitor fail for list is null or empty."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method
