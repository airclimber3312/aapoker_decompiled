.class final Lcom/google/android/gms/internal/zzbpn;
.super Lcom/google/android/gms/common/api/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzcq<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgvk:Lcom/google/android/gms/drive/DriveFile;

.field private synthetic zzgvl:I

.field private synthetic zzgvm:Lcom/google/android/gms/internal/zzblv;

.field private synthetic zzgvn:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzgvo:Lcom/google/android/gms/internal/zzboz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/drive/DriveFile;ILcom/google/android/gms/internal/zzblv;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvo:Lcom/google/android/gms/internal/zzboz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvk:Lcom/google/android/gms/drive/DriveFile;

    iput p4, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvl:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvm:Lcom/google/android/gms/internal/zzblv;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvn:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    new-instance v0, Lcom/google/android/gms/internal/zzbsz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvk:Lcom/google/android/gms/drive/DriveFile;

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveFile;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvl:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbsz;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v1, Lcom/google/android/gms/internal/zzbqg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvo:Lcom/google/android/gms/internal/zzboz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvm:Lcom/google/android/gms/internal/zzblv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvn:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbqg;-><init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbsz;Lcom/google/android/gms/internal/zzbrm;)Lcom/google/android/gms/internal/zzbqy;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpn;->zzgvm:Lcom/google/android/gms/internal/zzblv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbqy;->zzgwo:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzar;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzblv;->zza(Lcom/google/android/gms/common/internal/zzaq;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
