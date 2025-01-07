.class final Lcom/google/android/gms/internal/zzbpm;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Lcom/google/android/gms/drive/DriveContents;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgvk:Lcom/google/android/gms/drive/DriveFile;

.field private synthetic zzgvl:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/drive/DriveFile;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpm;->zzgvk:Lcom/google/android/gms/drive/DriveFile;

    iput p3, p0, Lcom/google/android/gms/internal/zzbpm;->zzgvl:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpm;->zzgvk:Lcom/google/android/gms/drive/DriveFile;

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveFile;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzbpm;->zzgvl:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbsz;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/zzbue;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzbue;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsz;Lcom/google/android/gms/internal/zzbrm;)Lcom/google/android/gms/internal/zzbqy;

    return-void
.end method
