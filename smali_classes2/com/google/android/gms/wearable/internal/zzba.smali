.class final Lcom/google/android/gms/wearable/internal/zzba;
.super Lcom/google/android/gms/wearable/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzn<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcdn:I

.field private synthetic zzlti:Lcom/google/android/gms/wearable/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzba;->zzlti:Lcom/google/android/gms/wearable/internal/zzay;

    iput p3, p0, Lcom/google/android/gms/wearable/internal/zzba;->zzcdn:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzhg;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzba;->zzlti:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzay;->zza(Lcom/google/android/gms/wearable/internal/zzay;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzba;->zzcdn:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzep;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzgo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/wearable/internal/zzgo;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/wearable/internal/zzep;->zzb(Lcom/google/android/gms/wearable/internal/zzek;Ljava/lang/String;I)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
