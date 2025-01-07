.class final Lcom/google/android/gms/internal/zzdbv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzkyv:Lcom/google/android/gms/internal/zzdbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzf(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdbw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdbw;-><init>(Lcom/google/android/gms/internal/zzdbv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
