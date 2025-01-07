.class public final Lcom/google/android/gms/internal/zzdbo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdbo$zza;,
        Lcom/google/android/gms/internal/zzdbo$zzb;,
        Lcom/google/android/gms/internal/zzdbo$zzc;
    }
.end annotation


# static fields
.field private static final zzkyk:Ljava/util/regex/Pattern;

.field private static volatile zzkyl:Lcom/google/android/gms/internal/zzdbo;

.field private static zzkyu:Lcom/google/android/gms/internal/zzdbo$zzc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile zzarf:Z

.field private zzknc:Ljava/lang/String;

.field private final zzkvr:Ljava/util/concurrent/ExecutorService;

.field private final zzkvs:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzkwc:Lcom/google/android/gms/tagmanager/zzce;

.field private final zzkym:Lcom/google/android/gms/internal/zzdcj;

.field private final zzkyn:Lcom/google/android/gms/internal/zzdat;

.field private final zzkyo:Lcom/google/android/gms/internal/zzdbo$zza;

.field private final zzkyp:Ljava/lang/Object;

.field private zzkyq:Ljava/lang/String;

.field private zzkyr:I

.field private final zzkys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzkyt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(gtm-[a-z0-9]{1,10})\\.json"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdbo;->zzkyk:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/zzdbp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdbp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdbo;->zzkyu:Lcom/google/android/gms/internal/zzdbo$zzc;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzdcj;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzdat;Lcom/google/android/gms/internal/zzdbo$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyp:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyr:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkys:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyt:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkwc:Lcom/google/android/gms/tagmanager/zzce;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdbo;->zzkym:Lcom/google/android/gms/internal/zzdcj;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvr:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvs:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyn:Lcom/google/android/gms/internal/zzdat;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyo:Lcom/google/android/gms/internal/zzdbo$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdbo;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyr:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdbo;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyr:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdbo;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdbo;->zzg([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzdbo;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdbo;->zzkyl:Lcom/google/android/gms/internal/zzdbo;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzdbo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdbo;->zzkyl:Lcom/google/android/gms/internal/zzdbo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzdbo;->zzkyu:Lcom/google/android/gms/internal/zzdbo$zzc;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzdbo$zzc;->zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzdbo;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzdbo;->zzkyl:Lcom/google/android/gms/internal/zzdbo;

    move-object v0, p0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdbo;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/internal/zzdcj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkym:Lcom/google/android/gms/internal/zzdcj;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/tagmanager/zzcn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdbo;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkys:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvr:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private final zzg([Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p1, "containers"

    const-string v0, "Looking up container asset."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzknc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyq:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyo:Lcom/google/android/gms/internal/zzdbo$zza;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzdbo$zza;->zzmv(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    const-string v7, "Asset found for container "

    const-string v8, "Extra container asset found, will not be loaded: "

    if-ge v4, v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/zzdbo;->zzkyk:Ljava/util/regex/Pattern;

    aget-object v9, v3, v4

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v5, :cond_2

    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/zzdbo;->zzknc:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aget-object v6, v3, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdbo;->zzknc:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v8, v3, v4

    aput-object v8, v7, v1

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    const-string v6, "Ignoring container asset %s (does not match %s)"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v6}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v5, :cond_a

    const-string p1, "No container asset found in /assets/containers. Checking top level /assets directory for container assets."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyo:Lcom/google/android/gms/internal/zzdbo$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdbo$zza;->zzbjg()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    array-length v0, p1

    if-ge v1, v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/zzdbo;->zzkyk:Ljava/util/regex/Pattern;

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v5, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzknc:Ljava/lang/String;

    aget-object v3, p1, v1

    iput-object v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyq:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    const-string v0, "Loading container assets from top level /assets directory. Please move the container asset to /assets/containers"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_7

    :cond_7
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    :cond_9
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v1, "Failed to enumerate assets."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzdal;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdbo;->zzknc:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyq:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Failed to enumerate assets in folder %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzdal;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzdbo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyp:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/internal/zzdat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyn:Lcom/google/android/gms/internal/zzdat;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzdbo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    return p0
.end method


# virtual methods
.method public final initialize()V
    .locals 10

    const-string v0, "Initializing Tag Manager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    if-eqz v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    const-class v5, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzdbo;->zza(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzdbo;->zzg([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    const-string v7, "Loading container "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_0
    invoke-static {v7}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvr:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/google/android/gms/internal/zzdbu;

    invoke-direct {v8, p0, v6, v5, v4}, Lcom/google/android/gms/internal/zzdbu;-><init>(Lcom/google/android/gms/internal/zzdbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/zzdbv;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzdbv;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1388

    invoke-interface {v4, v5, v7, v8, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyt:Z

    if-nez v4, :cond_4

    const-string v4, "Installing Tag Manager event handler."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyt:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v5, Lcom/google/android/gms/internal/zzdbq;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzdbq;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzck;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_5
    const-string v5, "Error communicating with measurement proxy: "

    iget-object v6, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v6}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v5, Lcom/google/android/gms/internal/zzdbs;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzdbs;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzch;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_7
    const-string v5, "Error communicating with measurement proxy: "

    iget-object v6, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v6}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/zzdbx;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzdbx;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string v4, "Tag Manager event handler installed."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v4, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_3
    :try_start_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Tag Manager initilization took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_9
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method

.method public final zzf([Ljava/lang/String;)V
    .locals 9

    const-string p1, "Initializing Tag Manager."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyp:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    if-eqz v2, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzdbo;->zza(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzdbo;->zzg([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const-string v6, "Loading container "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvr:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/google/android/gms/internal/zzdbu;

    invoke-direct {v7, p0, v5, v4, v3}, Lcom/google/android/gms/internal/zzdbu;-><init>(Lcom/google/android/gms/internal/zzdbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/zzdbv;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzdbv;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1388

    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyt:Z

    if-nez v3, :cond_4

    const-string v3, "Installing Tag Manager event handler."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzdbo;->zzkyt:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v4, Lcom/google/android/gms/internal/zzdbq;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzdbq;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzck;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    const-string v4, "Error communicating with measurement proxy: "

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v5}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v4, Lcom/google/android/gms/internal/zzdbs;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzdbs;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzch;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_7
    const-string v4, "Error communicating with measurement proxy: "

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v5}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbo;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzdbx;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzdbx;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string v3, "Tag Manager event handler installed."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v3, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_3
    :try_start_8
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x35

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Tag Manager initilization took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_9
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzdbo;->zzarf:Z

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method

.method final zzr(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbo;->zzkvr:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzdbz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdbz;-><init>(Lcom/google/android/gms/internal/zzdbo;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
