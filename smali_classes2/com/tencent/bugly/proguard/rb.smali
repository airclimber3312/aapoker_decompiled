.class public final Lcom/tencent/bugly/proguard/rb;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/qy$a;->jk()Lcom/tencent/bugly/proguard/qy;

    move-result-object v0

    const-string v1, "RMIllegalReport_Client"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qy;->cb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "RMonitor_config_atta"

    const-string p2, "report fail for not sampling"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/qs;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/qs;->bM(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/qs;->bN(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/bugly/proguard/qs;->bO(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/bugly/proguard/qs;->bP(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/tencent/bugly/proguard/qs;->bT(Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/qv$a;->jg()Lcom/tencent/bugly/proguard/qv;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qv;->d(Lcom/tencent/bugly/proguard/qs;)V

    return-void
.end method
