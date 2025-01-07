.class public final Lcom/tencent/bugly/proguard/mu;
.super Lcom/tencent/bugly/proguard/ms;


# static fields
.field private static final Aq:Ljava/util/regex/Pattern;

.field private static Ar:I

.field private static At:Ljava/lang/String;


# instance fields
.field private final As:Lcom/tencent/rmonitor/fd/cluser/FdCluster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/mu;->Aq:Ljava/util/regex/Pattern;

    const/4 v0, -0x1

    sput v0, Lcom/tencent/bugly/proguard/mu;->Ar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ms;-><init>()V

    new-instance v0, Lcom/tencent/rmonitor/fd/cluser/FdCluster;

    invoke-direct {v0}, Lcom/tencent/rmonitor/fd/cluser/FdCluster;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/mu;->As:Lcom/tencent/rmonitor/fd/cluser/FdCluster;

    return-void
.end method

.method public static G(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "others"

    return-object p0

    :pswitch_0
    const-string p0, "system_file"

    return-object p0

    :pswitch_1
    const-string p0, "device"

    return-object p0

    :pswitch_2
    const-string p0, "gpu"

    return-object p0

    :pswitch_3
    const-string p0, "pipe"

    return-object p0

    :pswitch_4
    const-string p0, "file"

    return-object p0

    :pswitch_5
    const-string p0, "dmabuf"

    return-object p0

    :pswitch_6
    const-string p0, "ashmem"

    return-object p0

    :pswitch_7
    const-string p0, "eventfd"

    return-object p0

    :pswitch_8
    const-string p0, "socket"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;FLjava/io/BufferedWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/proguard/mh;",
            ">;F",
            "Ljava/io/BufferedWriter;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/mh;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v1, Lcom/tencent/bugly/proguard/mh;->type:I

    invoke-static {v3}, Lcom/tencent/bugly/proguard/mu;->G(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v1, Lcom/tencent/bugly/proguard/mh;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, v1, Lcom/tencent/bugly/proguard/mh;->count:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x461c4000    # 10000.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v3, v7

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "%s,%d,%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/mh;->gY()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/ml;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/tencent/bugly/proguard/ml;->Ae:Ljava/lang/String;

    aput-object v7, v3, v4

    iget v2, v2, Lcom/tencent/bugly/proguard/ml;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "%s,%d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private static bl(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/mu;->Aq:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v0, "parseMaxOpenFiles failed: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RMotnior_FdLeak_ProcFdDump"

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static bm(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aP()Z

    move-result v0

    const-string v1, "RMotnior_FdLeak_ProcFdDump"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v2, Lcom/tencent/bugly/proguard/mu;->At:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/bugly/proguard/mu;->At:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Os.readlink("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") failed: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "sh -c readlink -f "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v0}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_1
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v2

    goto :goto_3

    :catch_2
    move-exception v5

    move-object v4, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    goto :goto_3

    :catch_3
    move-exception v5

    move-object v3, v2

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    goto :goto_4

    :catch_4
    move-exception v5

    move-object v0, v2

    move-object v3, v0

    :goto_0
    move-object v4, v3

    :goto_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v0}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v2

    :catchall_3
    move-exception p0

    :goto_3
    move-object v2, v0

    :goto_4
    invoke-static {v2}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static hf()I
    .locals 6

    sget v0, Lcom/tencent/bugly/proguard/mu;->Ar:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/self/limits"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "Max open files"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/mu;->bl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/bugly/proguard/mu;->Ar:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v3, "RMotnior_FdLeak_ProcFdDump"

    const-string v4, "get fd max count failed"

    invoke-static {v3, v4, v0}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    sget v0, Lcom/tencent/bugly/proguard/mu;->Ar:I

    return v0

    :catchall_2
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static hg()I
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method


# virtual methods
.method protected final bk(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mn;
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "RMotnior_FdLeak_ProcFdDump"

    if-nez v0, :cond_0

    const-string v0, "dumpFdList failed"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/nb;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/bugly/proguard/mu;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lcom/tencent/rmonitor/fd/cluser/FdCluster;->A(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v0, v5}, Lcom/tencent/bugly/proguard/mu;->a(Ljava/util/Map;FLjava/io/BufferedWriter;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/mu;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v5, v3

    :goto_2
    move-object v3, v4

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v5, v3

    :goto_3
    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v5, v3

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v5, v3

    :goto_4
    :try_start_3
    const-string v0, "dump failed"

    invoke-static {v1, v0, p1}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/tencent/bugly/proguard/mu;->g(ILjava/lang/String;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_3
    move-exception p1

    :goto_5
    invoke-static {v3}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/tencent/bugly/proguard/na;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_4
    :goto_6
    const/16 p1, 0xb

    sget-object v0, Lcom/tencent/bugly/proguard/mu;->At:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/proguard/mu;->g(ILjava/lang/String;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
