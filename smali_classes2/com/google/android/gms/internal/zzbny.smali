.class final Lcom/google/android/gms/internal/zzbny;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Landroid/content/IntentSender;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzguj:Lcom/google/android/gms/drive/OpenFileActivityOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnv;Lcom/google/android/gms/drive/OpenFileActivityOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbny;->zzguj:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Lcom/google/android/gms/internal/zzbtc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbny;->zzguj:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v1, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbny;->zzguj:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v2, v2, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzgqu:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbny;->zzguj:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v3, v3, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzgqw:Lcom/google/android/gms/drive/DriveId;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbny;->zzguj:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v4, v4, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzgqv:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbtc;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbtc;)Landroid/content/IntentSender;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
