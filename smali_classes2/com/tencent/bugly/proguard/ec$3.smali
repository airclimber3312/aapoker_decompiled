.class public final Lcom/tencent/bugly/proguard/ec$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic mn:Lcom/tencent/bugly/proguard/ec;

.field final synthetic mo:Z

.field final synthetic mp:Ljava/lang/Thread;

.field final synthetic mq:Ljava/lang/Throwable;

.field final synthetic mr:Ljava/lang/String;

.field final synthetic ms:[B

.field final synthetic mt:Z

.field final synthetic mu:Z


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/ec;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ec$3;->mn:Lcom/tencent/bugly/proguard/ec;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ec$3;->mo:Z

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ec$3;->mp:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ec$3;->mq:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/ec$3;->mr:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/bugly/proguard/ec$3;->ms:[B

    iput-boolean p6, p0, Lcom/tencent/bugly/proguard/ec$3;->mt:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ec$3;->mu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "post a throwable %b"

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/ec$3;->mo:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ec$3;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ec;->a(Lcom/tencent/bugly/proguard/ec;)Lcom/tencent/bugly/proguard/ei;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ec$3;->mp:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ec$3;->mq:Ljava/lang/Throwable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/proguard/ec$3;->mr:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/ec$3;->ms:[B

    iget-boolean v9, p0, Lcom/tencent/bugly/proguard/ec$3;->mt:Z

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/bugly/proguard/ei;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/ec$3;->mu:Z

    if-eqz v2, :cond_0

    const-string v2, "clear user datas"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ec$3;->mn:Lcom/tencent/bugly/proguard/ec;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ec;->b(Lcom/tencent/bugly/proguard/ec;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/dh;->bX()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ec$3;->mq:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "java catch error: %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
