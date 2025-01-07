.class public Lcom/tencent/bugly/proguard/cr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/cr$a;
    }
.end annotation


# static fields
.field private static Q:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static T:Z = true

.field public static fh:Z = false

.field private static fi:I = 0xa

.field private static fj:J = 0x493e0L

.field private static fk:J = 0x7530L

.field private static fl:J

.field private static fm:I

.field private static fn:J

.field private static fo:J

.field public static fp:Lcom/tencent/bugly/proguard/cq;

.field private static fq:J

.field private static fr:Landroid/app/Application$ActivityLifecycleCallbacks;


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

.method public static a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/cq;->bm()V

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ix:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ix:J

    sput-wide v0, Lcom/tencent/bugly/proguard/cr;->fk:J

    :cond_2
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->fi:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->fi:I

    sput p1, Lcom/tencent/bugly/proguard/cr;->fi:I

    :cond_3
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iC:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iC:J

    sput-wide p0, Lcom/tencent/bugly/proguard/cr;->fj:J

    :cond_4
    return-void
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/bugly/proguard/cr;->fq:J

    return-wide p0
.end method

.method private static b(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/p;->i()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/cq;->J(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-object v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fE:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->type:I

    if-ne v4, v1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cX()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    iget-wide v8, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fv:J

    cmp-long v10, v8, v4

    if-ltz v10, :cond_2

    iget-wide p0, v3, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->fw:J

    cmp-long v2, p0, v6

    if-gtz v2, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/cq;->bm()V

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    :goto_2
    if-nez p0, :cond_4

    return-void

    :cond_4
    sget-boolean p0, Lcom/tencent/bugly/proguard/cr;->T:Z

    if-eqz p0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/tencent/bugly/proguard/cr;->fo:J

    sget-object p0, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    invoke-virtual {p0, v1, v1}, Lcom/tencent/bugly/proguard/cq;->j(IZ)V

    const-string p0, "[session] launch app, new start"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget-object p0, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/cq;->bl()V

    sget-object p0, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    const-wide/32 v0, 0x1499700

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/cq;->a(J)V

    :cond_5
    return-void
.end method

.method public static bn()V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/cq;->j(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic bo()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/cr;->Q:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic bp()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/proguard/cr;->fo:J

    return-wide v0
.end method

.method static synthetic bq()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/proguard/cr;->fn:J

    return-wide v0
.end method

.method static synthetic br()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/proguard/cr;->fl:J

    return-wide v0
.end method

.method static synthetic bs()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/proguard/cr;->fk:J

    return-wide v0
.end method

.method static synthetic bt()I
    .locals 2

    sget v0, Lcom/tencent/bugly/proguard/cr;->fm:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/proguard/cr;->fm:I

    return v0
.end method

.method static synthetic bu()I
    .locals 1

    sget v0, Lcom/tencent/bugly/proguard/cr;->fm:I

    return v0
.end method

.method static synthetic bv()I
    .locals 1

    sget v0, Lcom/tencent/bugly/proguard/cr;->fi:I

    return v0
.end method

.method static synthetic bw()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/proguard/cr;->T:Z

    return v0
.end method

.method static synthetic bx()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/proguard/cr;->fq:J

    return-wide v0
.end method

.method static synthetic by()J
    .locals 2

    sget-wide v0, Lcom/tencent/bugly/proguard/cr;->fj:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/bugly/proguard/cr;->fn:J

    return-wide p0
.end method

.method public static c(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V
    .locals 5

    sget-boolean v0, Lcom/tencent/bugly/proguard/cr;->fh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/dh;->T:Z

    sput-boolean v0, Lcom/tencent/bugly/proguard/cr;->T:Z

    new-instance v0, Lcom/tencent/bugly/proguard/cq;

    sget-boolean v1, Lcom/tencent/bugly/proguard/cr;->T:Z

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/proguard/cq;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/dg;->bC()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/tencent/bugly/proguard/dh;->k(IZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/cr;->fr:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v2, :cond_3

    new-instance v2, Lcom/tencent/bugly/proguard/cr$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/cr$a;-><init>()V

    sput-object v2, Lcom/tencent/bugly/proguard/cr;->fr:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_3
    sget-object v2, Lcom/tencent/bugly/proguard/cr;->fr:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    sput-boolean v1, Lcom/tencent/bugly/proguard/cr;->fh:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/p;->k()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/proguard/cr;->Q:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/p;->m()J

    move-result-wide v2

    goto :goto_2

    :cond_5
    move-wide v2, v0

    :goto_2
    cmp-long v4, v2, v0

    if-gtz v4, :cond_6

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/cr;->b(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/cr$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/cr$1;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/cr;->b(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V

    return-void
.end method

.method static synthetic m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
