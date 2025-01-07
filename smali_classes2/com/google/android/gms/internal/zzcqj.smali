.class final Lcom/google/android/gms/internal/zzcqj;
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
.field private synthetic zzjyl:Lcom/google/android/gms/internal/zzcqv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/internal/zzcqv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcqj;->zzjyl:Lcom/google/android/gms/internal/zzcqv;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcqj;->zzjyl:Lcom/google/android/gms/internal/zzcqv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzcqv;->zzb(Lcom/google/android/gms/internal/zzcov;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
