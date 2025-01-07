.class public final Lcom/tencent/bugly/proguard/jo;
.super Ljava/lang/Object;


# direct methods
.method public static getThreshold()F
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget v0, v0, Lcom/tencent/bugly/proguard/hc;->tV:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :cond_0
    return v0
.end method
