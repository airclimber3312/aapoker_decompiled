.class final Lcom/google/android/gms/fido/fido2/zza;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbvp;",
        "Lcom/google/android/gms/fido/fido2/Fido2PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzheb:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fido/fido2/Fido2ApiClient;Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/zza;->zzheb:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvp;

    new-instance v0, Lcom/google/android/gms/fido/fido2/zzb;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/fido/fido2/zzb;-><init>(Lcom/google/android/gms/fido/fido2/zza;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbvt;

    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/zza;->zzheb:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zzbvt;->zza(Lcom/google/android/gms/internal/zzbvr;Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;)V

    return-void
.end method
