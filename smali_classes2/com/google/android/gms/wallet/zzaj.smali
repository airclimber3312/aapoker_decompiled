.class final Lcom/google/android/gms/wallet/zzaj;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzdmv;",
        "Lcom/google/android/gms/wallet/PaymentData;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzlnp:Lcom/google/android/gms/wallet/PaymentDataRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/PaymentsClient;Lcom/google/android/gms/wallet/PaymentDataRequest;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/wallet/zzaj;->zzlnp:Lcom/google/android/gms/wallet/PaymentDataRequest;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzdmv;

    iget-object v0, p0, Lcom/google/android/gms/wallet/zzaj;->zzlnp:Lcom/google/android/gms/wallet/PaymentDataRequest;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzdmv;->zza(Lcom/google/android/gms/wallet/PaymentDataRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
