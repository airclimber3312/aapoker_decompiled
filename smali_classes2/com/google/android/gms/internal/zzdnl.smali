.class public final Lcom/google/android/gms/internal/zzdnl;
.super Lcom/google/android/gms/internal/zzflm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzflm<",
        "Lcom/google/android/gms/internal/zzdnl;",
        ">;"
    }
.end annotation


# instance fields
.field public zzlwr:[B

.field public zzlws:Ljava/lang/String;

.field public zzlwt:D

.field public zzlwu:F

.field public zzlwv:J

.field public zzlww:I

.field public zzlwx:I

.field public zzlwy:Z

.field public zzlwz:[Lcom/google/android/gms/internal/zzdnj;

.field public zzlxa:[Lcom/google/android/gms/internal/zzdnk;

.field public zzlxb:[Ljava/lang/String;

.field public zzlxc:[J

.field public zzlxd:[F

.field public zzlxe:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflm;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwv:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlww:I

    iput v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwx:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwy:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzdnj;->zzbmb()[Lcom/google/android/gms/internal/zzdnj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    invoke-static {}, Lcom/google/android/gms/internal/zzdnk;->zzbmc()[Lcom/google/android/gms/internal/zzdnk;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    sget-object v2, Lcom/google/android/gms/internal/zzflv;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzflv;->zzpvz:[J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    sget-object v2, Lcom/google/android/gms/internal/zzflv;->zzpwa:[F

    iput-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxe:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzpnr:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzdnl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzdnl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwv:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzdnl;->zzlwv:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlww:I

    iget v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlww:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwx:I

    iget v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlwx:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwy:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlwy:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    iget-object v3, p1, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxe:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzdnl;->zzlxe:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzflo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_14

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1

    :cond_13
    return v2

    :cond_14
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwv:J

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlww:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwx:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwy:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflq;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflq;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflq;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflq;->hashCode([J)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflq;->hashCode([F)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxe:J

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x75

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [F

    if-eqz v3, :cond_2

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcys()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcys()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zzli(I)I

    move-result v2

    div-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    new-array v5, v0, [F

    if-eqz v4, :cond_5

    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    if-ge v4, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcys()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iput-object v5, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzflj;->zzlj(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxe:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zzli(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyo()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzflj;->zzmw(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    if-nez v2, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    array-length v4, v2

    :goto_6
    add-int/2addr v3, v4

    new-array v5, v3, [J

    if-eqz v4, :cond_9

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_7
    if-ge v4, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    iput-object v5, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zzlj(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x60

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    if-nez v2, :cond_b

    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    array-length v3, v2

    :goto_8
    add-int/2addr v0, v3

    new-array v4, v0, [J

    if-eqz v3, :cond_c

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_9
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    move-result-wide v1

    aput-wide v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    move-result-wide v0

    aput-wide v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    if-nez v2, :cond_e

    const/4 v3, 0x0

    goto :goto_a

    :cond_e
    array-length v3, v2

    :goto_a
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_f

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    if-nez v2, :cond_11

    const/4 v3, 0x0

    goto :goto_c

    :cond_11
    array-length v3, v2

    :goto_c
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/zzdnk;

    if-eqz v3, :cond_12

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_13

    new-instance v1, Lcom/google/android/gms/internal/zzdnk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdnk;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzdnk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdnk;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    if-nez v2, :cond_14

    const/4 v3, 0x0

    goto :goto_e

    :cond_14
    array-length v3, v2

    :goto_e
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/zzdnj;

    if-eqz v3, :cond_15

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_16

    new-instance v1, Lcom/google/android/gms/internal/zzdnj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdnj;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/zzdnj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdnj;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwy:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwx:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlww:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwv:J

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcys()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x19 -> :sswitch_d
        0x25 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x5a -> :sswitch_5
        0x60 -> :sswitch_4
        0x62 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    sget-object v1, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzc(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zzp(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzflk;->zza(ID)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zzd(IF)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwv:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zzf(IJ)V

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlww:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzad(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwx:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/zzflk;->zzac(II)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzflk;->zzme(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflk;->zzmy(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwy:Z

    if-eqz v0, :cond_7

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/zzflk;->zzl(IZ)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    array-length v5, v4

    if-ge v0, v5, :cond_9

    aget-object v4, v4, v0

    if-eqz v4, :cond_8

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    array-length v5, v4

    if-ge v0, v5, :cond_b

    aget-object v4, v4, v0

    if-eqz v4, :cond_a

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    array-length v5, v4

    if-ge v0, v5, :cond_d

    aget-object v4, v4, v0

    if-eqz v4, :cond_c

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzflk;->zzp(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    array-length v5, v4

    if-ge v0, v5, :cond_e

    const/16 v5, 0xc

    aget-wide v6, v4, v0

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/internal/zzflk;->zzf(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxe:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzflk;->zzf(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    if-eqz v0, :cond_10

    array-length v0, v0

    if-lez v0, :cond_10

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    array-length v2, v0

    if-ge v1, v2, :cond_10

    const/16 v2, 0xe

    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzflk;->zzd(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-void
.end method

.method protected final zzq()I
    .locals 11

    invoke-super {p0}, Lcom/google/android/gms/internal/zzflm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    sget-object v2, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwr:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlws:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflk;->zzq(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwt:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const/16 v1, 0x8

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflk;->zzlw(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwu:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    const/4 v5, 0x4

    if-eq v3, v4, :cond_3

    invoke-static {v5}, Lcom/google/android/gms/internal/zzflk;->zzlw(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwv:J

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_4

    const/4 v8, 0x5

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/zzflk;->zzc(IJ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    iget v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlww:I

    if-eqz v3, :cond_5

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzflk;->zzag(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    iget v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwx:I

    if-eqz v3, :cond_6

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/google/android/gms/internal/zzflk;->zzlw(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflk;->zzme(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflk;->zzmf(I)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    :cond_6
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwy:Z

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflk;->zzlw(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlwz:[Lcom/google/android/gms/internal/zzdnj;

    array-length v8, v4

    if-ge v1, v8, :cond_9

    aget-object v4, v4, v1

    if-eqz v4, :cond_8

    const/16 v8, 0x9

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxa:[Lcom/google/android/gms/internal/zzdnk;

    array-length v8, v4

    if-ge v1, v8, :cond_b

    aget-object v4, v4, v1

    if-eqz v4, :cond_a

    const/16 v8, 0xa

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    if-eqz v1, :cond_e

    array-length v1, v1

    if-lez v1, :cond_e

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    iget-object v9, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxb:[Ljava/lang/String;

    array-length v10, v9

    if-ge v1, v10, :cond_d

    aget-object v9, v9, v1

    if-eqz v9, :cond_c

    add-int/lit8 v8, v8, 0x1

    invoke-static {v9}, Lcom/google/android/gms/internal/zzflk;->zztx(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v4, v9

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    add-int/2addr v0, v4

    mul-int/lit8 v8, v8, 0x1

    add-int/2addr v0, v8

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    if-eqz v1, :cond_10

    array-length v1, v1

    if-lez v1, :cond_10

    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxc:[J

    array-length v8, v4

    if-ge v3, v8, :cond_f

    aget-wide v8, v4, v3

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/zzflk;->zzdj(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    add-int/2addr v0, v1

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_10
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxe:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_11

    const/16 v1, 0xd

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzflk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdnl;->zzlxd:[F

    if-eqz v1, :cond_12

    array-length v3, v1

    if-lez v3, :cond_12

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method
