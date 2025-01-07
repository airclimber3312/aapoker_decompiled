.class public final Lcom/tencent/bugly/proguard/qe;
.super Ljava/lang/Object;


# direct methods
.method public static J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "QuantileErrorEvent"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/qe;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/qs;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/qs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/qs;->f([Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/qv$a;->jg()Lcom/tencent/bugly/proguard/qv;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qv;->d(Lcom/tencent/bugly/proguard/qs;)V

    return-void
.end method
