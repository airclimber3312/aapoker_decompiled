.class final Lcom/google/android/gms/wearable/internal/zzho;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzlwg:Lcom/google/android/gms/wearable/internal/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzho;->zzlwg:Lcom/google/android/gms/wearable/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzajh()V
    .locals 0

    return-void
.end method

.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzho;->zzlwg:Lcom/google/android/gms/wearable/internal/zzah;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;->onCapabilityChanged(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    return-void
.end method
