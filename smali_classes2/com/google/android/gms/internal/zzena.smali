.class final Lcom/google/android/gms/internal/zzena;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzenb;


# instance fields
.field private final zznop:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzenn;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeoy;->zzn(Lcom/google/android/gms/internal/zzenn;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x200

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzena;->zznop:J

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzemz;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemz;->zzcci()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzena;->zznop:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemz;->zzccj()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemz;->zzccj()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyt()Lcom/google/android/gms/internal/zzemq;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcby()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
