.class final Lcom/google/android/gms/internal/zzdbc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdau;


# instance fields
.field private final zzedo:J

.field private final zzedp:I

.field private zzedq:D

.field private final zzeds:Ljava/lang/Object;

.field private zzkth:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzdbc;-><init>(IJ)V

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbc;->zzeds:Ljava/lang/Object;

    const/16 p1, 0x3c

    iput p1, p0, Lcom/google/android/gms/internal/zzdbc;->zzedp:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzdbc;->zzedq:D

    const-wide/16 p1, 0x7d0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzdbc;->zzedo:J

    return-void
.end method


# virtual methods
.method public final zzaas()Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbc;->zzeds:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzdbc;->zzedq:D

    iget v5, p0, Lcom/google/android/gms/internal/zzdbc;->zzedp:I

    int-to-double v6, v5

    cmpg-double v8, v3, v6

    if-gez v8, :cond_0

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzdbc;->zzkth:J

    sub-long v6, v1, v6

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzdbc;->zzedo:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_0

    int-to-double v8, v5

    add-double/2addr v3, v6

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzdbc;->zzedq:D

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzdbc;->zzkth:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzdbc;->zzedq:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzdbc;->zzedq:D

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "No more tokens available."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

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
