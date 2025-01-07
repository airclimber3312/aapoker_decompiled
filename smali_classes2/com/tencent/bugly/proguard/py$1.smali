.class final Lcom/tencent/bugly/proguard/py$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/py;-><init>(B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fo:Lcom/tencent/bugly/proguard/py;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/py;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/py$1;->Fo:Lcom/tencent/bugly/proguard/py;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/py$1;->Fo:Lcom/tencent/bugly/proguard/py;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    iget-wide v9, v0, Lcom/tencent/bugly/proguard/py;->Fj:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    iget-object v9, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-wide v10, v9, Lcom/tencent/bugly/proguard/ie;->vx:J

    add-long/2addr v10, v7

    iput-wide v10, v9, Lcom/tencent/bugly/proguard/ie;->vx:J

    :cond_1
    iget-object v9, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-wide v10, v9, Lcom/tencent/bugly/proguard/ie;->vt:J

    add-long/2addr v10, v7

    iput-wide v10, v9, Lcom/tencent/bugly/proguard/ie;->vt:J

    if-eqz p1, :cond_4

    const-wide/32 v9, 0xfe502b

    cmp-long p1, v3, v9

    if-lez p1, :cond_2

    sub-long v11, v3, v9

    div-long/2addr v11, v5

    div-long/2addr v3, v9

    long-to-int p1, v3

    iget-object v3, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/ie;->vv:[J

    array-length v3, v3

    if-lt p1, v3, :cond_3

    iget-object p1, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ie;->vv:[J

    array-length p1, p1

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_2
    const-wide/16 v11, 0x0

    const/4 p1, 0x0

    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-wide v3, v2, Lcom/tencent/bugly/proguard/ie;->vw:J

    add-long/2addr v3, v11

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/ie;->vw:J

    iget-object v2, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ie;->vv:[J

    aget-wide v3, v2, p1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v2, p1

    iget-object v0, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ie;->vu:[J

    aget-wide v2, v0, p1

    add-long/2addr v2, v7

    aput-wide v2, v0, p1

    :cond_4
    return v1
.end method
