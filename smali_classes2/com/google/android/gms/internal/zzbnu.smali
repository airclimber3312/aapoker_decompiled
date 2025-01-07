.class final Lcom/google/android/gms/internal/zzbnu;
.super Lcom/google/android/gms/internal/zzbnp;


# instance fields
.field private synthetic zzguf:Lcom/google/android/gms/drive/DriveId;

.field private synthetic zzgug:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnu;->zzguf:Lcom/google/android/gms/drive/DriveId;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzbnu;->zzgug:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Lcom/google/android/gms/internal/zzbti;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnu;->zzguf:Lcom/google/android/gms/drive/DriveId;

    iget v2, p0, Lcom/google/android/gms/internal/zzbnu;->zzgug:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbti;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v1, Lcom/google/android/gms/internal/zzbto;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbto;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbti;Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
