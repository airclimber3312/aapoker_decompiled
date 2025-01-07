.class final Lcom/google/android/gms/internal/zzbog;
.super Lcom/google/android/gms/internal/zzbnd;


# instance fields
.field private synthetic zzgto:I

.field private synthetic zzgur:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field private synthetic zzgus:Lcom/google/android/gms/internal/zzbof;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbof;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbog;->zzgus:Lcom/google/android/gms/internal/zzbof;

    iput p3, p0, Lcom/google/android/gms/internal/zzbog;->zzgto:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbog;->zzgur:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v0, Lcom/google/android/gms/internal/zzbsz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbog;->zzgus:Lcom/google/android/gms/internal/zzbof;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbql;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzbog;->zzgto:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbsz;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/zzbtb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbog;->zzgur:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsz;Lcom/google/android/gms/internal/zzbrm;)Lcom/google/android/gms/internal/zzbqy;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbqy;->zzgwo:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzar;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaq;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/internal/zzaq;)V

    return-void
.end method
