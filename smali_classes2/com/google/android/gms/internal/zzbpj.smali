.class final Lcom/google/android/gms/internal/zzbpj;
.super Lcom/google/android/gms/common/api/internal/zzdo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzdo<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Lcom/google/android/gms/internal/zzbqe;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgvi:Lcom/google/android/gms/drive/DriveResource;

.field private synthetic zzgvj:Lcom/google/android/gms/internal/zzbqe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/common/api/internal/zzck;Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/internal/zzbqe;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzgvi:Lcom/google/android/gms/drive/DriveResource;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj;->zzgvj:Lcom/google/android/gms/internal/zzbqe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzdo;-><init>(Lcom/google/android/gms/common/api/internal/zzck;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzgvi:Lcom/google/android/gms/drive/DriveResource;

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbti;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzgvj:Lcom/google/android/gms/internal/zzbqe;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbqe;->zza(Lcom/google/android/gms/internal/zzbqe;)Lcom/google/android/gms/internal/zzbra;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbty;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzbty;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 p2, 0x0

    invoke-interface {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbti;Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
