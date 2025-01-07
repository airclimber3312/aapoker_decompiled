.class final Lcom/google/android/gms/internal/zzazq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/PlacesResult;


# instance fields
.field private synthetic zzert:Lcom/google/android/gms/internal/zzazy;

.field private zzerw:Z

.field private zzerx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazp;Lcom/google/android/gms/internal/zzazy;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazq;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzazq;->zzerw:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazq;->zzerx:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPlaceLikelihoods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazq;->zzerw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazq;->zzerx:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazq;->zzerw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazq;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazy;->zzadl()Lcom/google/android/gms/internal/zzazd;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazq;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazy;->zzadl()Lcom/google/android/gms/internal/zzazd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzazd;->zzadi()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/zzayx;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzayx;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbgp;

    check-cast v0, Lcom/google/android/gms/internal/zzayw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzayw;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazq;->zzerx:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    throw v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazq;->zzert:Lcom/google/android/gms/internal/zzazy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzazy;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
