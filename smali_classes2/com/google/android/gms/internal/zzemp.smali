.class public final Lcom/google/android/gms/internal/zzemp;
.super Lcom/google/android/gms/internal/zzeni;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeni<",
        "Lcom/google/android/gms/internal/zzemp;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzeni;-><init>(Lcom/google/android/gms/internal/zzenn;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzemp;->value:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzemp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzemp;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzemp;->value:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzemp;->value:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemp;->zznob:Lcom/google/android/gms/internal/zzenn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzemp;->zznob:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzemp;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzemp;->value:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzemp;->zznob:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzeni;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzemp;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzemp;->value:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzemp;->value:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzenp;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeni;->zzb(Lcom/google/android/gms/internal/zzenp;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzemp;->value:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "boolean:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzcbv()Lcom/google/android/gms/internal/zzenk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenk;->zznoz:Lcom/google/android/gms/internal/zzenk;

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzemp;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzemp;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzemp;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0
.end method
