.class public final Lcom/google/android/gms/internal/zzsw;
.super Lcom/google/android/gms/internal/zzsi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzabh;
.end annotation


# instance fields
.field private final zzcbb:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsw;->zzcbb:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$zza;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzsk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsw;->zzcbb:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$zza;

    new-instance v1, Lcom/google/android/gms/internal/zzsn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzsn;-><init>(Lcom/google/android/gms/internal/zzsk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd$zza;->zza(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
