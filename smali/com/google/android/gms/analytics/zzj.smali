.class public Lcom/google/android/gms/analytics/zzj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/zzj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzdvh:Lcom/google/android/gms/analytics/zzk;

.field protected final zzdvi:Lcom/google/android/gms/analytics/zzg;

.field private final zzdvj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/zzh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/common/util/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzj;->zzdvh:Lcom/google/android/gms/analytics/zzk;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzj;->zzdvj:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/analytics/zzg;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/analytics/zzg;-><init>(Lcom/google/android/gms/analytics/zzj;Lcom/google/android/gms/common/util/zze;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzg;->zzwf()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzj;->zzdvi:Lcom/google/android/gms/analytics/zzg;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/analytics/zzg;)V
    .locals 0

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/analytics/zzg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzj;->zzdvj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/zzh;

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/analytics/zzh;->zza(Lcom/google/android/gms/analytics/zzj;Lcom/google/android/gms/analytics/zzg;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzvs()Lcom/google/android/gms/analytics/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzj;->zzdvi:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->zzvx()Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzj;->zzd(Lcom/google/android/gms/analytics/zzg;)V

    return-object v0
.end method

.method protected final zzwg()Lcom/google/android/gms/analytics/zzk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzj;->zzdvh:Lcom/google/android/gms/analytics/zzk;

    return-object v0
.end method
