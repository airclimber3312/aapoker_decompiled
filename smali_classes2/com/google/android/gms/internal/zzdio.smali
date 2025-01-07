.class public final Lcom/google/android/gms/internal/zzdio;
.super Ljava/lang/Object;


# instance fields
.field private final zzkxo:Lcom/google/android/gms/internal/zzdjc;

.field private final zzlbn:[B

.field private final zzlbo:J

.field private final zzlbp:Lcom/google/android/gms/internal/zzdia;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdia;[BLcom/google/android/gms/internal/zzdjc;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdio;->zzlbp:Lcom/google/android/gms/internal/zzdia;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdio;->zzlbn:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdio;->zzkxo:Lcom/google/android/gms/internal/zzdjc;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzdio;->zzlbo:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdjc;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdio;-><init>(Lcom/google/android/gms/internal/zzdia;[BLcom/google/android/gms/internal/zzdjc;J)V

    return-void
.end method


# virtual methods
.method public final zzbjx()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdio;->zzlbn:[B

    return-object v0
.end method

.method public final zzbjy()Lcom/google/android/gms/internal/zzdia;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdio;->zzlbp:Lcom/google/android/gms/internal/zzdia;

    return-object v0
.end method

.method public final zzbjz()Lcom/google/android/gms/internal/zzdjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdio;->zzkxo:Lcom/google/android/gms/internal/zzdjc;

    return-object v0
.end method

.method public final zzbka()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzdio;->zzlbo:J

    return-wide v0
.end method
