.class final Lcom/google/android/gms/internal/zzdaa;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/google/android/gms/internal/zzczz;


# static fields
.field private static zzkwr:Lcom/google/android/gms/internal/zzdaa;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final zzata:Lcom/google/android/gms/common/util/zze;

.field private volatile zzcnf:Z

.field private final zzkpx:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzkws:Lcom/google/android/gms/internal/zzdac;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdaa;->zzkpx:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdaa;->zzcnf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdaa;->mClosed:Z

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzanq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdaa;->zzata:Lcom/google/android/gms/common/util/zze;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdaa;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdaa;->start()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdaa;)Lcom/google/android/gms/internal/zzdac;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdaa;->zzkws:Lcom/google/android/gms/internal/zzdac;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdaa;Lcom/google/android/gms/internal/zzdac;)Lcom/google/android/gms/internal/zzdac;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdaa;->zzkws:Lcom/google/android/gms/internal/zzdac;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdaa;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdaa;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static zzer(Landroid/content/Context;)Lcom/google/android/gms/internal/zzdaa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdaa;->zzkwr:Lcom/google/android/gms/internal/zzdaa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdaa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdaa;->zzkwr:Lcom/google/android/gms/internal/zzdaa;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzdaa;->zzkwr:Lcom/google/android/gms/internal/zzdaa;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 3

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdaa;->zzkpx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdaa;->zzcnf:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdyq;->zza(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Error on Google TagManager Thread: "

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    const-string v0, "Google TagManager is shutting down."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdaa;->zzcnf:Z

    goto :goto_0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    iget-object v0, v10, Lcom/google/android/gms/internal/zzdaa;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    new-instance v11, Lcom/google/android/gms/internal/zzdab;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzdab;-><init>(Lcom/google/android/gms/internal/zzdaa;Lcom/google/android/gms/internal/zzczz;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/zzdaa;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzm(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdaa;->zzkpx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
