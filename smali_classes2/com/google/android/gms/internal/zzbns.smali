.class final Lcom/google/android/gms/internal/zzbns;
.super Lcom/google/android/gms/internal/zzbnp;


# instance fields
.field private synthetic zzgud:Lcom/google/android/gms/internal/zzbra;

.field private synthetic zzgue:Lcom/google/android/gms/internal/zzbti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbti;Lcom/google/android/gms/internal/zzbra;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbns;->zzgue:Lcom/google/android/gms/internal/zzbti;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbns;->zzgud:Lcom/google/android/gms/internal/zzbra;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbns;->zzgue:Lcom/google/android/gms/internal/zzbti;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbns;->zzgud:Lcom/google/android/gms/internal/zzbra;

    new-instance v2, Lcom/google/android/gms/internal/zzbto;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbto;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbti;Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
