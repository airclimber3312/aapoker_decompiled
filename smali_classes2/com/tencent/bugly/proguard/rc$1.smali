.class final Lcom/tencent/bugly/proguard/rc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HP:I

.field final synthetic HQ:Lcom/tencent/bugly/proguard/rc;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/rc;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/rc$1;->HQ:Lcom/tencent/bugly/proguard/rc;

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/bugly/proguard/rc$1;->HP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/tencent/bugly/proguard/qy$a;->jk()Lcom/tencent/bugly/proguard/qy;

    move-result-object v0

    const-string v1, "RMSLALaunchEvent"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qy;->cb(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lcom/tencent/bugly/proguard/qs;

    invoke-direct {v6, v1}, Lcom/tencent/bugly/proguard/qs;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/rc$1;->HQ:Lcom/tencent/bugly/proguard/rc;

    iget-wide v7, v1, Lcom/tencent/bugly/proguard/rc;->HN:J

    iput-wide v7, v6, Lcom/tencent/bugly/proguard/qs;->dw:J

    iget-wide v7, v6, Lcom/tencent/bugly/proguard/qs;->dw:J

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v6, Lcom/tencent/bugly/proguard/qs;->GO:I

    iget v1, p0, Lcom/tencent/bugly/proguard/rc$1;->HP:I

    iput v1, v6, Lcom/tencent/bugly/proguard/qs;->GN:I

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    iget v1, v6, Lcom/tencent/bugly/proguard/qs;->GO:I

    int-to-long v4, v1

    const-wide/16 v7, 0x50

    cmp-long v1, v4, v7

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v6, Lcom/tencent/bugly/proguard/qs;->GN:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput v1, v6, Lcom/tencent/bugly/proguard/qs;->GP:I

    sget-object v1, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/qv$a;->jg()Lcom/tencent/bugly/proguard/qv;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/bugly/proguard/qv;->d(Lcom/tencent/bugly/proguard/qs;)V

    :cond_3
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "RMonitor_sla"

    aput-object v5, v4, v2

    const-string v2, "try to report sla hitSampling: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method
