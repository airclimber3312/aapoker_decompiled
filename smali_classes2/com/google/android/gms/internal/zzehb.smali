.class final Lcom/google/android/gms/internal/zzehb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeip;


# instance fields
.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;

.field private synthetic zznfs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehb;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehb;->zznfs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehb;->zznfs:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehb;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->zzg(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeir;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzeir;->zzi(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehb;->zznfo:Lcom/google/android/gms/internal/zzegx;

    const/16 v0, -0x9

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;I)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehb;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    return-void
.end method
