.class public abstract Lcom/google/android/gms/internal/zzdid;
.super Ljava/lang/Object;


# instance fields
.field private zzata:Lcom/google/android/gms/common/util/zze;

.field private zzbkq:I

.field protected final zzkvu:Lcom/google/android/gms/internal/zzczp;

.field protected final zzlay:Lcom/google/android/gms/internal/zzdim;

.field private zzlaz:Lcom/google/android/gms/internal/zzdii;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdii;Lcom/google/android/gms/internal/zzczp;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzanq()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdid;-><init>(ILcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdii;Lcom/google/android/gms/internal/zzczp;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/zzdim;Lcom/google/android/gms/internal/zzdii;Lcom/google/android/gms/internal/zzczp;Lcom/google/android/gms/common/util/zze;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdim;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdid;->zzlay:Lcom/google/android/gms/internal/zzdim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdim;->zzbjt()Lcom/google/android/gms/internal/zzdia;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/zzdid;->zzbkq:I

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdii;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdid;->zzlaz:Lcom/google/android/gms/internal/zzdii;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/util/zze;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdid;->zzata:Lcom/google/android/gms/common/util/zze;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdid;->zzkvu:Lcom/google/android/gms/internal/zzczp;

    return-void
.end method

.method private final zzab([B)Lcom/google/android/gms/internal/zzdin;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdid;->zzlaz:Lcom/google/android/gms/internal/zzdii;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzdii;->zzac([B)Lcom/google/android/gms/internal/zzdin;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzdib; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    const-string v0, "Parsed resource from is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzdib; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    const-string v0, "Resource data is corrupted"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p1
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/zzdin;)V
.end method

.method public final zzaa([B)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdid;->zzab([B)Lcom/google/android/gms/internal/zzdin;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdid;->zzkvu:Lcom/google/android/gms/internal/zzczp;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzdid;->zzbkq:I

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczp;->zzbfz()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdin;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdin;->zzbju()Lcom/google/android/gms/internal/zzdio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdio;->zzbjz()Lcom/google/android/gms/internal/zzdjc;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/internal/zzdio;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdid;->zzlay:Lcom/google/android/gms/internal/zzdim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdim;->zzbjt()Lcom/google/android/gms/internal/zzdia;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdid;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzdio;-><init>(Lcom/google/android/gms/internal/zzdia;[BLcom/google/android/gms/internal/zzdjc;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdin;->zzbjv()Lcom/google/android/gms/internal/zzdjk;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    iget v3, p0, Lcom/google/android/gms/internal/zzdid;->zzbkq:I

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/google/android/gms/internal/zzdin;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzdio;Lcom/google/android/gms/internal/zzdjk;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzdin;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    iget v1, p0, Lcom/google/android/gms/internal/zzdid;->zzbkq:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzdin;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdid;->zza(Lcom/google/android/gms/internal/zzdin;)V

    return-void
.end method

.method public final zzo(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdid;->zzkvu:Lcom/google/android/gms/internal/zzczp;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzczp;->zzbfy()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdid;->zzlay:Lcom/google/android/gms/internal/zzdim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdim;->zzbjt()Lcom/google/android/gms/internal/zzdia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdia;->getContainerId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const-string p1, "Unknown reason"

    goto :goto_0

    :cond_1
    const-string p1, "Server error"

    goto :goto_0

    :cond_2
    const-string p1, "IOError"

    goto :goto_0

    :cond_3
    const-string p1, "Resource not available"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to fetch the container resource for the container \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzdin;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/zzdin;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdid;->zza(Lcom/google/android/gms/internal/zzdin;)V

    return-void
.end method
