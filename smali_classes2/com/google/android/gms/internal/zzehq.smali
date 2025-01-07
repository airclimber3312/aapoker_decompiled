.class final Lcom/google/android/gms/internal/zzehq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzngc:Lcom/google/android/gms/internal/zzelu;

.field private synthetic zzngd:Lcom/google/android/gms/internal/zzejg;

.field private synthetic zznge:Lcom/google/android/gms/internal/zzehp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzehp;Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehq;->zznge:Lcom/google/android/gms/internal/zzehp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehq;->zzngc:Lcom/google/android/gms/internal/zzelu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehq;->zzngd:Lcom/google/android/gms/internal/zzejg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehq;->zznge:Lcom/google/android/gms/internal/zzehp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehp;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegx;->zzd(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehq;->zzngc:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeik;->zzp(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehq;->zznge:Lcom/google/android/gms/internal/zzehp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzehp;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->zze(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehq;->zzngc:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzeir;->zzi(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehq;->zznge:Lcom/google/android/gms/internal/zzehp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzehp;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehq;->zzngd:Lcom/google/android/gms/internal/zzejg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzejg;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    :cond_0
    return-void
.end method
