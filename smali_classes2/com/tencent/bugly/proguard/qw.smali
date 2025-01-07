.class public Lcom/tencent/bugly/proguard/qw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/qz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IIJ)V
    .locals 5

    const-string v0, "RMConfigEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/qy$a;->jk()Lcom/tencent/bugly/proguard/qy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/qy;->cb(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-instance v2, Lcom/tencent/bugly/proguard/qs;

    invoke-direct {v2, v0}, Lcom/tencent/bugly/proguard/qs;-><init>(Ljava/lang/String;)V

    iput p2, v2, Lcom/tencent/bugly/proguard/qs;->GN:I

    iput p3, v2, Lcom/tencent/bugly/proguard/qs;->ri:I

    long-to-int v0, p4

    iput v0, v2, Lcom/tencent/bugly/proguard/qs;->GO:I

    iput v1, v2, Lcom/tencent/bugly/proguard/qs;->GP:I

    sget-object v0, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/qv$a;->jg()Lcom/tencent/bugly/proguard/qv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/qv;->e(Lcom/tencent/bugly/proguard/qs;)V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_atta"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reportConfigEvent, eventResult: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", errorCode: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", eventCostInMs: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", hitSampling: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
