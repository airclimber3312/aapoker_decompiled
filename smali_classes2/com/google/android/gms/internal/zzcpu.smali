.class final Lcom/google/android/gms/internal/zzcpu;
.super Lcom/google/android/gms/internal/zzcps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcps<",
        "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjya:Lcom/google/android/gms/internal/zzctp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpt;Lcom/google/android/gms/internal/zzctp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpu;->zzjya:Lcom/google/android/gms/internal/zzctp;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpu;->zzjya:Lcom/google/android/gms/internal/zzctp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctp;->zzbdk()Lcom/google/android/gms/internal/zzcub;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcud;->zza(Lcom/google/android/gms/internal/zzcub;)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpu;->zzjya:Lcom/google/android/gms/internal/zzctp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctp;->zzbdk()Lcom/google/android/gms/internal/zzcub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcub;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Failed to convert incoming ParcelablePayload %d to Payload."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NearbyConnectionsClient"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcpu;->zzjya:Lcom/google/android/gms/internal/zzctp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzctp;->zzbde()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/nearby/connection/PayloadCallback;->onPayloadReceived(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)V

    return-void
.end method
