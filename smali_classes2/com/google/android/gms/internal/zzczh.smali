.class final Lcom/google/android/gms/internal/zzczh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkvy:Lcom/google/android/gms/internal/zzczg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzczg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczh;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczh;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczh;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzb(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdav;->dispatch()V

    :cond_0
    return-void
.end method
