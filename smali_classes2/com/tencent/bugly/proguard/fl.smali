.class public final Lcom/tencent/bugly/proguard/fl;
.super Ljava/lang/Object;


# direct methods
.method public static p(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "front_end"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "back_end"

    return-object p0

    :cond_1
    const-string p0, "unknown"

    return-object p0
.end method

.method public static q(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "disconnect"

    goto :goto_0

    :cond_1
    const-string p0, "mobile"

    goto :goto_0

    :cond_2
    const-string p0, "wifi"

    :goto_0
    return-object p0
.end method
