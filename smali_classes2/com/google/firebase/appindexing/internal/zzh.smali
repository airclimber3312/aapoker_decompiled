.class final Lcom/google/firebase/appindexing/internal/zzh;
.super Lcom/google/firebase/appindexing/internal/zzk;


# instance fields
.field private synthetic zzmoe:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzf;[Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzh;->zzmoe:[Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/firebase/appindexing/internal/zzk;-><init>(Lcom/google/firebase/appindexing/internal/zzg;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/firebase/appindexing/internal/zzu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/appindexing/internal/zzk;->zzbtg()Lcom/google/android/gms/common/api/internal/zzca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzh;->zzmoe:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/appindexing/internal/zzu;->zza(Lcom/google/android/gms/common/api/internal/zzca;[Ljava/lang/String;)V

    return-void
.end method
