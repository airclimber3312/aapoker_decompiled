.class final Lcom/google/android/gms/internal/zzavu;
.super Lcom/google/android/gms/common/api/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzm<",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/internal/zzawa;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzehs:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavq;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzavu;->zzehs:Landroid/accounts/Account;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/api/internal/zzm;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zzm;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzawa;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/account/zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzavv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzavv;-><init>(Lcom/google/android/gms/internal/zzavu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavu;->zzehs:Landroid/accounts/Account;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/auth/account/zzc;->zza(Lcom/google/android/gms/auth/account/zza;Landroid/accounts/Account;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzavz;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
