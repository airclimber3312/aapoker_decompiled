.class public final Lcom/google/android/gms/fitness/request/zzd;
.super Ljava/lang/Object;


# static fields
.field private static final zzhnr:Lcom/google/android/gms/fitness/request/zzd;


# instance fields
.field private final zzhns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/zzck<",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            ">;",
            "Lcom/google/android/gms/fitness/request/zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzd;->zzhnr:Lcom/google/android/gms/fitness/request/zzd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzhns:Ljava/util/Map;

    return-void
.end method

.method public static zzasf()Lcom/google/android/gms/fitness/request/zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fitness/request/zzd;->zzhnr:Lcom/google/android/gms/fitness/request/zzd;

    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/common/api/internal/zzci;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            ")",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/fitness/request/BleScanCallback;

    const-string v1, "BleScanCallback"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zzcm;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/internal/zzci;)Lcom/google/android/gms/fitness/request/zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            ">;)",
            "Lcom/google/android/gms/fitness/request/zza;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzhns:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzd;->zzhns:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/request/zza;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/fitness/request/zza;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/fitness/request/zza;-><init>(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/fitness/request/zzb;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzd;->zzhns:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/zzd;->zzc(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzd;->zza(Lcom/google/android/gms/common/api/internal/zzci;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/zzci;)Lcom/google/android/gms/fitness/request/zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            ">;)",
            "Lcom/google/android/gms/fitness/request/zza;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzd;->zzhns:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzd;->zzhns:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/request/zza;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/zza;->release()V

    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/zzd;->zzc(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzd;->zzb(Lcom/google/android/gms/common/api/internal/zzci;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object p1

    return-object p1
.end method
