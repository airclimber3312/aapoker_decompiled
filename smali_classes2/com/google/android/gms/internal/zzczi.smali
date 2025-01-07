.class final Lcom/google/android/gms/internal/zzczi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkvy:Lcom/google/android/gms/internal/zzczg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzczg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczi;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczi;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzc(Lcom/google/android/gms/internal/zzczg;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzczm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczi;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzczm;-><init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzczh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
