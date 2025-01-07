.class public final Lcom/google/android/gms/internal/zzelh;
.super Ljava/lang/Object;


# instance fields
.field private final zznlm:Lcom/google/android/gms/internal/zzeng;

.field private final zznln:Z

.field private final zznlo:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeng;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelh;->zznlm:Lcom/google/android/gms/internal/zzeng;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzelh;->zznln:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzelh;->zznlo:Z

    return-void
.end method


# virtual methods
.method public final zzal(Lcom/google/android/gms/internal/zzegu;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzelh;->zznln:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzelh;->zznlo:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzelh;->zzf(Lcom/google/android/gms/internal/zzemq;)Z

    move-result p1

    return p1
.end method

.method public final zzbve()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelh;->zznlm:Lcom/google/android/gms/internal/zzeng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    return-object v0
.end method

.method public final zzcai()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzelh;->zznln:Z

    return v0
.end method

.method public final zzcaj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzelh;->zznlo:Z

    return v0
.end method

.method public final zzcak()Lcom/google/android/gms/internal/zzeng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelh;->zznlm:Lcom/google/android/gms/internal/zzeng;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzemq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzelh;->zznln:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzelh;->zznlo:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzelh;->zznlm:Lcom/google/android/gms/internal/zzeng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzenn;->zzk(Lcom/google/android/gms/internal/zzemq;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
