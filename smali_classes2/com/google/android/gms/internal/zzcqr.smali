.class final Lcom/google/android/gms/internal/zzcqr;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzcov;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjyo:Lcom/google/android/gms/internal/zzcpz;

.field private synthetic zzjyq:Lcom/google/android/gms/internal/zzcqs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/internal/zzcqs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcqr;->zzjyo:Lcom/google/android/gms/internal/zzcpz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcqr;->zzjyq:Lcom/google/android/gms/internal/zzcqs;

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

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcqr;->zzjyq:Lcom/google/android/gms/internal/zzcqs;

    new-instance v1, Lcom/google/android/gms/internal/zzcqu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcqr;->zzjyo:Lcom/google/android/gms/internal/zzcpz;

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzcqu;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzcqs;->zza(Lcom/google/android/gms/internal/zzcov;Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method
