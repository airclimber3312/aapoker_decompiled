.class final Lcom/google/android/gms/internal/zzcpb;
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
.field private synthetic zzjxr:Lcom/google/android/gms/internal/zzcsz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcox;Lcom/google/android/gms/internal/zzcsz;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcpb;->zzjxr:Lcom/google/android/gms/internal/zzcsz;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/internal/zzcow;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcpb;->zzjxr:Lcom/google/android/gms/internal/zzcsz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcsz;->zzbde()Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/nearby/connection/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpb;->zzjxr:Lcom/google/android/gms/internal/zzcsz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcsz;->getQuality()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/nearby/connection/zze;-><init>(I)V

    return-void
.end method
