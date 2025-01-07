.class final Lcom/tencent/bugly/proguard/ep$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ep$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic nB:Lcom/tencent/bugly/proguard/ep$a;

.field final synthetic nC:Ljava/lang/String;

.field final synthetic nD:Z


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ep$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ep$1;->nC:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nD:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJLjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const-string v3, "new process %s"

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nC:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iput-wide p1, v1, Lcom/tencent/bugly/proguard/ep$a;->nE:J

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iput-object p5, p1, Lcom/tencent/bugly/proguard/ep$a;->nF:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iput-wide p3, p1, Lcom/tencent/bugly/proguard/ep$a;->nG:J

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nD:Z

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "new thread %s"

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-wide v3, v1, Lcom/tencent/bugly/proguard/ep$a;->nE:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-wide v3, v1, Lcom/tencent/bugly/proguard/ep$a;->nG:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ep$a;->nF:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ep$a;->nH:Ljava/util/Map;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/tencent/bugly/proguard/ep$a;->nH:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ep$a;->nH:Ljava/util/Map;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v2

    aput-object p4, v3, v0

    const/4 p3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return v0
.end method

.method public final i(J)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "process end %d"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-wide v1, p1, Lcom/tencent/bugly/proguard/ep$a;->nE:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-wide v1, p1, Lcom/tencent/bugly/proguard/ep$a;->nG:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ep$1;->nB:Lcom/tencent/bugly/proguard/ep$a;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ep$a;->nF:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    return v0
.end method
