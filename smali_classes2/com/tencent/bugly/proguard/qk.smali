.class public final Lcom/tencent/bugly/proguard/qk;
.super Ljava/lang/Object;


# direct methods
.method public static jc()V
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->vV:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
