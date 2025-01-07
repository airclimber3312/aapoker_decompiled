.class public Lcom/hyphenate/a/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "net"

.field protected static b:Lcom/hyphenate/a/a; = null

.field static c:J = 0x0L

.field static d:J = 0x0L

.field static e:J = 0x0L

.field static f:J = 0x0L

.field static g:J = 0x0L

.field static h:J = 0x0L

.field static i:J = 0x0L

.field static j:J = 0x0L

.field static k:J = 0x0L

.field static l:J = 0x0L

.field static m:J = 0x0L

.field static n:J = 0x0L

.field static o:J = 0x0L

.field static p:J = 0x0L

.field static q:J = 0x0L

.field static r:J = 0x0L

.field static s:I = 0x0

.field static t:J = 0x0L

.field static u:J = 0x0L

.field static v:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/hyphenate/a/a;->s:I

    invoke-static {}, Lcom/hyphenate/a/a;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hyphenate/a/a;->v:Z

    return-void
.end method

.method public static b()V
    .locals 2

    sget v0, Lcom/hyphenate/a/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    sput-wide v0, Lcom/hyphenate/a/a;->c:J

    sget v0, Lcom/hyphenate/a/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    sput-wide v0, Lcom/hyphenate/a/a;->d:J

    sget v0, Lcom/hyphenate/a/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v0

    sput-wide v0, Lcom/hyphenate/a/a;->e:J

    sget v0, Lcom/hyphenate/a/a;->s:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v0

    sput-wide v0, Lcom/hyphenate/a/a;->f:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/hyphenate/a/a;->k:J

    sput-wide v0, Lcom/hyphenate/a/a;->l:J

    sput-wide v0, Lcom/hyphenate/a/a;->m:J

    sput-wide v0, Lcom/hyphenate/a/a;->n:J

    sput-wide v0, Lcom/hyphenate/a/a;->o:J

    sput-wide v0, Lcom/hyphenate/a/a;->p:J

    sput-wide v0, Lcom/hyphenate/a/a;->q:J

    sput-wide v0, Lcom/hyphenate/a/a;->r:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hyphenate/a/a;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hyphenate/a/a;->t:J

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hyphenate/a/a;->v:Z

    invoke-static {}, Lcom/hyphenate/a/a;->b()V

    return-void
.end method

.method public static d()V
    .locals 16

    sget-boolean v0, Lcom/hyphenate/a/a;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/hyphenate/a/a;->t:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_1

    const-wide/16 v1, 0x1

    :cond_1
    sget v7, Lcom/hyphenate/a/a;->s:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v7

    sput-wide v7, Lcom/hyphenate/a/a;->o:J

    sget v7, Lcom/hyphenate/a/a;->s:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    sput-wide v7, Lcom/hyphenate/a/a;->p:J

    sget-wide v9, Lcom/hyphenate/a/a;->o:J

    sget-wide v11, Lcom/hyphenate/a/a;->c:J

    sub-long/2addr v9, v11

    sput-wide v9, Lcom/hyphenate/a/a;->k:J

    sget-wide v11, Lcom/hyphenate/a/a;->d:J

    sub-long/2addr v7, v11

    sput-wide v7, Lcom/hyphenate/a/a;->l:J

    sget-wide v11, Lcom/hyphenate/a/a;->g:J

    add-long/2addr v11, v9

    sput-wide v11, Lcom/hyphenate/a/a;->g:J

    sget-wide v9, Lcom/hyphenate/a/a;->h:J

    add-long/2addr v9, v7

    sput-wide v9, Lcom/hyphenate/a/a;->h:J

    sget v7, Lcom/hyphenate/a/a;->s:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v7

    sput-wide v7, Lcom/hyphenate/a/a;->q:J

    sget v7, Lcom/hyphenate/a/a;->s:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v7

    sput-wide v7, Lcom/hyphenate/a/a;->r:J

    sget-wide v9, Lcom/hyphenate/a/a;->q:J

    sget-wide v11, Lcom/hyphenate/a/a;->e:J

    sub-long/2addr v9, v11

    sput-wide v9, Lcom/hyphenate/a/a;->m:J

    sget-wide v11, Lcom/hyphenate/a/a;->f:J

    sub-long/2addr v7, v11

    sput-wide v7, Lcom/hyphenate/a/a;->n:J

    sget-wide v11, Lcom/hyphenate/a/a;->i:J

    add-long/2addr v11, v9

    sput-wide v11, Lcom/hyphenate/a/a;->i:J

    sget-wide v9, Lcom/hyphenate/a/a;->j:J

    add-long/2addr v9, v7

    sput-wide v9, Lcom/hyphenate/a/a;->j:J

    sget-wide v7, Lcom/hyphenate/a/a;->k:J

    const-string v9, "net"

    cmp-long v10, v7, v5

    if-nez v10, :cond_3

    sget-wide v7, Lcom/hyphenate/a/a;->l:J

    cmp-long v10, v7, v5

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "no network traffice"

    invoke-static {v9, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v10, Lcom/hyphenate/a/a;->l:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes send; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/hyphenate/a/a;->k:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " bytes received in "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " sec"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v11, Lcom/hyphenate/a/a;->n:J

    const-string v7, " packets received in "

    const-string v13, " packets send; "

    cmp-long v14, v11, v5

    if-lez v14, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v14, Lcom/hyphenate/a/a;->n:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/hyphenate/a/a;->m:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v10, Lcom/hyphenate/a/a;->h:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/hyphenate/a/a;->g:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes received"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v10, Lcom/hyphenate/a/a;->j:J

    cmp-long v1, v10, v5

    if-lez v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v10, Lcom/hyphenate/a/a;->u:J

    sub-long/2addr v5, v10

    div-long/2addr v5, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/hyphenate/a/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/hyphenate/a/a;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-wide v1, Lcom/hyphenate/a/a;->o:J

    sput-wide v1, Lcom/hyphenate/a/a;->c:J

    sget-wide v1, Lcom/hyphenate/a/a;->p:J

    sput-wide v1, Lcom/hyphenate/a/a;->d:J

    sget-wide v1, Lcom/hyphenate/a/a;->q:J

    sput-wide v1, Lcom/hyphenate/a/a;->e:J

    sget-wide v1, Lcom/hyphenate/a/a;->r:J

    sput-wide v1, Lcom/hyphenate/a/a;->f:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/hyphenate/a/a;->t:J

    :goto_1
    return-void
.end method
