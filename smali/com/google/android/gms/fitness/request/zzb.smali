.class final Lcom/google/android/gms/fitness/request/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/fitness/request/BleScanCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhnq:Lcom/google/android/gms/fitness/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/request/zza;Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzb;->zzhnq:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzajh()V
    .locals 0

    return-void
.end method

.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/request/BleScanCallback;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzb;->zzhnq:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/request/BleScanCallback;->onDeviceFound(Lcom/google/android/gms/fitness/data/BleDevice;)V

    return-void
.end method
