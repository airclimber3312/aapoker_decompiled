.class final Lcom/google/android/gms/ads/internal/js/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcfc:Lcom/google/android/gms/ads/internal/js/zze;

.field private synthetic zzcfe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzj;->zzcfc:Lcom/google/android/gms/ads/internal/js/zze;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzj;->zzcfe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzj;->zzcfc:Lcom/google/android/gms/ads/internal/js/zze;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->zza(Lcom/google/android/gms/ads/internal/js/zze;)Lcom/google/android/gms/internal/zzaof;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzj;->zzcfe:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaof;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
