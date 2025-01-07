.class final Lcom/google/android/gms/internal/zzcph;
.super Lcom/google/android/gms/internal/zzcps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcps<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjxv:Lcom/google/android/gms/internal/zzctf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpg;Lcom/google/android/gms/internal/zzctf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcph;->zzjxv:Lcom/google/android/gms/internal/zzctf;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcph;->zzjxv:Lcom/google/android/gms/internal/zzctf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctf;->zzbde()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcph;->zzjxv:Lcom/google/android/gms/internal/zzctf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzctf;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcov;->zzeq(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcph;->zzjxv:Lcom/google/android/gms/internal/zzctf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzctf;->zzbdh()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method
