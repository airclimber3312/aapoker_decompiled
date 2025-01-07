.class final Lcom/google/android/gms/internal/zzejh;
.super Lcom/google/android/gms/internal/zzegr;


# instance fields
.field private zzndx:Lcom/google/android/gms/internal/zzelu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzelu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejh;->zzndx:Lcom/google/android/gms/internal/zzelu;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzejh;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzejh;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejh;->zzndx:Lcom/google/android/gms/internal/zzelu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejh;->zzndx:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzelu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejh;->zzndx:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzegr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzejh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzejh;-><init>(Lcom/google/android/gms/internal/zzelu;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelj;Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelk;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelk;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelm;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbxy()Lcom/google/android/gms/internal/zzelu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejh;->zzndx:Lcom/google/android/gms/internal/zzelu;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzegr;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzejh;

    return p1
.end method
