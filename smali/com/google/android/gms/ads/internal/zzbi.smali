.class final Lcom/google/android/gms/ads/internal/zzbi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaoj:Lcom/google/android/gms/internal/zzro;

.field private synthetic zzaro:Lcom/google/android/gms/ads/internal/zzbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzro;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbi;->zzaro:Lcom/google/android/gms/ads/internal/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbi;->zzaoj:Lcom/google/android/gms/internal/zzro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbi;->zzaoj:Lcom/google/android/gms/internal/zzro;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzro;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbi;->zzaro:Lcom/google/android/gms/ads/internal/zzbb;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbb;->zzanm:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbu;->zzaup:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbi;->zzaoj:Lcom/google/android/gms/internal/zzro;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzsb;->zzb(Lcom/google/android/gms/internal/zzro;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzahw;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
