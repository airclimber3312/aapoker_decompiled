.class final Lcom/google/android/gms/internal/zzazi;
.super Lcom/google/android/gms/internal/zzbld;


# instance fields
.field private synthetic zzeru:I

.field private synthetic zzerv:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)V
    .locals 0

    const/16 p2, 0x2713

    iput p2, p0, Lcom/google/android/gms/internal/zzazi;->zzeru:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazi;->zzerv:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbld;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzblg;

    new-instance v0, Lcom/google/android/gms/internal/zzazw;

    iget v1, p0, Lcom/google/android/gms/internal/zzazi;->zzeru:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazi;->zzerv:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzazw;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzblg;->zza(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/internal/zzazw;)V

    return-void
.end method
