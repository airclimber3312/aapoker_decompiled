.class public Lcom/hyphenate/util/PerfUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpeed(JJ)I
    .locals 2

    long-to-float p0, p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-float p1, p2

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getTimeSpendSecond(J)I
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
