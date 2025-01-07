.class final Lcom/google/android/gms/internal/zzbpo;
.super Lcom/google/android/gms/common/api/internal/zzdo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzdo<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgvm:Lcom/google/android/gms/internal/zzblv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboz;Lcom/google/android/gms/common/api/internal/zzck;Lcom/google/android/gms/internal/zzblv;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpo;->zzgvm:Lcom/google/android/gms/internal/zzblv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzdo;-><init>(Lcom/google/android/gms/common/api/internal/zzck;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpo;->zzgvm:Lcom/google/android/gms/internal/zzblv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzblv;->cancel()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
