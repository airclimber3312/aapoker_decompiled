.class public final Lcom/tencent/bugly/proguard/ov;
.super Ljava/lang/Object;


# direct methods
.method public static ih()Lcom/tencent/bugly/proguard/gh;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    return-object v0
.end method

.method public static ii()F
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ih()Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget v0, v0, Lcom/tencent/bugly/proguard/hc;->tV:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static ij()Lcom/tencent/bugly/proguard/gx;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    check-cast v0, Lcom/tencent/bugly/proguard/gx;

    return-object v0
.end method
