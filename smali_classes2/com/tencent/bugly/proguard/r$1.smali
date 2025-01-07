.class final Lcom/tencent/bugly/proguard/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/proguard/p;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ae:J

.field final synthetic af:J

.field final synthetic ag:Z


# direct methods
.method constructor <init>(JJZ)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/r$1;->ae:J

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/r$1;->af:J

    iput-boolean p5, p0, Lcom/tencent/bugly/proguard/r$1;->ag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/tencent/bugly/proguard/aa$a;->C()Lcom/tencent/bugly/proguard/aa;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/ej;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ej;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/aa;->a(Lcom/tencent/bugly/proguard/v;)V

    const-string v0, "launch_time_ratio"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/cy;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/dn$a;->cH()Lcom/tencent/bugly/proguard/dn;

    move-result-object v0

    new-instance v11, Lcom/tencent/bugly/proguard/dn$c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BuglySLALaunchEvent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    iget-wide v7, p0, Lcom/tencent/bugly/proguard/r$1;->ae:J

    iget-wide v9, p0, Lcom/tencent/bugly/proguard/r$1;->af:J

    sub-long/2addr v7, v9

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/r$1;->ag:Z

    if-eqz v1, :cond_0

    const-string v1, "BuglyOA"

    goto :goto_0

    :cond_0
    const-string v1, "BuglyQQ"

    :goto_0
    move-object v9, v1

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/tencent/bugly/proguard/dn$c;-><init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/tencent/bugly/proguard/dn;->a(Lcom/tencent/bugly/proguard/dn$c;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "launch time cost is disabled"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
