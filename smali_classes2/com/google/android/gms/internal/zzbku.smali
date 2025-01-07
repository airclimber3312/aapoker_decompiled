.class public final Lcom/google/android/gms/internal/zzbku;
.super Ljava/lang/Object;


# instance fields
.field private final zzgnu:Lcom/google/android/gms/internal/zzffq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzffq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffq;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbku;->zzgnu:Lcom/google/android/gms/internal/zzffq;

    return-void
.end method

.method public static zza(IID)Lcom/google/android/gms/internal/zzbku;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbku;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/16 v10, 0xbb8

    const-wide/16 v12, 0x0

    move v4, p0

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    invoke-static/range {v2 .. v13}, Lcom/google/android/gms/internal/zzbku;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzffq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbku;-><init>(Lcom/google/android/gms/internal/zzffq;)V

    return-object v0
.end method

.method public static zza(IIDJ)Lcom/google/android/gms/internal/zzbku;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbku;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    move v4, p0

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    move-wide/from16 v12, p4

    invoke-static/range {v2 .. v13}, Lcom/google/android/gms/internal/zzbku;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzffq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbku;-><init>(Lcom/google/android/gms/internal/zzffq;)V

    return-object v0
.end method

.method private static zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzffq;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/zzffq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzffq;-><init>()V

    iput p0, p1, Lcom/google/android/gms/internal/zzffq;->zzpkl:I

    const/4 p0, 0x1

    iput p0, p1, Lcom/google/android/gms/internal/zzffq;->zzpmd:I

    iput-wide p8, p1, Lcom/google/android/gms/internal/zzffq;->zzpkm:J

    iput-wide p10, p1, Lcom/google/android/gms/internal/zzffq;->zzpmi:J

    iput p2, p1, Lcom/google/android/gms/internal/zzffq;->zzpme:I

    iput p3, p1, Lcom/google/android/gms/internal/zzffq;->zzpmf:I

    iput-wide p4, p1, Lcom/google/android/gms/internal/zzffq;->zzpmg:D

    iput-wide p6, p1, Lcom/google/android/gms/internal/zzffq;->zzpmh:D

    return-object p1
.end method

.method public static zzb(IID)Lcom/google/android/gms/internal/zzbku;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbku;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v10, 0xbb8

    const-wide/16 v12, 0x0

    move v4, p0

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    invoke-static/range {v2 .. v13}, Lcom/google/android/gms/internal/zzbku;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzffq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbku;-><init>(Lcom/google/android/gms/internal/zzffq;)V

    return-object v0
.end method


# virtual methods
.method public final zzaoz()Lcom/google/android/gms/internal/zzffq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbku;->zzgnu:Lcom/google/android/gms/internal/zzffq;

    return-object v0
.end method
