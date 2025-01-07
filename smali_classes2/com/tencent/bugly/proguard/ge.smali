.class final Lcom/tencent/bugly/proguard/ge;
.super Ljava/lang/Object;


# direct methods
.method public static aA(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gt$a;->fa()Lcom/tencent/bugly/proguard/gt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/gt;->j(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/hc;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
