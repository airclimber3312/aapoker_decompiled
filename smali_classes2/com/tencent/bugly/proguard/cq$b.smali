.class final Lcom/tencent/bugly/proguard/cq$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic fc:Lcom/tencent/bugly/proguard/cq;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/cq$b;->fc:Lcom/tencent/bugly/proguard/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/cq$b;->fc:Lcom/tencent/bugly/proguard/cq;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/cq;->b(Lcom/tencent/bugly/proguard/cq;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/proguard/cq$b;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/cq$b;->fc:Lcom/tencent/bugly/proguard/cq;

    invoke-direct {v3, v4}, Lcom/tencent/bugly/proguard/cq$b;-><init>(Lcom/tencent/bugly/proguard/cq;)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/cq$b;->fc:Lcom/tencent/bugly/proguard/cq;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/cq;->b(Lcom/tencent/bugly/proguard/cq;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x1388

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq$b;->fc:Lcom/tencent/bugly/proguard/cq;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/cq;->j(IZ)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq$b;->fc:Lcom/tencent/bugly/proguard/cq;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/cq;->bl()V

    return-void
.end method
