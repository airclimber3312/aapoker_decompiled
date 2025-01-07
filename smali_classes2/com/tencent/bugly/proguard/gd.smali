.class public final Lcom/tencent/bugly/proguard/gd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/gj;


# instance fields
.field private debugMode:Z

.field private final rY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final rZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final sa:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/bugly/proguard/gj;",
            ">;"
        }
    .end annotation
.end field

.field sb:Lcom/tencent/bugly/proguard/gk;

.field sc:Z

.field private sd:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gd;->rY:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gd;->rZ:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/gd;->sb:Lcom/tencent/bugly/proguard/gk;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gd;->sc:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gd;->debugMode:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gd;->sd:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/gd;->sa:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-string v1, "JVM_TI_OPEN"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CONFIG_USE_V7"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object p0

    return-object p0
.end method

.method private ay(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gh;
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/gd;->eL()V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/gd;->az(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gh;

    move-result-object p1

    return-object p1
.end method

.method private static az(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gh;
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/gm;->sV:Lcom/tencent/bugly/proguard/gm$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/gm$a;->eV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/gh;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static eN()V
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "apply config"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/hr;->uB:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v4

    invoke-static {v3}, Lcom/tencent/bugly/proguard/gd;->az(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gh;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iput-object v4, v3, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v1, "safe_mode"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/hd;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/tencent/bugly/proguard/hd;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hd;->tW:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kt;->y(Ljava/util/List;)V

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v1, "atta"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/qq;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/bugly/proguard/qy$a;->jk()Lcom/tencent/bugly/proguard/qy;

    move-result-object v1

    check-cast v0, Lcom/tencent/bugly/proguard/qq;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/qy;->b(Lcom/tencent/bugly/proguard/qq;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/gj;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gd;->sa:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/hb;)V
    .locals 11

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "merge list_metric"

    const-string v2, "RMonitor_config"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v1, "looper_metric"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    const-string v3, "list_metric"

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v1

    instance-of v3, v1, Lcom/tencent/bugly/proguard/gv;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    instance-of v3, v0, Lcom/tencent/bugly/proguard/gv;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/tencent/bugly/proguard/gv;

    check-cast v0, Lcom/tencent/bugly/proguard/gv;

    if-eqz v1, :cond_2

    iget-boolean v3, v0, Lcom/tencent/bugly/proguard/gv;->enabled:Z

    if-nez v3, :cond_1

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/gv;->enabled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/gv;->enabled:Z

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gd;->debugMode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gd;->rY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    sget-object v1, Lcom/tencent/bugly/proguard/hq;->uz:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget v6, v1, v3

    sget-object v7, Lcom/tencent/bugly/proguard/hq;->uA:[I

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_5

    aget v10, v7, v9

    if-ne v10, v6, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_6

    invoke-static {v6}, Lcom/tencent/bugly/proguard/gz;->t(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/tencent/bugly/proguard/hb;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/gd;->rY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "app not in debug mode, not allow to modify config."

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/tencent/bugly/proguard/gd;->eN()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gd;->sa:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/gj;

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/gj;->a(Lcom/tencent/bugly/proguard/hb;)V

    goto :goto_5

    :cond_9
    return-void
.end method

.method public final eL()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gd;->sd:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "init config"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gd;->sd:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/gd;->eN()V

    new-instance v0, Lcom/tencent/bugly/proguard/gd$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gd$1;-><init>(Lcom/tencent/bugly/proguard/gd;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final eM()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gd;->sd:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "refresh config"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gf;->c(Lcom/tencent/bugly/proguard/am;)V

    sget v0, Lcom/tencent/bugly/proguard/gk$a;->sv:I

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/gd;->r(I)V

    :cond_0
    return-void
.end method

.method final r(I)V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "load config"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/gd$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/gd$2;-><init>(Lcom/tencent/bugly/proguard/gd;I)V

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aE()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final s(I)Lcom/tencent/bugly/proguard/gh;
    .locals 0

    invoke-static {p1}, Lcom/tencent/bugly/proguard/gz;->t(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/gd;->ay(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gh;

    move-result-object p1

    return-object p1
.end method
