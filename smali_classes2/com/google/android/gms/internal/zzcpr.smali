.class final Lcom/google/android/gms/internal/zzcpr;
.super Lcom/google/android/gms/internal/zzcps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcps<",
        "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjxq:Lcom/google/android/gms/internal/zzctj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpp;Lcom/google/android/gms/internal/zzctj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpr;->zzjxq:Lcom/google/android/gms/internal/zzctj;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpr;->zzjxq:Lcom/google/android/gms/internal/zzctj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctj;->zzbde()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method
