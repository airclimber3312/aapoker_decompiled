.class final Lcom/google/android/gms/tagmanager/zzab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzac;


# instance fields
.field private synthetic zzkod:Lcom/google/android/gms/tagmanager/zzy;

.field private zzkoe:Ljava/lang/Long;

.field private synthetic zzkof:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzy;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkod:Lcom/google/android/gms/tagmanager/zzy;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkof:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/tagmanager/Container;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkof:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkoe:Ljava/lang/Long;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkod:Lcom/google/android/gms/tagmanager/zzy;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzy;->zzc(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/tagmanager/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzai;->zzbfw()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkoe:Ljava/lang/Long;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkoe:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzkod:Lcom/google/android/gms/tagmanager/zzy;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzy;->zzd(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2
.end method
