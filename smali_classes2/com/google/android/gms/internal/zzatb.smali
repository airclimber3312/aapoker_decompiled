.class public final Lcom/google/android/gms/internal/zzatb;
.super Ljava/lang/Object;


# instance fields
.field private final zzata:Lcom/google/android/gms/common/util/zze;

.field private final zzdxe:Ljava/lang/String;

.field private final zzedo:J

.field private final zzedp:I

.field private zzedq:D

.field private zzedr:J

.field private final zzeds:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatb;->zzeds:Ljava/lang/Object;

    const/16 p1, 0x3c

    iput p1, p0, Lcom/google/android/gms/internal/zzatb;->zzedp:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatb;->zzedq:D

    const-wide/16 p1, 0x7d0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatb;->zzedo:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzatb;->zzdxe:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzatb;->zzata:Lcom/google/android/gms/common/util/zze;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;)V
    .locals 6

    const/16 v1, 0x3c

    const-wide/16 v2, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatb;-><init>(IJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method


# virtual methods
.method public final zzaas()Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatb;->zzeds:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzatb;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzatb;->zzedq:D

    iget v5, p0, Lcom/google/android/gms/internal/zzatb;->zzedp:I

    int-to-double v6, v5

    cmpg-double v8, v3, v6

    if-gez v8, :cond_0

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzatb;->zzedr:J

    sub-long v6, v1, v6

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzatb;->zzedo:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_0

    int-to-double v8, v5

    add-double/2addr v3, v6

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzatb;->zzedq:D

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzatb;->zzedr:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzatb;->zzedq:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzatb;->zzedq:D

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzatb;->zzdxe:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzatc;->zzcz(Ljava/lang/String;)V

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
