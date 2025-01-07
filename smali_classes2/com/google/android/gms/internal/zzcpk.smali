.class final Lcom/google/android/gms/internal/zzcpk;
.super Lcom/google/android/gms/internal/zzcps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcps<",
        "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjxy:Lcom/google/android/gms/internal/zzctn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpi;Lcom/google/android/gms/internal/zzctn;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpk;->zzjxy:Lcom/google/android/gms/internal/zzctn;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpk;->zzjxy:Lcom/google/android/gms/internal/zzctn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctn;->zzbdi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;->onEndpointLost(Ljava/lang/String;)V

    return-void
.end method
