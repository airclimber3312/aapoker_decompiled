.class final Lcom/google/android/gms/internal/zzdbo$zzb;
.super Lcom/google/android/gms/internal/zzdaf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzkyv:Lcom/google/android/gms/internal/zzdbo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdbo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdaf;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdbo;Lcom/google/android/gms/internal/zzdbp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdbo$zzb;-><init>(Lcom/google/android/gms/internal/zzdbo;)V

    return-void
.end method


# virtual methods
.method public final zza(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzf(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdca;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzdca;-><init>(Lcom/google/android/gms/internal/zzdbo$zzb;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
