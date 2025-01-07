.class final Lcom/google/android/gms/fido/fido2/zzg;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbvj;",
        "Lcom/google/android/gms/fido/fido2/Fido2PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzheh:Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fido/fido2/Fido2PrivilegedApiClient;Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/zzg;->zzheh:Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvj;

    new-instance v0, Lcom/google/android/gms/fido/fido2/zzh;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/fido/fido2/zzh;-><init>(Lcom/google/android/gms/fido/fido2/zzg;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbvn;

    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/zzg;->zzheh:Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zzbvn;->zza(Lcom/google/android/gms/internal/zzbvl;Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;)V

    return-void
.end method
