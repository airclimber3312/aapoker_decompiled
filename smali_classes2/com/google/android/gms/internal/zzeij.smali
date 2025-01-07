.class final Lcom/google/android/gms/internal/zzeij;
.super Lcom/google/android/gms/internal/zzemv;


# instance fields
.field private synthetic zznhj:Ljava/util/Map;

.field private synthetic zznhk:Lcom/google/android/gms/internal/zzeik;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzeik;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeij;->zznhj:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeij;->zznhk:Lcom/google/android/gms/internal/zzeik;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzemv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeij;->zznhj:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/util/Map;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeij;->zznhk:Lcom/google/android/gms/internal/zzeik;

    new-instance v1, Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/zzeik;->zzg(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    :cond_0
    return-void
.end method
