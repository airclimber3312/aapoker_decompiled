.class final Lcom/google/android/gms/tagmanager/zzdh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzek;


# instance fields
.field private final zzata:Lcom/google/android/gms/common/util/zze;

.field private final zzdxe:Ljava/lang/String;

.field private final zzedo:J

.field private final zzedp:I

.field private zzedq:D

.field private zzedr:J

.field private final zzeds:Ljava/lang/Object;

.field private final zzkqu:J


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzeds:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedp:I

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedq:D

    const-wide/32 p1, 0xdbba0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedo:J

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzkqu:J

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzdxe:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzata:Lcom/google/android/gms/common/util/zze;

    return-void
.end method


# virtual methods
.method public final zzaas()Z
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzeds:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedr:J

    sub-long v5, v1, v3

    iget-wide v7, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzkqu:J

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-gez v10, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzdxe:Ljava/lang/String;

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

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdj;->zzcz(Ljava/lang/String;)V

    monitor-exit v0

    return v9

    :cond_0
    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedq:D

    iget v7, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedp:I

    int-to-double v10, v7

    cmpg-double v8, v5, v10

    if-gez v8, :cond_1

    sub-long v3, v1, v3

    long-to-double v3, v3

    iget-wide v10, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedo:J

    long-to-double v10, v10

    div-double/2addr v3, v10

    const-wide/16 v10, 0x0

    cmpl-double v8, v3, v10

    if-lez v8, :cond_1

    int-to-double v7, v7

    add-double/2addr v5, v3

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedq:D

    :cond_1
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedr:J

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedq:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_2

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzedq:D

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdh;->zzdxe:Ljava/lang/String;

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

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdj;->zzcz(Ljava/lang/String;)V

    monitor-exit v0

    return v9

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
