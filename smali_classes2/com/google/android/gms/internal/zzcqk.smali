.class final Lcom/google/android/gms/internal/zzcqk;
.super Lcom/google/android/gms/common/api/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzcq<",
        "Lcom/google/android/gms/internal/zzcov;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzhsp:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzjym:Ljava/lang/String;

.field private synthetic zzjyn:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

.field private synthetic zzjyo:Lcom/google/android/gms/internal/zzcpz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcqk;->zzjyo:Lcom/google/android/gms/internal/zzcpz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcqk;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcqk;->zzjym:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcqk;->zzhsp:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcqk;->zzjyn:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzcov;

    new-instance v1, Lcom/google/android/gms/internal/zzcqu;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcqk;->zzjyo:Lcom/google/android/gms/internal/zzcpz;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcqu;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcqk;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcqk;->zzjym:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcqk;->zzhsp:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcqk;->zzjyn:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V

    return-void
.end method
