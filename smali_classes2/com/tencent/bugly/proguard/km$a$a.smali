.class final Lcom/tencent/bugly/proguard/km$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/km$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic yJ:Lcom/tencent/bugly/proguard/km$a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/km$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/km$a;->go()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/bugly/proguard/cf;->ez:Lcom/tencent/bugly/proguard/cf$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/cf$a;->be()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tencent/bugly/proguard/km$a;->yI:Z

    :cond_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/km$a;->yG:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/km$a;->yB:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/km$a;->yB:Ljava/lang/StringBuffer;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-wide v7, v2, Lcom/tencent/bugly/proguard/km$a;->yE:J

    sub-long v7, v5, v7

    const-wide/32 v9, 0x1b7740

    cmp-long v2, v7, v9

    if-lez v2, :cond_5

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "MM.dd.HH"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "RMonitor_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/tencent/bugly/proguard/km$a;->yH:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/km$a;->yH:Ljava/io/File;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_6
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    check-cast v7, Ljava/io/Writer;

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v1, v2

    check-cast v1, Ljava/io/BufferedWriter;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/km$a;->yB:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_7
    const-string v2, "RMonitor_common_Logger"

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/km;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iput-wide v5, v1, Lcom/tencent/bugly/proguard/km$a;->yE:J

    :cond_8
    iget-object v1, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/km$a;->yB:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/km$a;->yB:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/km$a$a;->yJ:Lcom/tencent/bugly/proguard/km$a;

    iput-boolean v4, v1, Lcom/tencent/bugly/proguard/km$a;->yI:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1
.end method
