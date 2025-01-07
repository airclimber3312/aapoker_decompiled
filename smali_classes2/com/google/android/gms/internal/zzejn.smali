.class public final Lcom/google/android/gms/internal/zzejn;
.super Ljava/lang/Object;


# instance fields
.field private final zzjdb:Z

.field private final zzmxa:Lcom/google/android/gms/internal/zzegu;

.field private final zzniv:J

.field private final zzniw:Lcom/google/android/gms/internal/zzenn;

.field private final zznix:Lcom/google/android/gms/internal/zzegi;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzejn;->zzniv:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejn;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzejn;->zznix:Lcom/google/android/gms/internal/zzegi;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzejn;->zzjdb:Z

    return-void
.end method

.method public constructor <init>(JLcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzejn;->zzniv:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejn;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejn;->zznix:Lcom/google/android/gms/internal/zzegi;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzejn;->zzjdb:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzejn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzejn;->zzniv:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzejn;->zzniv:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzejn;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzejn;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzegu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzejn;->zzjdb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzejn;->zzjdb:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzejn;->zznix:Lcom/google/android/gms/internal/zzegi;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejn;->zznix:Lcom/google/android/gms/internal/zzegi;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzegi;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_a

    :cond_9
    return v1

    :cond_a
    :goto_1
    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzejn;->zzniv:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzejn;->zzjdb:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejn;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejn;->zznix:Lcom/google/android/gms/internal/zzegi;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegi;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejn;->zzjdb:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzejn;->zzniv:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejn;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzejn;->zzjdb:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzejn;->zznix:Lcom/google/android/gms/internal/zzegi;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4e

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "UserWriteRecord{id="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " visible="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " overwrite="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " merge="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvh()Lcom/google/android/gms/internal/zzegu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejn;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    return-object v0
.end method

.method public final zzbzh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzejn;->zzniv:J

    return-wide v0
.end method

.method public final zzbzi()Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access overwrite when write is a merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbzj()Lcom/google/android/gms/internal/zzegi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejn;->zznix:Lcom/google/android/gms/internal/zzegi;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access merge when write is an overwrite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbzk()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejn;->zzniw:Lcom/google/android/gms/internal/zzenn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
