.class final Lcom/google/android/gms/internal/zzbpp;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzbnq;",
        "Lcom/google/android/gms/drive/DriveContents;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Lcom/google/android/gms/internal/zzbmg;

    const/high16 v1, 0x20000000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbmg;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/zzbub;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzbub;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbmg;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
