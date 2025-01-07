.class final Lcom/google/android/gms/internal/zzdbu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkyv:Lcom/google/android/gms/internal/zzdbo;

.field private synthetic zzkzc:Ljava/lang/String;

.field private synthetic zzkzd:Ljava/lang/String;

.field private synthetic zzkze:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbu;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdbu;->zzkzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdbu;->zzkzd:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbu;->zzkze:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbu;->zzkzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Starting to load container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbu;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbu;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzd(Lcom/google/android/gms/internal/zzdbo;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unexpected state - container loading already initiated."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzczq;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbu;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbu;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzb(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/internal/zzdcj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbu;->zzkzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdbu;->zzkzd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbu;->zzkze:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/zzdbo$zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdbu;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/zzdbo$zzb;-><init>(Lcom/google/android/gms/internal/zzdbo;Lcom/google/android/gms/internal/zzdbp;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzdcj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdae;)V

    return-void
.end method
