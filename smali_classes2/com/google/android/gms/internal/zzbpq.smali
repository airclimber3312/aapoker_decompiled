.class final Lcom/google/android/gms/internal/zzbpq;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Lcom/google/android/gms/drive/DriveFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;)V
    .locals 0

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

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnq;->zzaqk()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "Drive#SCOPE_APPFOLDER must be requested"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbok;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnq;->zzaqk()Lcom/google/android/gms/drive/DriveId;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbok;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
