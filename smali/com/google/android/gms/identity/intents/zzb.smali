.class final Lcom/google/android/gms/identity/intents/zzb;
.super Lcom/google/android/gms/identity/intents/Address$zza;


# instance fields
.field private synthetic val$requestCode:I

.field private synthetic zzilm:Lcom/google/android/gms/identity/intents/UserAddressRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/identity/intents/zzb;->zzilm:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iput p3, p0, Lcom/google/android/gms/identity/intents/zzb;->val$requestCode:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/identity/intents/Address$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdo;

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/zzb;->zzilm:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget v1, p0, Lcom/google/android/gms/identity/intents/zzb;->val$requestCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcdo;->zza(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
