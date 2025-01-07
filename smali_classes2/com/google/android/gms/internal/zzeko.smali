.class public final Lcom/google/android/gms/internal/zzeko;
.super Ljava/lang/Object;


# instance fields
.field public final complete:Z

.field public final id:J

.field public final zzjgp:Z

.field public final zznkr:Lcom/google/android/gms/internal/zzelu;

.field public final zznks:J


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/zzelu;JZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzeko;->id:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelu;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create TrackedQuery for a non-default query that loads all data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzeko;->zznks:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzeko;->complete:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzeko;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzeko;->id:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzeko;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzelu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzeko;->zznks:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzeko;->zznks:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeko;->complete:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzeko;->complete:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeko;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzeko;->zznks:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzeko;->complete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeko;->id:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzeko;->zznks:J

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzeko;->complete:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x6d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "TrackedQuery{id="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", querySpec="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastUse="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", complete="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", active="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzcac()Lcom/google/android/gms/internal/zzeko;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/zzeko;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzeko;->id:J

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzeko;->zznks:J

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzeko;-><init>(JLcom/google/android/gms/internal/zzelu;JZZ)V

    return-object v8
.end method
