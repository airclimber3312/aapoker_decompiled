.class final Lcom/google/android/gms/internal/zzbob;
.super Lcom/google/android/gms/internal/zzbnd;


# instance fields
.field private synthetic zzguo:Lcom/google/android/gms/internal/zzboa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboa;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbob;->zzguo:Lcom/google/android/gms/internal/zzboa;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbob;->zzguo:Lcom/google/android/gms/internal/zzboa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzboa;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbob;->zzguo:Lcom/google/android/gms/internal/zzboa;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboa;->zza(Lcom/google/android/gms/internal/zzboa;)Lcom/google/android/gms/drive/zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v2

    const/high16 v3, 0x20000000

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzbsz;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/zzbtb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzbtb;-><init>(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsz;Lcom/google/android/gms/internal/zzbrm;)Lcom/google/android/gms/internal/zzbqy;

    return-void
.end method
