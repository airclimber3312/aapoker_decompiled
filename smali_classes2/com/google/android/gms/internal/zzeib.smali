.class public final Lcom/google/android/gms/internal/zzeib;
.super Ljava/lang/Object;


# static fields
.field private static final zznhe:Lcom/google/android/gms/internal/zzeib;


# instance fields
.field private final zznhf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzegm;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzegx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeib;->zznhe:Lcom/google/android/gms/internal/zzeib;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeib;->zznhf:Ljava/util/Map;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzeia;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/zzegx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzeib;->zznhe:Lcom/google/android/gms/internal/zzeib;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzeib;->zzb(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzeia;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/zzegx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeib;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeib;->zznhf:Ljava/util/Map;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzeia;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/zzegx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegm;->zzbxu()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzeia;->host:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzeia;->zzkal:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "https://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeib;->zznhf:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeib;->zznhf:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeib;->zznhf:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeib;->zznhf:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/zzegx;

    invoke-direct {v3, p2, p1, p3}, Lcom/google/android/gms/internal/zzegx;-><init>(Lcom/google/android/gms/internal/zzeia;Lcom/google/android/gms/internal/zzegm;Lcom/google/firebase/database/FirebaseDatabase;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "createLocalRepo() called for existing repo."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzegm;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzeib;->zznhe:Lcom/google/android/gms/internal/zzeib;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzeie;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/zzeie;-><init>(Lcom/google/android/gms/internal/zzeib;Lcom/google/android/gms/internal/zzegm;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzeig;->zzp(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/zzegm;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzeib;->zznhe:Lcom/google/android/gms/internal/zzeib;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzeif;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/zzeif;-><init>(Lcom/google/android/gms/internal/zzeib;Lcom/google/android/gms/internal/zzegm;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzeig;->zzp(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static zzk(Lcom/google/android/gms/internal/zzegx;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeic;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeic;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/internal/zzegx;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeid;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeid;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method
