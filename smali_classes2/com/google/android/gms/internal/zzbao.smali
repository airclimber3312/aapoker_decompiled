.class final Lcom/google/android/gms/internal/zzbao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;


# instance fields
.field final synthetic zzfbs:Lcom/google/android/gms/internal/zzban;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzban;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zza(Lcom/google/android/gms/internal/zzban;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zzb(Lcom/google/android/gms/internal/zzban;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzbw(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zze(Lcom/google/android/gms/internal/zzban;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbaq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbaq;-><init>(Lcom/google/android/gms/internal/zzbao;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzaey()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zza(Lcom/google/android/gms/internal/zzban;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zzb(Lcom/google/android/gms/internal/zzban;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzbw(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbao;->zzfbs:Lcom/google/android/gms/internal/zzban;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzban;->zze(Lcom/google/android/gms/internal/zzban;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbap;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbap;-><init>(Lcom/google/android/gms/internal/zzbao;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method
