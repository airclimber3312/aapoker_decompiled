.class final Lcom/google/android/gms/internal/zzeii;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeip;


# instance fields
.field private synthetic zznhi:Lcom/google/android/gms/internal/zzeil;

.field private synthetic zznhj:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeil;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeii;->zznhi:Lcom/google/android/gms/internal/zzeil;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeii;->zznhj:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeii;->zznhi:Lcom/google/android/gms/internal/zzeil;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeii;->zznhj:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/util/Map;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzeil;->zzh(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    return-void
.end method
