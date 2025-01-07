.class final Lcom/google/android/gms/internal/zzdby;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkzg:Lcom/google/android/gms/internal/zzdbx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdby;->zzkzg:Lcom/google/android/gms/internal/zzdbx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "App\'s UI deactivated. Dispatching hits."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdby;->zzkzg:Lcom/google/android/gms/internal/zzdbx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbx;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzb(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/internal/zzdcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdcj;->dispatch()V

    return-void
.end method
