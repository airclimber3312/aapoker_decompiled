.class final Lcom/google/android/gms/internal/zzemc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzemh;


# instance fields
.field private final zznmv:Lcom/google/android/gms/internal/zzelx;

.field private final zznnf:Lcom/google/android/gms/internal/zzejt;

.field private final zznng:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzelx;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzemc;->zznnf:Lcom/google/android/gms/internal/zzejt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzemc;->zznmv:Lcom/google/android/gms/internal/zzelx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzemc;->zznng:Lcom/google/android/gms/internal/zzenn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzenf;Lcom/google/android/gms/internal/zzenm;Z)Lcom/google/android/gms/internal/zzenm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemc;->zznng:Lcom/google/android/gms/internal/zzenn;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemc;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelx;->zzcbo()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzemc;->zznnf:Lcom/google/android/gms/internal/zzejt;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/google/android/gms/internal/zzejt;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenm;ZLcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzenm;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemc;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelx;->zzcbl()Lcom/google/android/gms/internal/zzelh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzelh;->zzf(Lcom/google/android/gms/internal/zzemq;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemc;->zznng:Lcom/google/android/gms/internal/zzenn;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzelh;

    invoke-static {}, Lcom/google/android/gms/internal/zzenh;->zzccu()Lcom/google/android/gms/internal/zzenh;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzeng;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemc;->zznmv:Lcom/google/android/gms/internal/zzelx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelx;->zzcbn()Lcom/google/android/gms/internal/zzelh;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemc;->zznnf:Lcom/google/android/gms/internal/zzejt;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzejt;->zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelh;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method
