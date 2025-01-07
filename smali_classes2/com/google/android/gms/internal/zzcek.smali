.class final Lcom/google/android/gms/internal/zzcek;
.super Lcom/google/android/gms/internal/zzcer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcer<",
        "Lcom/google/android/gms/instantapps/zze;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcrd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcej;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcek;->zzcrd:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcer;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcef;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzcel;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcel;-><init>(Lcom/google/android/gms/internal/zzcek;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcek;->zzcrd:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/instantapps/zzi;

    invoke-direct {v1}, Lcom/google/android/gms/instantapps/zzi;-><init>()V

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/zzcef;->zza(Lcom/google/android/gms/internal/zzced;Ljava/lang/String;Lcom/google/android/gms/instantapps/zzi;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzces;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzces;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V

    return-object v0
.end method
