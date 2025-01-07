.class public final Lcom/google/android/gms/internal/zzfmm;
.super Lcom/google/android/gms/internal/zzflm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzflm<",
        "Lcom/google/android/gms/internal/zzfmm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzpyb:[Lcom/google/android/gms/internal/zzfmm;


# instance fields
.field private name:Ljava/lang/String;

.field private zzpyc:[Z

.field private zzpyd:[J

.field private zzpye:[Ljava/lang/String;

.field private zzpyf:[Lcom/google/android/gms/internal/zzfmn;

.field private zzpyg:[B

.field private zzpyh:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwc:[Z

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->zzpvz:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzfmn;->zzdda()[Lcom/google/android/gms/internal/zzfmn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwb:[D

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpnr:I

    return-void
.end method

.method public static zzdcz()[Lcom/google/android/gms/internal/zzfmm;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzfmm;->zzpyb:[Lcom/google/android/gms/internal/zzfmm;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzflq;->zzpvt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzfmm;->zzpyb:[Lcom/google/android/gms/internal/zzfmm;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfmm;

    sput-object v1, Lcom/google/android/gms/internal/zzfmm;->zzpyb:[Lcom/google/android/gms/internal/zzfmm;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzfmm;->zzpyb:[Lcom/google/android/gms/internal/zzfmm;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzfmm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzfmm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Z[Z)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([D[D)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzflo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    return v2

    :cond_d
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflq;->hashCode([Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflq;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflq;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflq;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflq;->hashCode([D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
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

    if-eqz v0, :cond_25

    const/16 v1, 0xa

    if-eq v0, v1, :cond_24

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_17

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_12

    const/16 v1, 0x22

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_a

    const/16 v1, 0x32

    if-eq v0, v1, :cond_9

    const/16 v1, 0x39

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zzli(I)I

    move-result v1

    div-int/lit8 v0, v0, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    if-nez v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    array-length v4, v3

    :goto_1
    add-int/2addr v0, v4

    new-array v5, v0, [D

    if-eqz v4, :cond_3

    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    if-ge v4, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    aput-wide v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iput-object v5, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zzlj(I)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    if-nez v1, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    array-length v3, v1

    :goto_3
    add-int/2addr v0, v3

    new-array v4, v0, [D

    if-eqz v3, :cond_7

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    aput-wide v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    aput-wide v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    goto/16 :goto_0

    :cond_a
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    if-nez v1, :cond_b

    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    array-length v3, v1

    :goto_5
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/zzfmn;

    if-eqz v3, :cond_c

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_d

    new-instance v1, Lcom/google/android/gms/internal/zzfmn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfmn;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/zzfmn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfmn;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    goto/16 :goto_0

    :cond_e
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    if-nez v1, :cond_f

    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    array-length v3, v1

    :goto_7
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_10

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zzli(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyo()I

    move-result v4

    if-lez v4, :cond_13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zzmw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    if-nez v1, :cond_14

    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    array-length v4, v1

    :goto_a
    add-int/2addr v3, v4

    new-array v5, v3, [J

    if-eqz v4, :cond_15

    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_b
    if-ge v4, v3, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_16
    iput-object v5, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    goto :goto_11

    :cond_17
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    if-nez v1, :cond_18

    const/4 v3, 0x0

    goto :goto_c

    :cond_18
    array-length v3, v1

    :goto_c
    add-int/2addr v0, v3

    new-array v4, v0, [J

    if-eqz v3, :cond_19

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v1

    aput-wide v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v0

    aput-wide v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zzli(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyo()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyd()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zzmw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    if-nez v1, :cond_1d

    const/4 v4, 0x0

    goto :goto_f

    :cond_1d
    array-length v4, v1

    :goto_f
    add-int/2addr v3, v4

    new-array v5, v3, [Z

    if-eqz v4, :cond_1e

    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    :goto_10
    if-ge v4, v3, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyd()Z

    move-result v1

    aput-boolean v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1f
    iput-object v5, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    :goto_11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zzlj(I)V

    goto/16 :goto_0

    :cond_20
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    if-nez v1, :cond_21

    const/4 v3, 0x0

    goto :goto_12

    :cond_21
    array-length v3, v1

    :goto_12
    add-int/2addr v0, v3

    new-array v4, v0, [Z

    if-eqz v3, :cond_22

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    :goto_13
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyd()Z

    move-result v1

    aput-boolean v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyd()Z

    move-result v0

    aput-boolean v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    goto/16 :goto_0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_25
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzp(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1

    const/4 v3, 0x2

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzflk;->zzl(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    array-length v3, v2

    if-ge v0, v3, :cond_2

    const/4 v3, 0x3

    aget-wide v4, v2, v0

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/android/gms/internal/zzflk;->zzf(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzflk;->zzp(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    sget-object v2, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzflk;->zzc(I[B)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    array-length v2, v0

    if-ge v1, v2, :cond_8

    const/4 v2, 0x7

    aget-wide v3, v0, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzflk;->zza(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-void
.end method

.method protected final zzq()I
    .locals 8

    invoke-super {p0}, Lcom/google/android/gms/internal/zzflm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzq(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyc:[Z

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyd:[J

    array-length v6, v5

    if-ge v1, v6, :cond_2

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/zzflk;->zzdj(J)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    array-length v1, v5

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/zzfmm;->zzpye:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_5

    aget-object v6, v6, v1

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/zzflk;->zztx(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v4

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyf:[Lcom/google/android/gms/internal/zzfmn;

    array-length v4, v1

    if-ge v3, v4, :cond_8

    aget-object v1, v1, v3

    if-eqz v1, :cond_7

    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    sget-object v3, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyg:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmm;->zzpyh:[D

    if-eqz v1, :cond_a

    array-length v3, v1

    if-lez v3, :cond_a

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method
