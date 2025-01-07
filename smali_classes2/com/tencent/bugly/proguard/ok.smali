.class public final Lcom/tencent/bugly/proguard/ok;
.super Lcom/tencent/bugly/proguard/og;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ok$a;
    }
.end annotation


# instance fields
.field private Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

.field private Dq:Lcom/tencent/bugly/proguard/oc;

.field private Dr:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/og;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ok;->Dq:Lcom/tencent/bugly/proguard/oc;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ok;->Dr:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ok;)Lcom/tencent/bugly/proguard/oc;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ok;->Dq:Lcom/tencent/bugly/proguard/oc;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ok;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/tencent/bugly/proguard/ok$a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/ok$a;-><init>(Lcom/tencent/bugly/proguard/ok;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/jm;

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/jm;->xb:J

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/ok$a;->nf:J

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/jm;

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/jm;->xb:J

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/jm;

    iget-wide v4, v4, Lcom/tencent/bugly/proguard/jm;->xd:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/ok$a;->Dv:J

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/bugly/proguard/ok$a;->repeatCount:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/jm;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/jm;->xa:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/bugly/proguard/ok$a;->Dw:Ljava/lang/String;

    iput v1, v0, Lcom/tencent/bugly/proguard/ok$a;->CU:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/jm;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/jm;->xa:Ljava/lang/String;

    iget-object v8, v0, Lcom/tencent/bugly/proguard/ok$a;->Dw:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/tencent/bugly/proguard/ok$a;->repeatCount:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/tencent/bugly/proguard/ok$a;->repeatCount:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/jm;

    iget-wide v8, v5, Lcom/tencent/bugly/proguard/jm;->xb:J

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/jm;

    iget-wide v10, v5, Lcom/tencent/bugly/proguard/jm;->xd:J

    div-long/2addr v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/tencent/bugly/proguard/ok$a;->Dv:J

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    new-instance v0, Lcom/tencent/bugly/proguard/ok$a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/ok$a;-><init>(Lcom/tencent/bugly/proguard/ok;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/jm;

    iget-wide v8, v5, Lcom/tencent/bugly/proguard/jm;->xb:J

    iput-wide v8, v0, Lcom/tencent/bugly/proguard/ok$a;->nf:J

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/jm;

    iget-wide v8, v5, Lcom/tencent/bugly/proguard/jm;->xb:J

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/jm;

    iget-wide v10, v5, Lcom/tencent/bugly/proguard/jm;->xd:J

    div-long/2addr v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/tencent/bugly/proguard/ok$a;->Dv:J

    iput v2, v0, Lcom/tencent/bugly/proguard/ok$a;->repeatCount:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/jm;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/jm;->xa:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/bugly/proguard/ok$a;->Dw:Ljava/lang/String;

    iput v1, v0, Lcom/tencent/bugly/proguard/ok$a;->CU:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ib()Z
    .locals 1

    invoke-static {}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->fX()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/nz;JJ)V
    .locals 10

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->fY()Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/oh;->threshold:J

    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    iget-object p4, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    iget-wide v6, p1, Lcom/tencent/bugly/proguard/nz;->CE:J

    iget-boolean p5, p4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    if-eqz p5, :cond_2

    iget-object p5, p4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    if-eqz p5, :cond_2

    iget-object p5, p4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    invoke-virtual {p5}, Ljava/lang/Thread;->isAlive()Z

    move-result p5

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wY:J

    move-object v3, p4

    move-wide v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->nativeGetStackTrace(JJJ)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/jn;->aU(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-boolean p4, p4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wU:Z

    if-eqz p4, :cond_3

    const-string p4, "#"

    invoke-virtual {p2, p4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p2, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/nz;->hQ()Lcom/tencent/bugly/proguard/nz;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/bugly/proguard/ok;->Dr:Landroid/os/Handler;

    new-instance p4, Lcom/tencent/bugly/proguard/ok$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/tencent/bugly/proguard/ok$1;-><init>(Lcom/tencent/bugly/proguard/ok;Lcom/tencent/bugly/proguard/nz;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/oc;)Z
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    instance-of v2, v0, Lcom/tencent/bugly/proguard/gw;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lcom/tencent/bugly/proguard/gw;

    iget-boolean v2, v0, Lcom/tencent/bugly/proguard/gw;->tn:Z

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gw;->tb:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_0
    new-instance v4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/og;->Df:Ljava/lang/Thread;

    invoke-direct {v4, v5, v2, v0}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;-><init>(Ljava/lang/Thread;ZZ)V

    iput-object v4, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    iget-boolean v0, v4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v3

    :cond_2
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ok;->Dq:Lcom/tencent/bugly/proguard/oc;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v2, v0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    long-to-int v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    iget-boolean v2, p1, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iput v0, p1, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wV:I

    const/16 v0, 0x64

    iput v0, p1, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wW:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace$1;

    invoke-direct {v2, p1}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace$1;-><init>(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QST-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    invoke-virtual {p1}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->start()Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ok;->Dr:Landroid/os/Handler;

    return v1
.end method

.method public final e(Lcom/tencent/bugly/proguard/nz;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->start()Z

    :cond_0
    return-void
.end method

.method public final hY()V
    .locals 0

    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ok;->Dp:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->fY()Z

    :cond_0
    return-void
.end method
