.class final Lcom/google/android/gms/internal/zzcpv;
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
.field private synthetic zzjyc:Lcom/google/android/gms/internal/zzctr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpt;Lcom/google/android/gms/internal/zzctr;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpv;->zzjyc:Lcom/google/android/gms/internal/zzctr;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpv;->zzjyc:Lcom/google/android/gms/internal/zzctr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctr;->zzbde()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcpv;->zzjyc:Lcom/google/android/gms/internal/zzctr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzctr;->zzbdm()Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/PayloadCallback;->onPayloadTransferUpdate(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;)V

    return-void
.end method
