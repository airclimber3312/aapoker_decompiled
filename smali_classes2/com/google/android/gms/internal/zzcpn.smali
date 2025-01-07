.class final Lcom/google/android/gms/internal/zzcpn;
.super Lcom/google/android/gms/internal/zzcps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcps<",
        "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjxx:Lcom/google/android/gms/internal/zzctl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpm;Lcom/google/android/gms/internal/zzctl;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpn;->zzjxx:Lcom/google/android/gms/internal/zzctl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpn;->zzjxx:Lcom/google/android/gms/internal/zzctl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctl;->zzbdi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcpn;->zzjxx:Lcom/google/android/gms/internal/zzctl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzctl;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpn;->zzjxx:Lcom/google/android/gms/internal/zzctl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzctl;->getEndpointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
