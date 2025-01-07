.class public final Lcom/tencent/bugly/proguard/pw;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/tencent/bugly/proguard/ie;J)Z
    .locals 3

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ie;->vt:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    iget-wide p1, p0, Lcom/tencent/bugly/proguard/ie;->vt:J

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ie;->vx:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    iget-wide p1, p0, Lcom/tencent/bugly/proguard/ie;->vt:J

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ie;->vw:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a([J)Z
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static b([J)J
    .locals 6

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static d(Lcom/tencent/bugly/proguard/ie;)I
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x1f4

    invoke-static {p0, v1, v2}, Lcom/tencent/bugly/proguard/pw;->a(Lcom/tencent/bugly/proguard/ie;J)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ie;->vv:[J

    invoke-static {v0}, Lcom/tencent/bugly/proguard/pw;->b([J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const/16 v0, 0x40

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/tencent/bugly/proguard/ie;->vu:[J

    invoke-static {p0}, Lcom/tencent/bugly/proguard/pw;->b([J)J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-gtz p0, :cond_3

    or-int/lit16 v0, v0, 0x80

    :cond_3
    return v0
.end method
