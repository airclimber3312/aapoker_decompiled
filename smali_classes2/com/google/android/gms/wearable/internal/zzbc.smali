.class final Lcom/google/android/gms/wearable/internal/zzbc;
.super Lcom/google/android/gms/wearable/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzn<",
        "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzlti:Lcom/google/android/gms/wearable/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbc;->zzlti:Lcom/google/android/gms/wearable/internal/zzay;

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

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbc;->zzlti:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzay;->zza(Lcom/google/android/gms/wearable/internal/zzay;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbr;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzbr;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzep;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzgt;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/wearable/internal/zzgt;-><init>(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/wearable/internal/zzbr;)V

    invoke-interface {p1, v2, v1, v0}, Lcom/google/android/gms/wearable/internal/zzep;->zzb(Lcom/google/android/gms/wearable/internal/zzek;Lcom/google/android/gms/wearable/internal/zzei;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzbh;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/io/OutputStream;)V

    return-object v0
.end method
