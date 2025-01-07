.class public final Lcom/tencent/bugly/proguard/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ai;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/al$b;,
        Lcom/tencent/bugly/proguard/al$a;
    }
.end annotation


# instance fields
.field private bc:[Lcom/tencent/bugly/proguard/al$a;

.field public bd:Lcom/tencent/bugly/proguard/al$a;

.field private be:Landroid/os/Looper;

.field private bf:I

.field public bg:J

.field public bh:J

.field public bi:Ljava/lang/String;

.field private bj:J

.field private bk:J

.field private bl:J

.field private bm:J

.field private bn:I

.field private bo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/al$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bg:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bh:J

    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/bugly/proguard/al;->bi:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bj:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bk:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bl:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bm:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/al;->bn:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/al;->bo:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/al;->bp:Ljava/util/ArrayList;

    const/16 v1, 0x64

    new-array v1, v1, [Lcom/tencent/bugly/proguard/al$a;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/al;->bc:[Lcom/tencent/bugly/proguard/al$a;

    new-instance v1, Lcom/tencent/bugly/proguard/al$a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/al$a;-><init>(Lcom/tencent/bugly/proguard/al;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/al;->bd:Lcom/tencent/bugly/proguard/al$a;

    iput v0, p0, Lcom/tencent/bugly/proguard/al;->bf:I

    iput-object p1, p0, Lcom/tencent/bugly/proguard/al;->be:Landroid/os/Looper;

    return-void
.end method

.method private N()I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/al;->bf:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private a(Landroid/os/Message;J)Lcom/tencent/bugly/proguard/al$b;
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/al$b;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/al$b;-><init>(Lcom/tencent/bugly/proguard/al;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/tencent/bugly/proguard/al$b;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/tencent/bugly/proguard/al$b;->arg2:I

    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Lcom/tencent/bugly/proguard/al$b;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    sub-long/2addr v1, p2

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/al$b;->when:J

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object p2

    const-string p3, ""

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Lcom/tencent/bugly/proguard/al$b;->bv:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    iput-object p3, v0, Lcom/tencent/bugly/proguard/al$b;->bw:Ljava/lang/String;

    return-object v0
.end method

.method private a(JJLjava/lang/String;II)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/al;->bo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/bugly/proguard/al;->bp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/al$a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/al$a;-><init>(Lcom/tencent/bugly/proguard/al;)V

    move-object v3, v1

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/tencent/bugly/proguard/al;->a(Lcom/tencent/bugly/proguard/al$a;JJLjava/lang/String;II)V

    iget-object v2, v0, Lcom/tencent/bugly/proguard/al;->bp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/al;->bp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/al$a;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/al;->bc:[Lcom/tencent/bugly/proguard/al$a;

    iget v4, v0, Lcom/tencent/bugly/proguard/al;->bf:I

    aput-object v2, v3, v4

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/al;->N()I

    move-result v2

    iput v2, v0, Lcom/tencent/bugly/proguard/al;->bf:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/tencent/bugly/proguard/al;->bp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/al;->bc:[Lcom/tencent/bugly/proguard/al$a;

    iget v2, v0, Lcom/tencent/bugly/proguard/al;->bf:I

    aget-object v3, v1, v2

    if-nez v3, :cond_3

    new-instance v3, Lcom/tencent/bugly/proguard/al$a;

    invoke-direct {v3, p0}, Lcom/tencent/bugly/proguard/al$a;-><init>(Lcom/tencent/bugly/proguard/al;)V

    aput-object v3, v1, v2

    :cond_3
    iget-object v1, v0, Lcom/tencent/bugly/proguard/al;->bc:[Lcom/tencent/bugly/proguard/al$a;

    iget v2, v0, Lcom/tencent/bugly/proguard/al;->bf:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_4

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/tencent/bugly/proguard/al;->a(Lcom/tencent/bugly/proguard/al$a;JJLjava/lang/String;II)V

    :cond_4
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/al;->N()I

    move-result v1

    iput v1, v0, Lcom/tencent/bugly/proguard/al;->bf:I

    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/al$a;JJLjava/lang/String;II)V
    .locals 1

    if-eqz p0, :cond_1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/al$a;->bq:J

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/al$a;->br:J

    const-wide/16 p3, 0x1e

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p5, ""

    :goto_0
    iput-object p5, p0, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    iput p6, p0, Lcom/tencent/bugly/proguard/al$a;->type:I

    iput p7, p0, Lcom/tencent/bugly/proguard/al$a;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/al$a;->bt:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final L()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/al$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/bugly/proguard/al;->bo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/tencent/bugly/proguard/al;->bf:I

    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/tencent/bugly/proguard/al;->bc:[Lcom/tencent/bugly/proguard/al$a;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/al$a;->O()Lcom/tencent/bugly/proguard/al$a;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/tencent/bugly/proguard/al;->bf:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/al;->bc:[Lcom/tencent/bugly/proguard/al$a;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/al$a;->O()Lcom/tencent/bugly/proguard/al$a;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tencent/bugly/proguard/al;->bo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-object v0
.end method

.method public final M()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/al$b;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "android.os.MessageQueue"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mMessages"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v5, "android.os.Looper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getQueue"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/al;->be:Landroid/os/Looper;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/MessageQueue;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v0, v1}, Lcom/tencent/bugly/proguard/al;->a(Landroid/os/Message;J)Lcom/tencent/bugly/proguard/al$b;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_0
    const-string v5, "android.os.Message"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "next"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Landroid/os/Message;

    if-eqz v3, :cond_1

    const/16 v4, 0x32

    if-ge v7, v4, :cond_1

    invoke-direct {p0, v3, v0, v1}, Lcom/tencent/bugly/proguard/al;->a(Landroid/os/Message;J)Lcom/tencent/bugly/proguard/al$b;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 12

    iput-wide p2, p0, Lcom/tencent/bugly/proguard/al;->bg:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/tencent/bugly/proguard/al;->bh:J

    iput-object p1, p0, Lcom/tencent/bugly/proguard/al;->bi:Ljava/lang/String;

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bj:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/al;->bg:J

    sub-long v5, v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, v5, v0

    if-lez p1, :cond_0

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/al;->bk:J

    sub-long v7, p2, v0

    const-string v9, ""

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/tencent/bugly/proguard/al;->a(JJLjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 16

    move-object/from16 v8, p0

    iget-wide v0, v8, Lcom/tencent/bugly/proguard/al;->bg:J

    const-wide/16 v9, 0x0

    cmp-long v2, v0, v9

    if-gtz v2, :cond_0

    return-void

    :cond_0
    move-wide/from16 v0, p2

    iput-wide v0, v8, Lcom/tencent/bugly/proguard/al;->bj:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/tencent/bugly/proguard/al;->bk:J

    iget-wide v2, v8, Lcom/tencent/bugly/proguard/al;->bj:J

    iget-wide v4, v8, Lcom/tencent/bugly/proguard/al;->bg:J

    sub-long v11, v2, v4

    iget-wide v2, v8, Lcom/tencent/bugly/proguard/al;->bh:J

    sub-long v13, v0, v2

    const/4 v15, 0x0

    const-wide/16 v0, 0xc8

    cmp-long v2, v11, v0

    if-lez v2, :cond_2

    iget v7, v8, Lcom/tencent/bugly/proguard/al;->bn:I

    if-lez v7, :cond_1

    iget-wide v1, v8, Lcom/tencent/bugly/proguard/al;->bl:J

    iget-wide v3, v8, Lcom/tencent/bugly/proguard/al;->bm:J

    const-string v5, ""

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/al;->a(JJLjava/lang/String;II)V

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/al;->a(JJLjava/lang/String;II)V

    iput v15, v8, Lcom/tencent/bugly/proguard/al;->bn:I

    iput-wide v9, v8, Lcom/tencent/bugly/proguard/al;->bl:J

    iput-wide v9, v8, Lcom/tencent/bugly/proguard/al;->bm:J

    return-void

    :cond_2
    iget-wide v2, v8, Lcom/tencent/bugly/proguard/al;->bl:J

    add-long/2addr v2, v11

    iput-wide v2, v8, Lcom/tencent/bugly/proguard/al;->bl:J

    iget-wide v4, v8, Lcom/tencent/bugly/proguard/al;->bm:J

    add-long/2addr v4, v13

    iput-wide v4, v8, Lcom/tencent/bugly/proguard/al;->bm:J

    iget v6, v8, Lcom/tencent/bugly/proguard/al;->bn:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v8, Lcom/tencent/bugly/proguard/al;->bn:I

    cmp-long v6, v2, v0

    if-lez v6, :cond_3

    const-string v6, ""

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, v6

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/al;->a(JJLjava/lang/String;II)V

    iput v15, v8, Lcom/tencent/bugly/proguard/al;->bn:I

    iput-wide v9, v8, Lcom/tencent/bugly/proguard/al;->bl:J

    iput-wide v9, v8, Lcom/tencent/bugly/proguard/al;->bm:J

    :cond_3
    return-void
.end method
