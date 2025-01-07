.class public Lcom/tencent/bugly/proguard/no;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/no$a;
    }
.end annotation


# static fields
.field private static BH:Lcom/tencent/bugly/proguard/no;


# instance fields
.field final BI:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/bugly/proguard/np;",
            ">;"
        }
    .end annotation
.end field

.field final BJ:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/bugly/proguard/no$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/no;->BI:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/no;->BJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static hD()Lcom/tencent/bugly/proguard/no;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/no;->BH:Lcom/tencent/bugly/proguard/no;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/no;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/no;->BH:Lcom/tencent/bugly/proguard/no;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/no;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/no;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/no;->BH:Lcom/tencent/bugly/proguard/no;

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
    sget-object v0, Lcom/tencent/bugly/proguard/no;->BH:Lcom/tencent/bugly/proguard/no;

    return-object v0
.end method


# virtual methods
.method public final hE()V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RMonitor_launch_report"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v1

    const-string v1, "launch report fail for "

    aput-object v1, v4, v3

    const/4 v1, 0x2

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gw()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v0, 0x9d

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "launch report fail for reach limit."

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v4, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->w(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "launch report fail for disabled. "

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/no;->BI:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "launch_metric"

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/np;

    const-string v5, "cold_launch"

    iget-object v6, v2, Lcom/tencent/bugly/proguard/np;->BM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    const-string v6, "last_app_version"

    if-nez v5, :cond_3

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/tencent/bugly/proguard/np;->BQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v7, "tag_first_launch"

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v7, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    new-instance v5, Lcom/tencent/bugly/proguard/bg;

    sget-object v6, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/np;->hF()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v5, v6, v3, v4, v2}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/lb$a;->gI()Lcom/tencent/bugly/proguard/lb;

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/lb;->a(ZLcom/tencent/bugly/proguard/bg;)V

    sget-object v2, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/no;->BI:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/no;->BJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/no$a;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/no$a;->BK:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/bb;->b(Lcom/tencent/bugly/proguard/am;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/tencent/bugly/proguard/no$a;->BL:Ljava/lang/String;

    const-string v5, "launch"

    invoke-static {v5, v4, v2, v3, v1}, Lcom/tencent/bugly/proguard/rb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/no;->BJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
