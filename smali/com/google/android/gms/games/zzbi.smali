.class final Lcom/google/android/gms/games/zzbi;
.super Lcom/google/android/gms/games/internal/api/zzac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/api/zzac<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhup:I

.field private synthetic zzhuq:I

.field private synthetic zzhur:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/RealTimeMultiplayerClient;IIZ)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/games/zzbi;->zzhup:I

    iput p3, p0, Lcom/google/android/gms/games/zzbi;->zzhuq:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/zzbi;->zzhur:Z

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/games/zzbi;->zzhup:I

    iget v1, p0, Lcom/google/android/gms/games/zzbi;->zzhuq:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/zzbi;->zzhur:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzd(IIZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
