.class final Lcom/google/android/gms/wearable/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzlrr:Lcom/google/android/gms/wearable/WearableListenerService$zzd;

.field private synthetic zzlrv:Lcom/google/android/gms/wearable/internal/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zzd;Lcom/google/android/gms/wearable/internal/zzah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/zzq;->zzlrr:Lcom/google/android/gms/wearable/WearableListenerService$zzd;

    iput-object p2, p0, Lcom/google/android/gms/wearable/zzq;->zzlrv:Lcom/google/android/gms/wearable/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/zzq;->zzlrr:Lcom/google/android/gms/wearable/WearableListenerService$zzd;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zzd;->zzlrn:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/zzq;->zzlrv:Lcom/google/android/gms/wearable/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onCapabilityChanged(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    return-void
.end method
