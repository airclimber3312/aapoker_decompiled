.class final Lcom/google/android/gms/internal/zzava;
.super Lcom/google/android/gms/internal/zzauz$zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzauz$zzc<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzego:[Lcom/google/android/gms/internal/zzauo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauz;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/zzauo;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzava;->zzego:[Lcom/google/android/gms/internal/zzauo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzauz$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzaus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzauz$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzauz$zzd;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzava;->zzego:[Lcom/google/android/gms/internal/zzauo;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzaus;->zza(Lcom/google/android/gms/internal/zzauu;Ljava/lang/String;[Lcom/google/android/gms/internal/zzauo;)V

    return-void
.end method
