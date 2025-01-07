.class public final Lcom/google/android/gms/internal/zzelx;
.super Ljava/lang/Object;


# instance fields
.field private final zznna:Lcom/google/android/gms/internal/zzelh;

.field private final zznnb:Lcom/google/android/gms/internal/zzelh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzelh;Lcom/google/android/gms/internal/zzelh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelx;->zznna:Lcom/google/android/gms/internal/zzelh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelx;->zznnb:Lcom/google/android/gms/internal/zzelh;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzeng;ZZ)Lcom/google/android/gms/internal/zzelx;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzelx;

    new-instance v1, Lcom/google/android/gms/internal/zzelh;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzelx;->zznnb:Lcom/google/android/gms/internal/zzelh;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzelx;-><init>(Lcom/google/android/gms/internal/zzelh;Lcom/google/android/gms/internal/zzelh;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzeng;ZZ)Lcom/google/android/gms/internal/zzelx;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzelx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelx;->zznna:Lcom/google/android/gms/internal/zzelh;

    new-instance v2, Lcom/google/android/gms/internal/zzelh;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzelx;-><init>(Lcom/google/android/gms/internal/zzelh;Lcom/google/android/gms/internal/zzelh;)V

    return-object v0
.end method

.method public final zzcbl()Lcom/google/android/gms/internal/zzelh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelx;->zznna:Lcom/google/android/gms/internal/zzelh;

    return-object v0
.end method

.method public final zzcbm()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelx;->zznna:Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzcai()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelx;->zznna:Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzcbn()Lcom/google/android/gms/internal/zzelh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelx;->zznnb:Lcom/google/android/gms/internal/zzelh;

    return-object v0
.end method

.method public final zzcbo()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelx;->zznnb:Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzcai()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelx;->zznnb:Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
