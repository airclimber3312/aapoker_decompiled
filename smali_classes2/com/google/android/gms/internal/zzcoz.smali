.class final Lcom/google/android/gms/internal/zzcoz;
.super Lcom/google/android/gms/internal/zzcps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcps<",
        "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzetp:Lcom/google/android/gms/common/api/Status;

.field private synthetic zzjxp:Lcom/google/android/gms/internal/zzcth;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcox;Lcom/google/android/gms/internal/zzcth;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcoz;->zzjxp:Lcom/google/android/gms/internal/zzcth;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcoz;->zzetp:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoz;->zzjxp:Lcom/google/android/gms/internal/zzcth;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcth;->zzbde()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/ConnectionResolution;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzetp:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/nearby/connection/ConnectionResolution;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onConnectionResult(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionResolution;)V

    return-void
.end method
