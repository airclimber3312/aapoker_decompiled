.class final Lcom/google/android/gms/wearable/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzlrr:Lcom/google/android/gms/wearable/WearableListenerService$zzd;

.field private synthetic zzlru:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zzd;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/zzp;->zzlrr:Lcom/google/android/gms/wearable/WearableListenerService$zzd;

    iput-object p2, p0, Lcom/google/android/gms/wearable/zzp;->zzlru:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/zzp;->zzlrr:Lcom/google/android/gms/wearable/WearableListenerService$zzd;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zzd;->zzlrn:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/zzp;->zzlru:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onConnectedNodes(Ljava/util/List;)V

    return-void
.end method
