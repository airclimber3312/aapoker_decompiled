.class final Lcom/google/android/gms/internal/zzbqg;
.super Lcom/google/android/gms/internal/zzbma;


# instance fields
.field private synthetic zzgvo:Lcom/google/android/gms/internal/zzboz;

.field private final zzgwe:Lcom/google/android/gms/drive/events/ListenerToken;

.field private final zzgwf:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqg;->zzgvo:Lcom/google/android/gms/internal/zzboz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbma;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqg;->zzgwe:Lcom/google/android/gms/drive/events/ListenerToken;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqg;->zzgwf:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzbqc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqc<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqg;->zzgwf:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzbqk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbqk;-><init>(Lcom/google/android/gms/internal/zzbqg;Lcom/google/android/gms/internal/zzbqc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbqh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbqh;-><init>(Lcom/google/android/gms/internal/zzbqg;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqg;->zza(Lcom/google/android/gms/internal/zzbqc;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onError(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqg;->zzgvo:Lcom/google/android/gms/internal/zzboz;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbqg;->zzgwe:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbrx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbqj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbqj;-><init>(Lcom/google/android/gms/internal/zzbqg;Lcom/google/android/gms/internal/zzbrx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqg;->zza(Lcom/google/android/gms/internal/zzbqc;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzboa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbrx;->zzgul:Lcom/google/android/gms/drive/zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzboa;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onContents(Lcom/google/android/gms/drive/DriveContents;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbqg;->zzgvo:Lcom/google/android/gms/internal/zzboz;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbqg;->zzgwe:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbsb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbqi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbqi;-><init>(Lcom/google/android/gms/internal/zzbsb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqg;->zza(Lcom/google/android/gms/internal/zzbqc;)V

    return-void
.end method
