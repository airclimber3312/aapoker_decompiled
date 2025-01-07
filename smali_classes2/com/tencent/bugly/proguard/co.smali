.class public final Lcom/tencent/bugly/proguard/co;
.super Ljava/lang/Object;


# direct methods
.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/proguard/r;->ab:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "W"

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/dx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
