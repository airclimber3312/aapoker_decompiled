.class final Lcom/tencent/bugly/proguard/ra$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HL:Lcom/tencent/bugly/proguard/ra;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ra;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ra$1;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_metric_sla_Helper"

    aput-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkSLAReportInner, begin, isSLAReported: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/ra$1;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/ra;->a(Lcom/tencent/bugly/proguard/ra;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra$1;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ra;->a(Lcom/tencent/bugly/proguard/ra;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra$1;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ra;->jp()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra$1;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ra;->jq()V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSLAReportInner, end, isSLAReported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ra$1;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ra;->a(Lcom/tencent/bugly/proguard/ra;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void
.end method
