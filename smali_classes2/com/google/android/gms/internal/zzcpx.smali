.class final Lcom/google/android/gms/internal/zzcpx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;


# instance fields
.field private final zzefs:Lcom/google/android/gms/common/api/Status;

.field private final zzjyd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpx;->zzefs:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpx;->zzjyd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLocalEndpointName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpx;->zzjyd:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpx;->zzefs:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
