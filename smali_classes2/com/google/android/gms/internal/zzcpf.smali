.class final Lcom/google/android/gms/internal/zzcpf;
.super Lcom/google/android/gms/internal/zzcps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcps<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjxt:Lcom/google/android/gms/internal/zzctd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpe;Lcom/google/android/gms/internal/zzctd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpf;->zzjxt:Lcom/google/android/gms/internal/zzctd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpf;->zzjxt:Lcom/google/android/gms/internal/zzctd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctd;->zzbde()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcpf;->zzjxt:Lcom/google/android/gms/internal/zzctd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzctd;->zzbdf()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpf;->zzjxt:Lcom/google/android/gms/internal/zzctd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzctd;->zzbdh()[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
