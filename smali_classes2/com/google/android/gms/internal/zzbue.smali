.class public final Lcom/google/android/gms/internal/zzbue;
.super Lcom/google/android/gms/internal/zzbtx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbtx<",
        "Lcom/google/android/gms/drive/DriveContents;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/drive/DriveContents;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbtx;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbrx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbtx;->zzaqt()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzboa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrx;->zzaqp()Lcom/google/android/gms/drive/zzc;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzboa;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
