.class final Lcom/google/android/gms/internal/zzbpt;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgvp:Lcom/google/android/gms/drive/DriveContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/drive/DriveContents;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpt;->zzgvp:Lcom/google/android/gms/drive/DriveContents;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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

    new-instance v0, Lcom/google/android/gms/internal/zzbmd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpt;->zzgvp:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v1}, Lcom/google/android/gms/drive/DriveContents;->zzapl()Lcom/google/android/gms/drive/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbmd;-><init>(IZ)V

    new-instance v1, Lcom/google/android/gms/internal/zzbuf;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzbuf;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbmd;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
